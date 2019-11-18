<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KION News Update</TITLE>

</HEAD>
<!--#include file="../style1.inc"-->
<BODY BGCOLOR="#003071" BACKGROUND="../images/kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
<H3>KION Poll Update Results:</H3>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
NowFile = Server.MapPath ("/kionkcbaupdate/text") & "\onrightnow.txt"
Set OutStream = FileObject.CreateTextFile (NowFile, True, False)
onnow = Request.Form("onnow")
OutStream.WriteLine onnow
Set OutStream = Nothing
	Response.Write "<B>On Right Now Statement Updated.</B>"
%><BR>


<%
Set Mailer = Server.CreateObject("SMTPsvg.Mailer")
Mailer.FromName   = "KION Update Center"
Mailer.FromAddress= "kion@digital-sherpas.com"
Mailer.RemoteHost = "207.66.185.23"
Mailer.AddRecipient "Jesse Arnold", "jesse@digital-sherpas.com"
Mailer.AddRecipient "Matt Winterowd", "matt@digital-sherpas.com"
Mailer.Subject    = "KION On Right Now"
Mailer.BodyText   =  "The KION What's on Right Now statement has been changed to:" & Chr(13) & CHR(10) & onnow & Chr(13) & CHR(10) & now()
if Mailer.SendMail then
	response.write "<!--message sent!-->"
	else
	Response.Write "<BR><BR>Mail send failure. Error was " & Mailer.Response
end if
%><BR>

<A HREF="default.html">Return to the main update page</A>
<br><br>
<A HREF="../" target="_top">KION Home</A><BR>

<BR>
<BR>
</BODY>
</HTML>
