<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KION Update</TITLE>
<STYLE type="text/css">
	P {font: 12pt Arial; color: white}
	UL LI {font: 10pt Arial; color: #F9EAA4}
	TD.a {font: 12pt Arial; color: white}
	TD.b {font: 10pt Arial; color: white}
</STYLE>
</HEAD>

<BODY BGCOLOR="#003071" BACKGROUND="../images/kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
<H3>KION Weather Forecast Update Results:</H3>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
WeatherFile = Server.MapPath ("/kionkcbaupdate/text") & "\forecast.txt"
Set OutStream= FileObject.CreateTextFile (WeatherFile, True, False)
ForecastOut = Request.Form("forecast")
OutStream.WriteLine ForecastOut
Set OutStream = Nothing
	Response.Write "<B>KION & KCBA Weather Forecast has been sucessfully updated.</B>"



Set Mailer = Server.CreateObject("SMTPsvg.Mailer")
Mailer.FromName   = "KION Update Center"
Mailer.FromAddress= "kion@digital-sherpas.com"
Mailer.RemoteHost = "207.66.185.23"
Mailer.AddRecipient "Jesse Arnold", "jesse@digital-sherpas.com"
Mailer.AddRecipient "Matt Winterowd", "matt@digital-sherpas.com"
Mailer.Subject    = "KION/KCBA Forecast Update"
Mailer.BodyText   =  "The KION/KCBA Weather Forecast has been updated with:" & Chr(13) & CHR(10) & ForecastOut & Chr(13) & CHR(10) & now()
if Mailer.SendMail then
	response.write "<!--message sent!-->"
	else
	Response.Write "<BR><BR>Mail send failure. Error was " & Mailer.Response
end if


%><BR><BR>
<A HREF="default.html">Return to the main update page</A>
<br><br>
<A HREF="../" target="_top">KION Home</A><BR>

<BR>
<BR>
</BODY>
</HTML>
