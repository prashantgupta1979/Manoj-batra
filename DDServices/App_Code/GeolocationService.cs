using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "GeolocationService" in code, svc and config file together.
public class GeolocationService : IGeolocationService
{
	public void DoWork()
	{
	}

    public string GetLocation()
    {
        string wholePage = string.Empty;
        try
        {
            using (WebClient webClient = new WebClient())
            {
                Stream stream = webClient.OpenRead("https://freegeoip.net/json/");
                StreamReader streamReader = new StreamReader(stream);
                wholePage = streamReader.ReadToEnd();
                streamReader.Close();
                stream.Close();
            }
            return wholePage;
        }
        catch(Exception e)
        {
            return e.ToString();
        }
    }
}
