<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KCBA Update</TITLE>
<!--#include file="../style.inc"-->
</HEAD>

<BODY BGCOLOR="#003071" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
<H3><font color="#FFFFFF">KCBA News Script Update Results:</font></H3>

<% If request.form("updatedby") = "" then %>
<h1><font color="#FFFFFF">You must enter your name in the Updated By field!</font></h1>

<% Else  %>


<%
showdate = Request.Form("showdate")
intEqualSignPos = 1
intEqLoopCount = 1
intSlashPos = 1
intSlashLoopCount = 1

if showdate = "" or showdate = "970131" or len(showdate) < 6 then
	response.write "<font size=""+2"" color=""#FF0000"">Form not processed, the date was entered incorrectly.</FONT>"
	unspecerror = 1
	
elseif request.form("page") = "" then
	response.write "<font size=""+2"" color=""#FF0000"">Form not processed, the form was blank.</FONT>"
	unspecerror = 2
	
else
	strPage = request.form("page")
	BackupPage = request.form("page")
	if request.form("replace") = "Update" then
		Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
		KCBANewsFile = "c:\inetsrv\kcba\news\news.asp"
		Set OutStream = FileObject.CreateTextFile (KCBANewsFile, True, False)
		OutStream.Write strPage
		Set OutStream = Nothing
		Response.Write "<B>News.asp written.</B><BR>"
	End If

	Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
	NewsFile2 = "c:\inetsrv\kcba\kcbanewsarchives\" + showdate + "_10p_kcba.asp"
	Set OutStream = FileObject.CreateTextFile (NewsFile2, True, False)
	OutStream.Write strPage
	Set OutStream = Nothing
	Response.Write "<B>" & showdate & "_10p_kcba.asp written to archives.</B><BR>"
	
End If



Set Mailer = Server.CreateObject("SMTPsvg.Mailer")
Mailer.FromName   = "KCBA Update Center"
Mailer.FromAddress= "kcba@digital-sherpas.com"
Mailer.RemoteHost = "207.66.185.23"
Mailer.AddRecipient "Jesse Arnold", "jesse@digital-sherpas.com"
Mailer.AddRecipient "Matt Winterowd", "matt@digital-sherpas.com"
Mailer.AddRecipient "Brent Calvin", "bcalvin@redshift.com"
Mailer.Subject    = "KCBA News Script Update"

if request.form("page") <> "" then
	Mailer.BodyText   =  "The KCBA news Script(s):"  & Chr(13) & CHR(10) & KCBAnewsfile & Chr(13) & CHR(10) & NewsFile2 & Chr(13) & CHR(10) & "have been updated by " & request.form("updatedby")  & Chr(13) & CHR(10) & Chr(13) & CHR(10) & "Found " & intEqLoopCount & " instances of '=='" & Chr(13) & CHR(10) & Chr(13) & CHR(10) & "Found " & intSlashLoopCount & " instances of '--'" & Chr(13) & CHR(10) & Chr(13) & CHR(10) & now() & Chr(13) & CHR(10) & Chr(13) & CHR(10) & BackupPage

elseif unspecerror = 1 then
	Mailer.BodyText   =  request.form("updatedby") & " attempted to update the KCBA News Script, but the date was not entered."   & Chr(13) & CHR(10) & now()
elseif unspecerror = 2 then
	Mailer.BodyText   =  request.form("updatedby") & " attempted to update the KCBA News Script, but the form was blank."   & Chr(13) & CHR(10) & now()
elseif unspecerror = 3 then

end if

if Mailer.SendMail then
	response.write "<!--message sent!-->"
	else
	Response.Write "<BR><BR>Mail send failure. Error was " & Mailer.Response
end if
%>

	<% If intEqLoopCount > 0 then %>
	Found <%= intEqLoopCount %> instances of '=='
	<% End If %>
	<br>
	<% If intSlashLoopCount > 0 then %>
	Found <%= intSlashLoopCount %> instances of '--'
	<% End If %>
<br>

<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
UpdateTimeFile = Server.MapPath ("/kionkcbaupdate/text") & "\kcbascriptupdatetime.txt"
Set OutStream= FileObject.CreateTextFile (UpdateTimeFile, True, False)
UpdateTime = now()
OutStream.WriteLine UpdateTime
Set OutStream = Nothing
	Response.Write "<B>Update time has been sucessfully updated.</B>"
%>


<BR>

<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
UpdatedbyFile = Server.MapPath ("/kionkcbaupdate/text") & "\kcbascriptupdatedby.txt"
Set OutStream= FileObject.CreateTextFile (UpdatedbyFile, True, False)
UpdatedbyOut = request.form("updatedby")
OutStream.WriteLine UpdatedbyOut
Set OutStream = Nothing
	Response.Write "<B>Updated By has been sucessfully updated.</B>"
%>
<BR><BR>


<BR><BR>
<STRONG><a href="newspage.asp">Post another script.</a></STRONG>

<% End If %>

<BR><BR>
<A HREF="default.html">Return to the main update page</A>
<br><br>
<A HREF="http://206.159.0.73" target="_top">KCBA Home</A>
<BR>
<BR>
</BODY>
</HTML>
