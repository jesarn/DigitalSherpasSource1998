<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KCBA News Update</TITLE>
<!--#include file="../style1.inc"-->
</HEAD>

<BODY BGCOLOR="#003071" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
<H3>KCBA News Update Results:</H3>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
NewsFile = Server.MapPath ("/kionkcbaupdate/text") & "\newslink1kcba.txt"
Set OutStream= FileObject.CreateTextFile (NewsFile, True, False)
link1Out = Request.Form("link1")
OutStream.WriteLine link1Out
Set OutStream = Nothing
	Response.Write "<B>Link 1 updated.</B>"
%><BR>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
NewsFile = Server.MapPath ("/kionkcbaupdate/text") & "\newslink2kcba.txt"
Set OutStream= FileObject.CreateTextFile (NewsFile, True, False)
link2Out = Request.Form("link2")
OutStream.WriteLine link2Out
Set OutStream = Nothing
	Response.Write "<B>Link 2 updated.</B>"
%><BR>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
NewsFile = Server.MapPath ("/kionkcbaupdate/text") & "\newsstory1kcba.txt"
Set OutStream= FileObject.CreateTextFile (NewsFile, True, False)
story1Out = Request.Form("story1")
OutStream.WriteLine story1Out
Set OutStream = Nothing
	Response.Write "<B>Story 1 updated.</B>"
%><BR>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
NewsFile = Server.MapPath ("/kionkcbaupdate/text") & "\newsstory2kcba.txt"
Set OutStream= FileObject.CreateTextFile (NewsFile, True, False)
story2Out = Request.Form("story2")
OutStream.WriteLine story2Out
Set OutStream = Nothing
	Response.Write "<B>Story 2 updated.</B>"
%><BR>
<%
Set Mailer = Server.CreateObject("SMTPsvg.Mailer")
Mailer.FromName   = "KCBA Update Center"
Mailer.FromAddress= "kion@digital-sherpas.com"
Mailer.RemoteHost = "207.66.185.23"
Mailer.AddRecipient "Jesse Arnold", "jesse@digital-sherpas.com"
Mailer.AddRecipient "Matt Winterowd", "matt@digital-sherpas.com"
Mailer.AddRecipient "Brent Calvin", "bcalvin@redshift.com"
Mailer.Subject    = "KCBA News Headline Update"
Mailer.BodyText   =  "The KCBA News Headlines have been updated with:" & Chr(13) & CHR(10) & link1Out  & Chr(13) & CHR(10) & link2Out & Chr(13) & CHR(10) & story1Out & Chr(13) & CHR(10) & story2Out & Chr(13) & CHR(10) & now()
if Mailer.SendMail then
	response.write "<!--message sent!-->"
	else
	Response.Write "<BR><BR>Mail send failure. Error was " & Mailer.Response
end if
%><BR>
<A HREF="default.html">Return to the main update page</A>
<br><br>

<A HREF="http://206.159.0.73" target="_top">KCBA Home</A>
<BR>
<BR>
</BODY>
</HTML>
