<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KION/KCBA Update</TITLE>
<!--#include file="../style1.inc"-->
</HEAD>

<BODY BGCOLOR="#003071" BACKGROUND="../images/kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
<H3>KION Weather Update Results:</H3>

<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
WeatherFile = Server.MapPath ("/") & "\weather.txt"
Set OutStream= FileObject.CreateTextFile (WeatherFile, True, False)
ForecastOut = Request.Form("forecast")
OutStream.WriteLine ForecastOut
Set OutStream = Nothing
	Response.Write "<B>KION Weather Ticker has been sucessfully updated.</B>"
%>
<BR><BR>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
WeatherFile = Server.MapPath ("/kcba") & "\weather.txt"
Set OutStream= FileObject.CreateTextFile (WeatherFile, True, False)
ForecastOut = Request.Form("forecast")
OutStream.WriteLine ForecastOut
Set OutStream = Nothing
	Response.Write "<B>KCBA Weather Ticker has been sucessfully updated.</B>"

Set Mailer = Server.CreateObject("SMTPsvg.Mailer")
Mailer.FromName   = "KION/KCBA Update Center"
Mailer.FromAddress= "kion@digital-sherpas.com"
Mailer.RemoteHost = "207.66.185.23"
Mailer.AddRecipient "Jesse Arnold", "jesse@digital-sherpas.com"
Mailer.AddRecipient "Matt Winterowd", "matt@digital-sherpas.com"
Mailer.Subject    = "KION/KCBA Weather Ticker"
Mailer.BodyText   =  "The KION/KCBA Weather Ticker has been changed to:" & Chr(13) & CHR(10) & ForecastOut & Chr(13) & CHR(10) & now()
if Mailer.SendMail then
	response.write "<!--message sent!-->"
	else
	Response.Write "<BR><BR>Mail send failure. Error was " & Mailer.Response
end if
%>
<BR><BR>

<% If request.form("day1") = request.form("day2") Or request.form("day1") = request.form("day3") Or request.form("day2") = request.form("day3") then %>
   
<H2><FONT COLOR="#FF0000">ERROR</FONT></H2>
<H3><FONT COLOR="#FF0000">Some of the Days of week are the same.<BR><BR>
The temperatures, days of the week, and icons have not been updated!</FONT></H3>
<BR><BR>
<% elseif request.form("temp1") = "" Or request.form("temp2") = "" Or request.form("temp3") = "" then %>
<H2><FONT COLOR="#FF0000">ERROR</FONT></H2>
<H3><FONT COLOR="#FF0000">One or more of the temperature fields were left blank.<BR><BR>
The temperatures, days of the week, and icons have not been updated!</FONT></H3>

<% Else  %>
<BR><BR>

<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
day1 = Server.MapPath ("/kionkcbaupdate/text") & "\day1.txt"
Set OutStream= FileObject.CreateTextFile (day1, True, False)
day1Out = Request.Form("day1")
OutStream.WriteLine day1Out
Set OutStream = Nothing
	Response.Write "<B>Day 1 has been sucessfully updated.</B>"
%>

<BR><BR>

<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
day2 = Server.MapPath ("/kionkcbaupdate/text") & "\day2.txt"
Set OutStream= FileObject.CreateTextFile (day2, True, False)
day2Out = Request.Form("day2")
OutStream.WriteLine day2Out
Set OutStream = Nothing
	Response.Write "<B>Day 2 has been sucessfully updated.</B>"
%>
<BR><BR>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
day3 = Server.MapPath ("/kionkcbaupdate/text") & "\day3.txt"
Set OutStream= FileObject.CreateTextFile (day3, True, False)
day3Out = Request.Form("day3")
OutStream.WriteLine day3Out
Set OutStream = Nothing
	Response.Write "<B>Day 3 has been sucessfully updated.</B>"
%>

<BR><BR>




<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
icon1 = Server.MapPath ("/kionkcbaupdate/text") & "\icon1.txt"
Set OutStream= FileObject.CreateTextFile (icon1, True, False)
icon1Out = Request.Form("icon1")
OutStream.WriteLine icon1Out
Set OutStream = Nothing
	Response.Write "<B>Icon 1 has been sucessfully updated.</B>"
%>

<BR><BR>

<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
icon2 = Server.MapPath ("/kionkcbaupdate/text") & "\icon2.txt"
Set OutStream= FileObject.CreateTextFile (icon2, True, False)
icon2Out = Request.Form("icon2")
OutStream.WriteLine icon2Out
Set OutStream = Nothing
	Response.Write "<B>Icon 2 has been sucessfully updated.</B>"
%>
<BR><BR>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
icon3 = Server.MapPath ("/kionkcbaupdate/text") & "\icon3.txt"
Set OutStream= FileObject.CreateTextFile (icon3, True, False)
icon3Out = Request.Form("icon3")
OutStream.WriteLine icon3Out
Set OutStream = Nothing
	Response.Write "<B>Icon 3 has been sucessfully updated.</B>"
%>

<BR><BR>


<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
temp1 = Server.MapPath ("/kionkcbaupdate/text") & "\temp1.txt"
Set OutStream= FileObject.CreateTextFile (temp1, True, False)
temp1Out = Request.Form("temp1")
OutStream.WriteLine temp1Out
Set OutStream = Nothing
	Response.Write "<B>Temp 1 has been sucessfully updated.</B>"
%>

<BR><BR>

<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
temp2 = Server.MapPath ("/kionkcbaupdate/text") & "\temp2.txt"
Set OutStream= FileObject.CreateTextFile (temp2, True, False)
temp2Out = Request.Form("temp2")
OutStream.WriteLine temp2Out
Set OutStream = Nothing
	Response.Write "<B>Temp 2 has been sucessfully updated.</B>"
%>
<BR><BR>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
temp3 = Server.MapPath ("/kionkcbaupdate/text") & "\temp3.txt"
Set OutStream= FileObject.CreateTextFile (temp3, True, False)
temp3Out = Request.Form("temp3")
OutStream.WriteLine temp3Out
Set OutStream = Nothing
	Response.Write "<B>Temp 3 has been sucessfully updated.</B>"


%>
<% End If %>

<BR><BR>
<A HREF="default.html">Return to the main update page</A>
<br><br>
<A HREF="../" target="_top">KION Home</A><BR>
<A HREF="http://206.159.0.73" target="_top">KCBA Home</A>
<BR>
<BR>
</BODY>
</HTML>
