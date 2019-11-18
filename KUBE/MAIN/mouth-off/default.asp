<%
if request.form("question") = "" then %>

<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html>

<head>
<meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1">
<meta name="GENERATOR" content="Microsoft FrontPage 2.0">
<title>Mouth-Off! Interactive KUBE 93</title>
<!--########################################################
//-Client: KUBE 93.3fm - Seattle
//-Created by: Digital-Sherpas (www.digital-sherpas.com)
//-Date: 9.97
//-Site-Section: Mouth-Off Page
//-Version: v.1.01
//-Developer: Danny Mavromatis (danny@digital-sherpas.com)
//-ASP Code: Jesse Arnold (jesse@digital-sherpas.com)
//##########################################################-->
</head>

<body background="background.GIF" bgcolor="#C60000"
text="#FFFFFF" link="#000000" vlink="#000000" alink="#000000"
topmargin="0" leftmargin="0">

<form method="POST">
    <center><img src="http://www.kube93.com/main/mouth-off/mouthoff_logo.GIF" width="311" height="74">
	<form method=POST action="default.asp">
<INPUT TYPE="hidden" Name="from" Value="Some Information From Mouth Off">
    <table border="0" width="75%">
        <tr>
            <td align=left valign=top>

<%
dim question(10)
question(0) = "What is on KUBE93 right now? What do you think of it?"
question(1) = "What hot KUBE 93 artists would you like to see at Summer Jam '98, on July 31st"
question(2) = "What is on KUBE93 right now? What do you think of it?"
question(3) = "What hot KUBE 93 artists would you like to see at Summer Jam '98, on July 31st"
question(4) = "What is on KUBE93 right now? What do you think of it?"
question(5) = "What hot KUBE 93 artists would you like to see at Summer Jam '98, on July 31st"
question(6) = "What is on KUBE93 right now? What do you think of it?"
question(7) = "What hot KUBE 93 artists would you like to see at Summer Jam '98, on July 31st"
question(8) = "What is on KUBE93 right now? What do you think of it?"
question(9) = "What hot KUBE 93 artists would you like to see at Summer Jam '98, on July 31st"


index = right(second(time),1)

response.write "<center>"
response.write "<font size=""2"" face=""Arial""><B>" & question(index) & "</B>"
response.write "</B></center>   <input type=""hidden"" name=""question"" value=""" & question(index) & """>"



%>




  <center>
  
  <textarea name="comments" cols="30" rows="3" wrap="VIRTUAL"></textarea>
	<br>
  <input type="Submit" value="Here's My Mouth Full!"></CENTER>
</td>
        </tr>
    </table>
    </center>
</form>

<p><font face="Arial"><br>
</font></p>
</body>
</html>

<% else %>

<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html>

<head>
<meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1">
<meta name="GENERATOR" content="Microsoft FrontPage 2.0">
<title>Mouth-Off! Interactive KUBE 93</title>
<!--########################################################
//-Client: KUBE 93.3fm - Seattle
//-Created by: Digital-Sherpas (www.digital-sherpas.com)
//-Date: 9.97
//-Site-Section: Mouth-Off Page
//-Version: v.1.01
//-Developer: Danny Mavromatis (danny@digital-sherpas.com)
//-ASP Code: Jesse Arnold (jesse@digital-sherpas.com)
//##########################################################-->

</head>
<body background="background.GIF" bgcolor="#C60000" text="#FFFFFF" link="#000000" vlink="#000000" alink="#000000" topmargin="0" leftmargin="0" onLoad="window.close();">
<TABLE WIDTH="100%" HEIGHT="100%">
<TR>
<TD WIDTH="100%" HEIGHT="100%" VALIGN="CENTER">
<FONT FACE="ARIAL"><center><h1>THANKS!</h1></center></FONT>
</TD>
</TR>
</TABLE>
<%
objcomments = request.form("comments")
if len(objcomments) > 300 then
   objcomments = left(objcomments, 300) & Chr(13) & CHR(10) & "BLA! BLA! BLA!  They were cut off here!!"
end if
Set Mailer = Server.CreateObject("SMTPsvg.Mailer")
Mailer.FromName   = "Kube Mouth Off"
Mailer.FromAddress= "kube@digital-sherpas.com"
Mailer.RemoteHost = "207.66.185.23"
Mailer.AddRecipient "Gus Swanson", "gswanson@ackerley.com"
Mailer.Subject    = "MOUTH OFF!!"
Mailer.BodyText   =  request.form("from") & Chr(13) & CHR(10) & Chr(13) & CHR(10) & request.form("question") & Chr(13) & CHR(10) & Chr(13) & CHR(10) & objcomments & Chr(13) & CHR(10) & Chr(13) & CHR(10) & now()
if Mailer.SendMail then
  
  else
  Response.Write "Mail send failure. Error was " & Mailer.Response
end if
%>
</body>
</html>
<% end if %>