<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KION Update</TITLE>
<!--#include file="../style1.inc"-->
</HEAD>

<BODY BGCOLOR="#003071" BACKGROUND="../images/kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
<H3>KION News Script Update Results:</H3>

<% If request.form("updatedby") = "" then %>
<h1><font color="#FFFFFF">You must enter your name in the Updated By field!</font></h1>

<% Else  %>

<%
showname = Request.Form("showname")
showdate = Request.Form("showdate")
backupPage = request.form("page")
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

elseif request.form("showname") = "blank" then
	response.write "<font size=""+2"" color=""#FF0000"">Form not processed, the show you are updating was not specified.</FONT>"
	unspecerror = 3
	
else
	
	strPage = request.form("page")
	intBodyPos = InStr(UCase(strPage), "<BODY BGCOLOR=#FFFFFF BGPROPERTIES=FIXED>")
	If intBodyPos then
	  strPage = Left(strPage, intBodyPos -1) & Mid(strPage, intBodyPos + 68)
	End If 
	
	intHeadPos = InStr(UCase(strPage), "</HEAD>")
	If intHeadPos then
	   strPage = Left(strPage, intHeadPos - 1) & "<!--#include file=""../style2.inc"" -->" & Chr(13) & CHR(10) & "</HEAD>" & Chr(13) & CHR(10) & "<BODY BGCOLOR=""#FFFFFF"" BACKGROUND=""http://www.kiontv.com/images/background3.gif"">"  & Chr(13) & CHR(10) & "<IMG SRC=""http://www.kiontv.com/images/b_topstories.gif"" BORDER=0 ALT=""Top Stories"">" & Mid(strPage, intHeadPos + 17)
	End If
	
	intTable1Pos = InStr(UCase(strPage), Chr(13) & CHR(10) & "<TABLE WIDTH=80% BORDER=1 BORDERCOLORLIGHT=#E0E0E0>")
	If intTable1Pos then
	  strPage = Left(strPage, intTable1Pos + 8) & "WIDTH=""400"" " & mid(strPage, intTable1Pos + 19)
	End If 
	
	intTable2Pos = InStr(UCase(strPage), Chr(13) & CHR(10) & "<TABLE WIDTH=80% BORDER=1 BORDERCOLORLIGHT=#E0E0E0 >")
	If intTable2Pos then
	  strPage = Left(strPage, intTable2Pos + 8) & "WIDTH=""400"" " & mid(strPage, intTable2Pos + 19)
	End If 
	
	intTable3Pos = InStr(UCase(strPage), Chr(13) & CHR(10) & "</TABLE>" & Chr(13) & CHR(10) & "</CENTER>")
	If intTable3Pos then
	  strPage = Left(strPage, intTable3Pos + 11) & "<Table width=400 border=0><TR><TD><A HREF=""../newsarchives/query.asp""><CENTER>Search the KION news archive.</CENTER></A><BR><BR>" & mid(strPage, intTable3Pos + 12)
	
	  else
		  intTable4Pos = InStr(UCase(strPage), Chr(13) & CHR(10) & "</TABLE>" & Chr(13) & CHR(10) & "<A HREF=.")
		  strPage = Left(strPage, intTable4Pos + 11) & "<Table width=400 border=0><TR><TD><A HREF=""../newsarchives/query.asp""><CENTER>Search the KION news archive.</CENTER></A><BR><BR>" & mid(strPage, intTable4Pos + 12)
	End If 
	

	do while intEqualSignPos
	intEqualSignPos = InStr(UCase(strPage), "==")
	If intEqualSignPos then
	  strPage = Left(strPage, intEqualSignPos - 1) &  mid(strPage, intEqualSignPos + 2)
	End If 
    intEqLoopCount = intEqLoopCount + 1
	loop
	
	do while intSlashPos
	intSlashPos = InStr(UCase(strPage), "--")
	If intSlashPos then
	  strPage = Left(strPage, intSlashPos - 1) &  mid(strPage, intSlashPos + 2)
	End If 
    intSlashLoopCount = intSlashLoopCount + 1
	loop
	
	intCloseBodyPos = InStr(UCase(strPage), "</BODY>")
	If intCloseBodyPos then
	  strPage = Left(strPage, intCloseBodyPos - 3) & "<!--#include file=""../footer.inc"" --></TD></TR></TABLE>" & mid(strPage, intCloseBodyPos -2)
	End If 
	%>
	<% If jesse = 99 then %>
	<textarea name="page" cols="70" rows="20" wrap="OFF"><%= strPage %></textarea>
	<% End If %>
	<br>
	<% errortag = 0 %>
	<% if intBodypos then %>
	Found open body tag.
	<% Else
		errortag = 1%>
	<font size="+2" color="#FF0000">Didn't find open Body tag.</font>
	<% End If %>
	<br>
	<% if intHeadpos then %>
	Found head tag.
	<% Else
		errortag = 2%>
	<font size="+2" color="#FF0000">Didn't find head tag.</font>
	<% End If %>
	<br>
	<% if inttable1pos then %>
	Found Table 1 tag.
	<% Else
		errortag = 3%>
	<font size="+2" color="#FF0000">Didn't find table 1 tag.</font>
	<% End If %>
	<br>
	<% if inttable2pos then %>
	Found Table 2 tag.
	<% Else
		errortag = 4%>
	<font size="+2" color="#FF0000">Didn't find table 2 tag.</font>
	<% End If %>
	<br>
	<% if inttable3pos then %>
		Found Table 3 tag.
	<% ElseIf inttable4pos then %>	
		Found Table 3 tag.<!--VERSION2-->
	<% Else 
		errortag = 5%>
	<font size="+2" color="#FF0000">Didn't find table 3 tag.</font>
	<% End If %>
	<br>
	<% if intCloseBodypos then %>
	Found close body tag.
	<% Else
		errortag = 6%>
	<font size="+2" color="#FF0000">Didn't find close body tag.<BR>  This error normally occurs when entire news script is not placed in the form.  Please check to make sure that you have pasted all of the news script in the form.</font>
	<% End If %>
	<br>
	
	<% If intEqLoopCount > 0 then %>
	Found <%= intEqLoopCount %> instances of '=='
	<% End If %>
	<br>
	<% If intSlashLoopCount > 0 then %>
	Found <%= intSlashLoopCount %> instances of '--'
	<% End If %>
	<br><br>
	<%
	if errortag => 1 then
		
		response.write "<B><font color=""#FF0000"">An error occured.</font></b>  The file was not saved. <BR> Please email <a href=""mailto:kion@digital-sherpas.com"">kion@digital-sherpas.com</a> or call (206)624-8948 for help."	
	
	else
		
		if request.form("replace") = "Update" then
			Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
			NewsFile = "c:\inetsrv\kion\news\news.asp"
			Set OutStream= FileObject.CreateTextFile (NewsFile, True, False)
			OutStream.Write strPage
			Set OutStream = Nothing
			Response.Write "<B>News.asp written.</B><BR>"
	
			Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
			NewsFileLink = Server.MapPath ("/kionkcbaupdate/text") & "\newsshow.txt"
			Set OutStream= FileObject.CreateTextFile (NewsFileLink, True, False)
			if showname = "6aa" then newsshow = "our <A HREF=""news/news.asp""><B>Eye On This Morning</B></A>"
			if showname = "6ab" then newsshow = "our <A HREF=""news/news.asp""><B>Eye On This Morning</B></A>"
			if showname = "7aa" then newsshow = "our <A HREF=""news/news.asp""><B>Eye On This Morning</B></A>"
			if showname = "7ab" then newsshow = "our <A HREF=""news/news.asp""><B>Eye On This Morning</B></A>"
			if showname = "noon" then newsshow = "our <A HREF=""news/news.asp""><B>Eyewitness News at Noon</B></A>"
			if showname = "5p" then newsshow = "our <A HREF=""news/news.asp""><B>Eyewitness News at Five</B></A>"
			if showname = "6pa" then newsshow = "our <A HREF=""news/news.asp""><B>Eyewitness News at Six</B></A>"
			if showname = "6pb" then newsshow = "our <A HREF=""news/news.asp""><B>Eyewitness News at Six</B></A>"
			if showname = "11p" then newsshow = "our <A HREF=""news/news.asp""><B>Eyewitness News at Eleven</B></A>"
			OutStream.WriteLine newsshow
			Set OutStream = Nothing
			Response.Write "<B>Link updated on homepage.</B><BR>"
			
		End If
	
		Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
		NewsFile2 = "c:\inetsrv\kion\newsarchives\" + showdate + "_" + showname + "_kion.asp"
		Set OutStream= FileObject.CreateTextFile (NewsFile2, True, False)
		OutStream.Write strPage
		Set OutStream = Nothing
		Response.Write "<B>" & showdate & "_" & showname & "_kion.asp written to archives.</B><BR>"
	
	End If	
End If



Set Mailer = Server.CreateObject("SMTPsvg.Mailer")
Mailer.FromName   = "KION Update Center"
Mailer.FromAddress= "kion@digital-sherpas.com"
Mailer.RemoteHost = "207.66.185.23"
Mailer.AddRecipient "Jesse Arnold", "jesse@digital-sherpas.com"
Mailer.AddRecipient "Matt Winterowd", "matt@digital-sherpas.com"
Mailer.AddRecipient "Brent Calvin", "bcalvin@redshift.com"
Mailer.Subject    = "KION News Script Update"

if errortag => 1 then
	Mailer.BodyText   =  request.form("updatedby") & " attempted to update the KION News Script, but a conversion error occurred. " & Chr(13) & CHR(10) & now() & Chr(13) & CHR(10) & errortag & Chr(13) & CHR(10) & Chr(13) & CHR(10) & "Here's what they submitted:" & Chr(13) & CHR(10) & Chr(13) & CHR(10) & backupPage

elseif NewsFile2 <> "" then
	Mailer.BodyText   =  "The KION news Scripts:"  & Chr(13) & CHR(10) & newsfile & Chr(13) & CHR(10) & newsfile2 & Chr(13) & CHR(10) & "have been updated by " & request.form("updatedby") & Chr(13) & CHR(10) & "Found " & intEqLoopCount & " instances of '=='" & Chr(13) & CHR(10) & Chr(13) & CHR(10) & "Found " & intSlashLoopCount & " instances of '--'" & Chr(13) & CHR(10) & Chr(13) & CHR(10) & now() & Chr(13) & CHR(10) & Chr(13) & CHR(10) & "Here's what they submitted:" & Chr(13) & CHR(10) & Chr(13) & CHR(10) & backupPage
elseif unspecerror = 1 then
	Mailer.BodyText   =  request.form("updatedby") & " attempted to update the KION News Script, but the date was not entered."   & Chr(13) & CHR(10) & now() & Chr(13) & CHR(10) & Chr(13) & CHR(10) & "Here's what they submitted:" & Chr(13) & CHR(10) & Chr(13) & CHR(10) & backupPage
elseif unspecerror = 2 then
	Mailer.BodyText   =  request.form("updatedby") & " attempted to update the KION News Script, but the form was blank."   & Chr(13) & CHR(10) & now() 
elseif unspecerror = 3 then
	Mailer.BodyText   =  request.form("updatedby") & " attempted to update the KION News Script, but the show was not specified."   & Chr(13) & CHR(10) & now() & Chr(13) & CHR(10) & Chr(13) & CHR(10) & "Here's what they submitted:" & Chr(13) & CHR(10) & Chr(13) & CHR(10) & backupPage
else 
	Mailer.BodyText   =  request.form("updatedby") & " attempted to update the KION News Script, but an unspecified error occurred."   & Chr(13) & CHR(10) & now() & Chr(13) & CHR(10) & Chr(13) & CHR(10) & "Here's what they submitted:" & Chr(13) & CHR(10) & Chr(13) & CHR(10) & backupPage
end if

if Mailer.SendMail then
	response.write "<!--message sent!-->"
	else
	Response.Write "<BR><BR>Mail send failure. Error was " & Mailer.Response
end if
%>

<BR><BR>

<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
UpdateTimeFile = Server.MapPath ("/kionkcbaupdate/text") & "\kionscriptupdatetime.txt"
Set OutStream= FileObject.CreateTextFile (UpdateTimeFile, True, False)
UpdateTime = now()
OutStream.WriteLine UpdateTime
Set OutStream = Nothing
	Response.Write "<B>Update time has been sucessfully updated.</B>"
%>


<BR><BR>

<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
UpdatedbyFile = Server.MapPath ("/kionkcbaupdate/text") & "\kionscriptupdatedby.txt"
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
<A HREF="../" target="_top">KION Home</A><BR>

<BR>
<BR>
</BODY>
</HTML>
