<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html>

<head>
<meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1">
<meta name="GENERATOR" content="Microsoft FrontPage 2.0">
<title>Content</title>
</head>

<body bgcolor="#000000" text="#FFFFFF" link="#FF0000"
vlink="#FF0000" alink="#FF0000">
<div align="center"><center>

<table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
        <td align="right"><img src="graphics/mm_Red.GIF"
        width="102" height="128"></td>
        <td align="center"><font size="4" face="Arial"><strong>KUBE
        93 and Mars M&amp;M are looking for the Official M&amp;M
        Hit Music Master of the New Millennium</strong></font></td>
        <td><img src="graphics/mm_yellow.GIF" width="106"
        height="114"></td>
    </tr>
    <tr>
        <td>
		
		<%		
		Set Mailer = Server.CreateObject("SMTPsvg.Mailer")
		Mailer.FromName   = "KUBE WebSite"
		Mailer.FromAddress= "kube@digital-sherpas.com"
		Mailer.RemoteHost = "207.66.185.23"
		Mailer.AddRecipient "Our Friend Sydney", "sdavis@ackerley.com"
		Mailer.Subject    = "KUBE MM Entry"
		Mailer.BodyText   = "Sydney," & Chr(13) & CHR(10) &  "Here's a Kube MM Entry:" & Chr(13) & CHR(10) & Chr(13) & CHR(10) & "Name: " & request.form("name") & Chr(13) & CHR(10) & "Address: " & request.form("address") & Chr(13) & CHR(10) & "City, State: " & request.form("city") & ", " & request.form("state") & Chr(13) & CHR(10) & "Zip Code: " & request.form("zip") & Chr(13) & CHR(10) & "Phone Number: " & request.form("phone") & Chr(13) & CHR(10) & "Birthday: " & request.form("birthday") & Chr(13) & CHR(10) & Chr(13) & CHR(10) & request.form("essay")  & Chr(13) & CHR(10) & Chr(13) & CHR(10) &  now()
		if Mailer.SendMail then
			response.write "<!--message sent!-->"
			else
			Response.Write "<BR><BR>Mail send failure. Error was " & Mailer.Response
		end if

%>		

		   </tr>
</table>
</center></div><div align="center"><center>
<P>
<table border="0" width="95%">
    <tr>
        <td><font color="#FFFFFF" face="Arial"><center>THANKS FOR THE ENTRY... NOW STAY TUNED FOR THE DRAWING WHICH IS ON MARCH 23, 1998
</center></FONT></TD></TR>
</table>
</center></div>
<P><center>
<font color="#FF0000" size="3" face="Arial"><a href="../content.asp">Back To The Calendar</a> </font><P><BR>
</center><p align="center">
<font size="1" color="#FFFFFF" face="Arial"><br>
©1998. All rights reserved.<br>
KUBE 93 is created and maintained by </font><a
href="http://www.kube93.com/credits.htm" target="new"><font
color="#FF0000" size="1" face="Arial">Digital Sherpas</font></a><font
size="1" face="Arial">.<br>
</font><a href="http://www.kube93.com/credits.htm" target="new"><font
face="Arial"><br>
</font></a></p>
</body>
</html>
