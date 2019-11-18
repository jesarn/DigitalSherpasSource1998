<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KCBA Programming</TITLE>
<!--#include file="../style2.inc" -->

</HEAD>

<BODY BGCOLOR="#FFFFFF" BACKGROUND="../images/background3.gif">


<IMG SRC="../images/programming.GIF" WIDTH=284 HEIGHT=32 BORDER=0 alt=""

<% week1startdate = date - weekday(date) + 1 %>
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
<center><h3>Programming for Monday</h3></center>

<% showlink = "-DB=kcbaprogramming.fp3&-Format=programming.htm&date=" & week1startdate + 1  & "&-SortField=sort_order&-Max=50&-Find"
Set HttpObj = Server.CreateObject("AspHTTP.Conn")
HttpObj.Url = "http://207.66.185.129/kcba/FMPro?"
HttpObj.PostData = showlink
HttpObj.TimeOut = 10
HttpObj.RequestMethod = "POST"
ProgramstrResult = HttpObj.GetURL 

errormessagepos = InStr(UCase(ProgramstrResult),  "<HTML>")
if errormessagepos then %>
We apologize for the inconvenience, we are unable to complete your request. Please try again later.
<br><br>
<A HREF="tuesday_wk1.asp">Reload this page.</A>
<!-- db -->
<% elseif ProgramstrResult = "" then %>
We apologize for the inconvenience, we are unable to complete your request. Please try again later.
<br><br>
<A HREF="tuesday_wk1.asp">Reload this page.</A>
<!-- db timeout -->
<% else %>

<%= ProgramstrResult %>

<% End If %>

<br><br>
<!--#include file="../footer.inc" -->

</BODY>
</HTML>
