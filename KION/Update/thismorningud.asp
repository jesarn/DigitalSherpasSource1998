<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KION Update</TITLE>
<!--#include file="../style1.inc"-->
</HEAD>

<BODY BGCOLOR="#003071" BACKGROUND="../images/kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
<H3>KION News Update Results:</H3>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
NewsFile = Server.MapPath ("/kionkcbaupdate/text") & "\thismorningstar.txt"
Set OutStream= FileObject.CreateTextFile (NewsFile, True, False)
link1Out = Request.Form("star")
OutStream.WriteLine link1Out
Set OutStream = Nothing
	Response.Write "<B>Star(s) updated.</B>"
%><BR>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
NewsFile = Server.MapPath ("/kionkcbaupdate/text") & "\thismorningfeatures.txt"
Set OutStream= FileObject.CreateTextFile (NewsFile, True, False)
link2Out = Request.Form("feature")
OutStream.WriteLine link2Out
Set OutStream = Nothing
	Response.Write "<B>Feature updated.</B>"
%><BR>
<A HREF="default.html">Return to the main update page</A>
<br><br>
<A HREF="../" target="_top">KION Home</A><BR>
<BR>
<BR>
</BODY>
</HTML>
