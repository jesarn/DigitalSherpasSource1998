
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KCBA</TITLE>
<!--#include file="../style.inc" -->
</HEAD>

<BODY BGCOLOR="#FFFFFF" TEXT="Black" VLINK="#1C0058" LINK="#005B91" ALINK="Red">
<table width="100%">
<tr><td align="LEFT" valign="TOP"><img src="../images/sports.gif" width=284 height=32 alt="" border="0"><br>


<% showlink = "-DB=kcbaprogramming2.fp3&-Format=sports.htm&id=sports&-SortField=sort_order&-Max=50&-Find"
Set HttpObj = Server.CreateObject("AspHTTP.Conn")
HttpObj.Url = "http://207.66.185.129/kcba/FMPro?"
HttpObj.PostData = showlink
HttpObj.TimeOut = 10
HttpObj.RequestMethod = "POST"
ProgramstrResult = HttpObj.GetURL 

errormessagepos = InStr(UCase(ProgramstrResult),  "<HTML>")
if errormessagepos then %>
If it's Sports you want KCBA FOX 35 is the place to be with the NFL on FOX featuring the San Francisco 49ers; MLB on FOX featuring the San Francisco Giants plus an additional 25 Giants games & NHL ON FOX Featuring the San Jose Sharks.
<% else %>
<%= ProgramstrResult %>
<% End If %>


<h3>Central Coast Sports:</h3>

<p><strong>Football</strong>
<UL>
<li><a href="49ers.htm" target="_top">SanFrancisco 49ers</a>
<li><a href="raiders.htm" target="_top">Oakland Raiders</a>
<li><a href="bears.htm" target="_top">California Bears</a>
</UL></p>
 
<p><strong>Basketball</strong>
<ul>
<li><a href="goldenstate.htm" target="_top">Golden State Warriors</a></ul>
</p>

<p><strong>Baseball</strong>
<ul>
<li><a href="giants.htm" target="_top">San Francisco Giants</a> -- Check out our online <a href="giantssched.asp">Giants schedule.</a>
<li><a href="As.htm" target="_top">Oakland Athletics</a>
</ul>
</p>

<p><strong>Soccer</strong>
<ul>
<li><a href="clash.htm" target="_top">San Jose Clash</a></ul>
</p>

<p><strong><a href="other.htm" target="_top">Other Sports</a></strong></p>

<br><br><br><br><br>
<!--#include file="../footer.inc" -->
</td>

 </tr></table>


</BODY>
</HTML>
