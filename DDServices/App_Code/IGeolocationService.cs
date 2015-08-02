﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.ServiceModel.Web;
using System.ServiceModel.Activation;


// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IGeolocationService" in both code and config file together.
[ServiceContract]
public interface IGeolocationService
{
	[OperationContract]
	void DoWork();

    [OperationContract]
    [WebInvoke(Method = "GET", ResponseFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Wrapped, UriTemplate = "getLocation")]
    string GetLocation();
}
