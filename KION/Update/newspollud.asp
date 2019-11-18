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
option1file = Server.MapPath ("/kionkcbaupdate/text") & "\newspolloption1.txt"
Set OutStream= FileObject.CreateTextFile (option1file, True, False)
option1 = Request.Form("option1")
OutStream.WriteLine option1
Set OutStream = Nothing
	Response.Write "<B>Poll Answer 1 updated.</B>"
%><BR>

<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
option1textfile = Server.MapPath ("/kionkcbaupdate/text") & "\newspolloptiontext1.txt"
Set OutStream= FileObject.CreateTextFile (option1textfile, True, False)
optiontext1 = Request.Form("optiontext1")
OutStream.WriteLine optiontext1
Set OutStream = Nothing
	Response.Write "<B>Poll Answer 1 Synopsis updated.</B>"
%><BR>

<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
option2file = Server.MapPath ("/kionkcbaupdate/text") & "\newspolloption2.txt"
Set OutStream= FileObject.CreateTextFile (option2file, True, False)
option2 = Request.Form("option2")
OutStream.WriteLine option2
Set OutStream = Nothing
	Response.Write "<B>Poll Answer 2 updated.</B>"
%><BR>

<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
option2textfile = Server.MapPath ("/kionkcbaupdate/text") & "\newspolloptiontext2.txt"
Set OutStream= FileObject.CreateTextFile (option2textfile, True, False)
optiontext2 = Request.Form("optiontext2")
OutStream.WriteLine optiontext2
Set OutStream = Nothing
	Response.Write "<B>Poll Answer 2 Synopsis updated.</B>"
%><BR>

<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
option3file = Server.MapPath ("/kionkcbaupdate/text") & "\newspolloption3.txt"
Set OutStream= FileObject.CreateTextFile (option3file, True, False)
option3 = Request.Form("option3")
OutStream.WriteLine option3
Set OutStream = Nothing
	Response.Write "<B>Poll Answer 3 updated.</B>"
%><br>
	
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
option3textfile = Server.MapPath ("/kionkcbaupdate/text") & "\newspolloptiontext3.txt"
Set OutStream= FileObject.CreateTextFile (option3textfile, True, False)
optiontext3 = Request.Form("optiontext3")
OutStream.WriteLine optiontext3
Set OutStream = Nothing
	Response.Write "<B>Poll Answer 3 Synopsis updated.</B>"
%><BR>


<%
Set Mailer = Server.CreateObject("SMTPsvg.Mailer")
Mailer.FromName   = "KION Update Center"
Mailer.FromAddress= "kion@digital-sherpas.com"
Mailer.RemoteHost = "207.66.185.23"
Mailer.AddRecipient "Jesse Arnold", "jesse@digital-sherpas.com"
Mailer.AddRecipient "Matt Winterowd", "matt@digital-sherpas.com"
Mailer.Subject    = "KION Choose The News Update"
Mailer.BodyText   =  "The KION News Poll has been changed to:" & Chr(13) & CHR(10) & question & Chr(13) & CHR(10) & option1  & Chr(13) & CHR(10) & option2 & Chr(13) & CHR(10) & option3 & now()
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
