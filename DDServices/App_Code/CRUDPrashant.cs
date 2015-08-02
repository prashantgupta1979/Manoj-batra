using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.ServiceModel.Activation;


// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "CRUDPrashant" in code, svc and config file together.
[AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
public class CRUDPrashant : ICRUDPrashant
{
	public string DoWork(string id)
	{
        return id  +"q";
	}

    public string InsertRecord(string name, string address, string mobile)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["schoolmanagementConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("insert into usertable values(@name,@address,@mobileno)", con);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@mobileno", mobile);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            return "data inserted";
        }
        catch (Exception tr)
        {
            return tr.ToString();
        }
        //return name + address + mobile;
    }

    public string updateRecord(string id, string name, string address, string mobile)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["schoolmanagementConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("update usertable set name = @name,address = @address, mobile= @mobileno where id = @id", con);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@address", address);
        cmd.Parameters.AddWithValue("@mobileno", mobile);
        cmd.Parameters.AddWithValue("@Id", id);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        return "data updated";
    }

    public string deleteRecord(string id)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["schoolmanagementConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("delete from  usertable where id = @id ", con);
        cmd.Parameters.AddWithValue("@id", id);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        return "data deleted";
    }

    public string getAllRecords()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["schoolmanagementConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("select * from usertable ", con);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        return ConvertDataTableTojSonString(ds.Tables[0]);
    }

    public String ConvertDataTableTojSonString(DataTable dataTable)
    {
        System.Web.Script.Serialization.JavaScriptSerializer serializer =
               new System.Web.Script.Serialization.JavaScriptSerializer();

        List<Dictionary<String, Object>> tableRows = new List<Dictionary<String, Object>>();

        Dictionary<String, Object> row;

        foreach (DataRow dr in dataTable.Rows)
        {
            row = new Dictionary<String, Object>();
            foreach (DataColumn col in dataTable.Columns)
            {
                row.Add(col.ColumnName, dr[col]);
            }
            tableRows.Add(row);
        }
        return serializer.Serialize(tableRows);
    }

}
