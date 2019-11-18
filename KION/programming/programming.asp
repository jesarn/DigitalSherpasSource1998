<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>Eyewitness News</TITLE>
<!--#include file="../style2.inc" -->

</HEAD>

<BODY BGCOLOR="#FFFFFF" BACKGROUND="../images/background3.gif">

<TABLE CELLSPACING=0 CELLPADDING=0 BORDER=0 WIDTH=400><TR><TD class="a">
<img src="../images/programming.gif" width=400 height=54 alt="" border=0>

<br><br>
<center>
<p>
<A HREF="sunday_wk1.asp">Sunday</a> | 
<A HREF="monday_wk1.asp">Monday</a> |
<A HREF="tuesday_wk1.asp">Tuesday</a> |
<A HREF="wednesday_wk1.asp">Wednesday</a> |
<A HREF="thursday_wk1.asp">Thursday</a> |
<A HREF="friday_wk1.asp">Friday</a> |
<A HREF="saturday_wk1.asp">Saturday</a>
</p></CENTER><BR>

<% showlink = "-DB=kionprogramming.fp3&-Format=programming_weekgrid.htm&date=" & date() & "&-SortField=sort_order&-Max=50&-Find"
Set HttpObj = Server.CreateObject("AspHTTP.Conn")
HttpObj.Url = "http://207.66.185.129/kion/FMPro?"
HttpObj.PostData = showlink
HttpObj.TimeOut = 30
HttpObj.RequestMethod = "POST"
ProgramstrResult = HttpObj.GetURL 

errormessagepos = InStr(UCase(ProgramstrResult),  "<HTML>")
if errormessagepos then %>
We apologize for the inconvenience, we are unable to complete your request. Please try again later.
<br><br>
<A HREF="today_detail.asp">Reload this page.</A>
<!-- db -->
<% elseif ProgramstrResult = "" then %>
We apologize for the inconvenience, we are unable to complete your request. Please try again later.
<br><br>
<A HREF="programming.asp">Reload this page.</A>
<!-- db timeout -->
<% else
	intFMPPos = 1
	do while intFMPPos
		intFMPPos = InStr(UCase(ProgramstrResult), "HREF=""FMPRO")
		If intFMPPos then
		  ProgramstrResult = Left(ProgramstrResult, intFMPPos + 5) &  "http://207.66.185.129/" & mid(ProgramstrResult, intFMPPos + 6)
		End If 
	loop
%>

<%= ProgramstrResult %>

<% End If %>

<br><br>
<!--#include file="../footer.inc" -->
</TD></TR></TABLE>
</BODY>
</HTML>
