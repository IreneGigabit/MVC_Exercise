﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7File.aspx.cs" Inherits="WebServiceCall.WebForm7File" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
		<div>
			<asp:FileUpload ID="FileUpload1" runat="server" />
			<asp:Button ID="Button1" runat="server" Text="上傳" OnClick="Button1_Click" />
		</div>
    </form>
</body>
</html>
