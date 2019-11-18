<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>Eyewitness News</TITLE>
<!--#include file="../style2.inc" -->

</HEAD>

<BODY BGCOLOR="#FFFFFF" BACKGROUND="../images/background3.gif">


<IMG SRC="../images/kidsclublogo.gif" WIDTH=200 HEIGHT=185 BORDER=0 alt="" align="right"><BR><BR>
<h2>Today's KCBA Kids Programming!</h2>
<br><br>


<% showlink = "-DB=kcbaprogramming.fp3&-Format=programming.htm&id=kids&date=" & date() & "&-SortField=sort_order&-Max=50&-Find"
Set HttpObj = Server.CreateObject("AspHTTP.Conn")
HttpObj.Url = "http://207.66.185.129/kcba/FMPro?"
HttpObj.PostData = showlink
HttpObj.TimeOut = 10
HttpObj.RequestMethod = "POST"
ProgramstrResult = HttpObj.GetURL %>

<%= ProgramstrResult %>

<br><br>
<!--#include file="../footer.inc" -->

</BODY>
</HTML>
