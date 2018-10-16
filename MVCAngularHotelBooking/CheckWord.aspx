<%@ Page Language="C#" %>
<script runat="server">
    private void Page_Load(System.Object sender, System.EventArgs e) {
         Response.AddHeader("Access-Control-Allow-Origin", "*");
    }
</script>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>
</head>
<body>
    <%=DateTime.Now.ToLongTimeString()%>
    <table border="1">
        <tr>
            <td>xxxxx</td>
            <td>aaaa</td>
        </tr>
        <tr>
            <td>yyyy</td>
            <td>bbbb</td>
        </tr>
    </table>
    <input type="button" name="myBtn" id="myBtn" value="OK" onclick="returnFun()"/>
</body>
</html>
<script>
    function returnFun() {
        alert("return....");
        window.opener.myValue.value = "Y";
    }
</script>

