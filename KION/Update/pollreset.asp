<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KION News Update</TITLE>

</HEAD>
<!--#include file="../style1.inc"-->
<BODY BGCOLOR="#003071" BACKGROUND="../images/kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
<H3>KION Poll Clear Results:</H3>

<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
result1file = Server.MapPath ("/kionkcbaupdate/text") & "\pollresult1.txt"
Set OutStream= FileObject.CreateTextFile (result1file, True, False)
result1 = 0
OutStream.WriteLine result1
Set OutStream = Nothing
	Response.Write "<B>Poll result 1 cleared.</B>"
%><BR>

<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
result2file = Server.MapPath ("/kionkcbaupdate/text") & "\pollresult2.txt"
Set OutStream= FileObject.CreateTextFile (result2file, True, False)
result2 = 0
OutStream.WriteLine result2
Set OutStream = Nothing
	Response.Write "<B>Poll result 2 cleared.</B>"
%><BR>

<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
result3file = Server.MapPath ("/kionkcbaupdate/text") & "\pollresult3.txt"
Set OutStream= FileObject.CreateTextFile (result3file, True, False)
result3 = 0
OutStream.WriteLine result3
Set OutStream = Nothing
	Response.Write "<B>Poll result 3 cleared.</B>"
%><BR>
<STRONG><A HREF="poll.asp">Return to the news poll</A></STRONG>
<A HREF="default.html">Return to the main update page</A>
<br><br>
<A HREF="../" target="_top">KION Home</A><BR>

<BR>
<BR>
</BODY>
</HTML>
