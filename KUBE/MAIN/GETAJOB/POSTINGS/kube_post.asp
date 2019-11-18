<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html>

<head>
<meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1">
<meta name="GENERATOR" content="Microsoft FrontPage 2.0">
<title>KUBE 93'</title>
</head>

<body bgcolor="#FFFFFF" text="#000000" link="#FF0000"
vlink="#FF0000" alink="#FF0000">

<table align="center" border="0" cellpadding="0" cellspacing="0" width="95%">
    <tr>
        <td width="95%" align="center"><p align="center"><a
        href="http://www.kube93.com/main/getajob/content.htm"><font
        size="2" face="Verdana"><b>[BACK]</b></font></a><font
        size="3" face="Verdana"> </font></p>

<p align="left"><font size="3" face="Verdana"><strong>KUBE 93's
Spring 1998 Career and Job Fair - Sign-up</strong></font></p>

<p align="left"><font size="2" face="Verdana">Thank you for your
interest in becoming part of KUBE 93's Spring Job Fair. Please
fill in the form below and </font><a
href="mailto:kdover@ackerley.com"><font size="2" face="Verdana">Kimberley
Dover</font></a><font size="2" face="Verdana"> will be contacting
you for more information.</font></p>

    <p>&nbsp;</p>
    <div align="center"><center><table border="0">
        <tr>
            <td align="center"><%		
		Set Mailer = Server.CreateObject("SMTPsvg.Mailer")
		Mailer.FromName   = "KUBE Jobfair sign-up"
		Mailer.FromAddress= "kube@digital-sherpas.com"
		Mailer.RemoteHost = "207.66.185.23"
		Mailer.AddRecipient "kdover@ackerley.com", "kdover@ackerley.com"
		Mailer.Subject    = "KUBE Jobfair sign-up"
		Mailer.BodyText   = "Kimberly," & Chr(13) & CHR(10) &  "Here's a KUBE Jobfair Sign-up Entry:" & Chr(13) & CHR(10) & Chr(13) & CHR(10) & "Contact Name: " & request.form("contact_name") & Chr(13) & CHR(10) & "Contact Phone Number: " & request.form("contact_phone_number") & Chr(13) & CHR(10) & "Business Name: " & request.form("business_name") & Chr(13) & CHR(10) & "Business Address: " & request.form("address") & Chr(13) & CHR(10) & "Interested in: " & request.form("interested") & Chr(13) & CHR(10) & "Comments: " & request.form("comments")  & Chr(13) & CHR(10) &  now()
		if Mailer.SendMail then
			response.write "<!--message sent!-->"
			else
			Response.Write "<BR><BR>Mail send failure. Error was " & Mailer.Response
		end if

%>		
<p align="center"><font size="2" face="Verdana"><br>Thank you... your form has been sent.
</font></p>
<p align="center"><a
        href="http://www.kube93.com/main/getajob/content.htm"><font
        size="2" face="Verdana"><b>[BACK]</b></font></a></p>
        </td>
    </tr>
</table>
    </center></div>

<p align="left"><font size="2" face="Verdana"><br>
</font></p>
</body>
</html>
