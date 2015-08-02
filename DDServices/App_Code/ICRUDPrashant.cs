using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.ServiceModel.Web;
using System.ServiceModel.Activation;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ICRUDPrashant" in both code and config file together.
[ServiceContract]

public interface ICRUDPrashant
{
	[OperationContract]
    [WebInvoke(Method="GET",ResponseFormat=WebMessageFormat.Json,BodyStyle=WebMessageBodyStyle.Wrapped,UriTemplate="json/{id}")]
	string DoWork(string id);

    [OperationContract]
    [WebInvoke(Method = "GET", ResponseFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Wrapped, UriTemplate = "json/{name}/{address}/{mobile}")]
    string InsertRecord(string name, string address, string mobile);

    [OperationContract]
    [WebInvoke(Method = "GET", ResponseFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Wrapped, UriTemplate = "update/{id}/{name}/{address}/{mobile}")]
    string updateRecord(string id, string name, string address, string mobile);

    [OperationContract]
    [WebInvoke(Method = "GET", ResponseFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Wrapped, UriTemplate = "delete/{id}")]
    string deleteRecord(string id);

    [OperationContract]
    [WebInvoke(Method = "GET", ResponseFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Wrapped, UriTemplate = "getall")]
    string getAllRecords();
}
