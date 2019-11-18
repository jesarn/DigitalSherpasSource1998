
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KCBA</TITLE>
<!--#include file="../style.inc" -->
</HEAD>

<BODY TEXT="#000000" VLINK="#1C0058" LINK="#005B91" ALINK="#FF0000" BGCOLOR="#FFFFFF">
<P>
<table width="100%"><tr>

<td align="Center" valign="TOP"><h2>Today's KCBA Kids Programming!</h2>
<br><br>


<% showlink = "-DB=kcbaprogramming.fp3&-Format=programming.htm&id=kids&date=" & date() & "&-SortField=sort_order&-Max=50&-Find"
Set HttpObj = Server.CreateObject("AspHTTP.Conn")
HttpObj.Url = "http://207.66.185.129/kcba/FMPro?"
HttpObj.PostData = showlink
HttpObj.TimeOut = 10
HttpObj.RequestMethod = "POST"
ProgramstrResult = HttpObj.GetURL %>

<%= ProgramstrResult %>

</P></td>

<td width="200" align="center" valign="TOP"><img src="../images/kidsclublogo.gif" width=200 height=185 alt="" border=0><br>

<a href="http://207.66.185.129/kcba/kcbakidssignup.htm">Sign up to be a Kid's Club Member.</a></A>
<br><br><br>
<A HREF="http://207.66.185.129/kcba/ml1enter.htm">Mad Lib #1</A><BR>

<A HREF="http://207.66.185.129/kcba/ml2enter.htm">Mad Lib #2</A><BR><br>

<%  Set BrowserCapabilities = Server.CreateObject("MSWC.BrowserType") %>  
<%If BrowserCapabilities.javascript Then%>
<input type="button" Value="Play a Word Search" ONCLICK="window.open('../games/vanillawordsearch/general.htm', 'Sample', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes,copyhistory=yes,width=390,height=450')"></FORM>
<% else %>
<a href="../games/vanillawordsearch/general.htm" target="_new">Word Search!</a>
<% End If %>
<br><br>
<em>Note, playing the game will open a new browser window.</em>

</td></tr></table>
<br clear="right"><br><br><br><br>
<!--#include file="../footer.inc" -->

</BODY>
</HTML>
