<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   <input type="button" value="get data" onclick="getJson()" />
    </div>
    </form>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function getJson() {
            $.ajax({
                type: "GET",
                url: "http://localhost:2539/DDServices/GeolocationService.svc/getLocation",
                cache: false,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    alert(response);
                    console.log(response);
                }
            });
        }
    </script>
</body>
</html>
