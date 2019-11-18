<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html>

<head>
<meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1">
<meta name="GENERATOR" content="Microsoft FrontPage 2.0">
<title>Content</title>
</head>

<body bgcolor="#B70000" text="#000000" link="#808080"
vlink="#808080" alink="#808080">

<p align="center"><font size="1" face="Arial"><br>
</font><font face="Arial"><img
src="../calendar_graphics/title.GIF" width="350" height="90"></font></p>
<div align="center"><center>

<table border="0" width="95%">
    <tr>
        <td><h2><font size="5" face="Arial">&quot;BREEDERS
        CUP&quot;</font><font face="Arial"><br>
        </font><font color="#FFFFFF" size="3" face="Arial"><em><strong>sign-up
        form...</strong></em></font></h2>
<%		
		Set Mailer = Server.CreateObject("SMTPsvg.Mailer")
		Mailer.FromName   = "KUBE Breeders Cup Sign-up"
		Mailer.FromAddress= "kube@digital-sherpas.com"
		Mailer.RemoteHost = "207.66.185.23"
		Mailer.AddRecipient "Our Friend Sydney", "sdavis@ackerley.com"
		Mailer.Subject    = "KUBE Breeders Cup Sign-up"
		Mailer.BodyText   = "Sydney/T-Man," & Chr(13) & CHR(10) &  "Here's a KUBE Breeders Cup Sign-up Entry:" & Chr(13) & CHR(10) & Chr(13) & CHR(10) & "Name: " & request.form("firstname") & request.form("lastname") & Chr(13) & CHR(10) & "Address: " & request.form("address")& Chr(13) & CHR(10) & "City: " & request.form("city") & Chr(13) & CHR(10) & "State: " & request.form("state") & Chr(13) & CHR(10) & "Zip: " & request.form("zip") & Chr(13) & CHR(10) & "Home Phone: " & request.form("homephone") & Chr(13) & CHR(10) & "Work Phone: " & request.form("workphone")  & Chr(13) & CHR(10) & "Birthdate: " & request.form("birthdate") &  Chr(13) & CHR(10) & "Email: " & request.form("mailfrom") & Chr(13) & CHR(10) & "Kube Club Member?: " & request.form("KUBEclub") & Chr(13) & CHR(10) &  now()
		if Mailer.SendMail then
			response.write "<!--message sent!-->"
			else
			Response.Write "<BR><BR>Mail send failure. Error was " & Mailer.Response
		end if

%>		
<center><h2>Thanks for your entry...</h2></center>
        
        <p><a href="../content.asp"><font color="#FFFFFF"
        face="Arial">Back To The Calendar</font></a><font
        color="#FFFFFF" face="Arial"> </font></p>
        </td>
    </tr>
</table>
</center></div>

<p align="center"><font size="1" face="Arial">©1998. All rights
reserved.<br>
KUBE 93 is created and maintained by </font><a
href="http://www.kube93.com/credits.htm" target="new"><font
size="1" face="Arial">Digital Sherpas</font></a><font size="1"
face="Arial">.<br>
</font><a href="http://www.kube93.com/credits.htm" target="new"><font
face="Arial"><br>
</font></a></p>
</body>
</html>
