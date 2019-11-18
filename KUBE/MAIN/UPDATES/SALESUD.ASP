<!-- This document was created with HomeSite 2.5 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>Seattle's Most Wanted UPDATE</TITLE>
</HEAD>

<body background="../../graphics/smw_back.gif"
bgcolor="#000000" text="#FFFFFF" link="#FFCC99" vlink="#FFCC99"
alink="#C0C0C0">

<img src="../../graphics/smw_sales.gif" width="350" height="35">
<P>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
weekendFile = Server.MapPath ("/") & "\main\showtunes\smw\text\weekend.txt"
Set OutStream= FileObject.CreateTextFile (weekendFile, True, False)
weekendOut = Request.Form("weekend")
OutStream.WriteLine weekendOut
Set OutStream = Nothing
	Response.Write "<strong>The Date has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
title15File = Server.MapPath ("/") & "\main\showtunes\smw\text\sales15.txt"
Set OutStream= FileObject.CreateTextFile (title15File, True, False)
title15Out = Request.Form("title15")
OutStream.WriteLine title15Out
Set OutStream = Nothing
	Response.Write "<strong>Song 15 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
artist15File = Server.MapPath ("/") & "\main\showtunes\smw\text\salea15.txt"
Set OutStream= FileObject.CreateTextFile (artist15File, True, False)
artist15Out = Request.Form("artist15")
OutStream.WriteLine artist15Out
Set OutStream = Nothing
	Response.Write "<strong>Artist 15 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
title14File = Server.MapPath ("/") & "\main\showtunes\smw\text\sales14.txt"
Set OutStream= FileObject.CreateTextFile (title14File, True, False)
title14Out = Request.Form("title14")
OutStream.WriteLine title14Out
Set OutStream = Nothing
	Response.Write "<strong>Song 14 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
artist14File = Server.MapPath ("/") & "\main\showtunes\smw\text\salea14.txt"
Set OutStream= FileObject.CreateTextFile (artist14File, True, False)
artist14Out = Request.Form("artist14")
OutStream.WriteLine artist14Out
Set OutStream = Nothing
	Response.Write "<strong>Artist 14 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
title13File = Server.MapPath ("/") & "\main\showtunes\smw\text\sales13.txt"
Set OutStream= FileObject.CreateTextFile (title13File, True, False)
title13Out = Request.Form("title13")
OutStream.WriteLine title13Out
Set OutStream = Nothing
	Response.Write "<strong>Song 13 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
artist13File = Server.MapPath ("/") & "\main\showtunes\smw\text\salea13.txt"
Set OutStream= FileObject.CreateTextFile (artist13File, True, False)
artist13Out = Request.Form("artist13")
OutStream.WriteLine artist13Out
Set OutStream = Nothing
	Response.Write "<strong>Artist 13 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
title12File = Server.MapPath ("/") & "\main\showtunes\smw\text\sales12.txt"
Set OutStream= FileObject.CreateTextFile (title12File, True, False)
title12Out = Request.Form("title12")
OutStream.WriteLine title12Out
Set OutStream = Nothing
	Response.Write "<strong>Song 12 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
artist12File = Server.MapPath ("/") & "\main\showtunes\smw\text\salea12.txt"
Set OutStream= FileObject.CreateTextFile (artist12File, True, False)
artist12Out = Request.Form("artist12")
OutStream.WriteLine artist12Out
Set OutStream = Nothing
	Response.Write "<strong>Artist 12 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
title11File = Server.MapPath ("/") & "\main\showtunes\smw\text\sales11.txt"
Set OutStream= FileObject.CreateTextFile (title11File, True, False)
title11Out = Request.Form("title11")
OutStream.WriteLine title11Out
Set OutStream = Nothing
	Response.Write "<strong>Song 11 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
artist11File = Server.MapPath ("/") & "\main\showtunes\smw\text\salea11.txt"
Set OutStream= FileObject.CreateTextFile (artist11File, True, False)
artist11Out = Request.Form("artist11")
OutStream.WriteLine artist11Out
Set OutStream = Nothing
	Response.Write "<strong>Artist 11 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
title10File = Server.MapPath ("/") & "\main\showtunes\smw\text\sales10.txt"
Set OutStream= FileObject.CreateTextFile (title10File, True, False)
title10Out = Request.Form("title10")
OutStream.WriteLine title10Out
Set OutStream = Nothing
	Response.Write "<strong>Song 10 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
artist10File = Server.MapPath ("/") & "\main\showtunes\smw\text\salea10.txt"
Set OutStream= FileObject.CreateTextFile (artist10File, True, False)
artist10Out = Request.Form("artist10")
OutStream.WriteLine artist10Out
Set OutStream = Nothing
	Response.Write "<strong>Artist 10 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
title9File = Server.MapPath ("/") & "\main\showtunes\smw\text\sales9.txt"
Set OutStream= FileObject.CreateTextFile (title9File, True, False)
title9Out = Request.Form("title9")
OutStream.WriteLine title9Out
Set OutStream = Nothing
	Response.Write "<strong>Song 9 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
artist9File = Server.MapPath ("/") & "\main\showtunes\smw\text\salea9.txt"
Set OutStream= FileObject.CreateTextFile (artist9File, True, False)
artist9Out = Request.Form("artist9")
OutStream.WriteLine artist9Out
Set OutStream = Nothing
	Response.Write "<strong>Artist 9 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
title8File = Server.MapPath ("/") & "\main\showtunes\smw\text\sales8.txt"
Set OutStream= FileObject.CreateTextFile (title8File, True, False)
title8Out = Request.Form("title8")
OutStream.WriteLine title8Out
Set OutStream = Nothing
	Response.Write "<strong>Song 8 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
artist8File = Server.MapPath ("/") & "\main\showtunes\smw\text\salea8.txt"
Set OutStream= FileObject.CreateTextFile (artist8File, True, False)
artist8Out = Request.Form("artist8")
OutStream.WriteLine artist8Out
Set OutStream = Nothing
	Response.Write "<strong>Artist 8 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
title7File = Server.MapPath ("/") & "\main\showtunes\smw\text\sales7.txt"
Set OutStream= FileObject.CreateTextFile (title7File, True, False)
title7Out = Request.Form("title7")
OutStream.WriteLine title7Out
Set OutStream = Nothing
	Response.Write "<strong>Song 7 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
artist7File = Server.MapPath ("/") & "\main\showtunes\smw\text\salea7.txt"
Set OutStream= FileObject.CreateTextFile (artist7File, True, False)
artist7Out = Request.Form("artist7")
OutStream.WriteLine artist7Out
Set OutStream = Nothing
	Response.Write "<strong>Artist 7 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
title6File = Server.MapPath ("/") & "\main\showtunes\smw\text\sales6.txt"
Set OutStream= FileObject.CreateTextFile (title6File, True, False)
title6Out = Request.Form("title6")
OutStream.WriteLine title6Out
Set OutStream = Nothing
	Response.Write "<strong>Song 6 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
artist6File = Server.MapPath ("/") & "\main\showtunes\smw\text\salea6.txt"
Set OutStream= FileObject.CreateTextFile (artist6File, True, False)
artist6Out = Request.Form("artist6")
OutStream.WriteLine artist6Out
Set OutStream = Nothing
	Response.Write "<strong>Artist 6 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
title5File = Server.MapPath ("/") & "\main\showtunes\smw\text\sales5.txt"
Set OutStream= FileObject.CreateTextFile (title5File, True, False)
title5Out = Request.Form("title5")
OutStream.WriteLine title5Out
Set OutStream = Nothing
	Response.Write "<strong>Song 5 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
artist5File = Server.MapPath ("/") & "\main\showtunes\smw\text\salea5.txt"
Set OutStream= FileObject.CreateTextFile (artist5File, True, False)
artist5Out = Request.Form("artist5")
OutStream.WriteLine artist5Out
Set OutStream = Nothing
	Response.Write "<strong>Artist 5 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
title4File = Server.MapPath ("/") & "\main\showtunes\smw\text\sales4.txt"
Set OutStream= FileObject.CreateTextFile (title4File, True, False)
title4Out = Request.Form("title4")
OutStream.WriteLine title4Out
Set OutStream = Nothing
	Response.Write "<strong>Song 4 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
artist4File = Server.MapPath ("/") & "\main\showtunes\smw\text\salea4.txt"
Set OutStream= FileObject.CreateTextFile (artist4File, True, False)
artist4Out = Request.Form("artist4")
OutStream.WriteLine artist4Out
Set OutStream = Nothing
	Response.Write "<strong>Artist 4 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
title3File = Server.MapPath ("/") & "\main\showtunes\smw\text\sales3.txt"
Set OutStream= FileObject.CreateTextFile (title3File, True, False)
title3Out = Request.Form("title3")
OutStream.WriteLine title3Out
Set OutStream = Nothing
	Response.Write "<strong>Song 3 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
artist3File = Server.MapPath ("/") & "\main\showtunes\smw\text\salea3.txt"
Set OutStream= FileObject.CreateTextFile (artist3File, True, False)
artist3Out = Request.Form("artist3")
OutStream.WriteLine artist3Out
Set OutStream = Nothing
	Response.Write "<strong>Artist 3 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
title2File = Server.MapPath ("/") & "\main\showtunes\smw\text\sales2.txt"
Set OutStream= FileObject.CreateTextFile (title2File, True, False)
title2Out = Request.Form("title2")
OutStream.WriteLine title2Out
Set OutStream = Nothing
	Response.Write "<strong>Song 2 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
artist2File = Server.MapPath ("/") & "\main\showtunes\smw\text\salea2.txt"
Set OutStream= FileObject.CreateTextFile (artist2File, True, False)
artist2Out = Request.Form("artist2")
OutStream.WriteLine artist2Out
Set OutStream = Nothing
	Response.Write "<strong>Artist 2 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
title1File = Server.MapPath ("/") & "\main\showtunes\smw\text\sales1.txt"
Set OutStream= FileObject.CreateTextFile (title1File, True, False)
title1Out = Request.Form("title1")
OutStream.WriteLine title1Out
Set OutStream = Nothing
	Response.Write "<strong>Song 1 has been updated.</strong>"
%>
<br>
<%
Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
artist1File = Server.MapPath ("/") & "\main\showtunes\smw\text\salea1.txt"
Set OutStream= FileObject.CreateTextFile (artist1File, True, False)
artist1Out = Request.Form("artist1")
OutStream.WriteLine artist1Out
Set OutStream = Nothing
	Response.Write "<strong>Artist 1 has been updated.</strong>"
%>
</BODY>
</HTML>
