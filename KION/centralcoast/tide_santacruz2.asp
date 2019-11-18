<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>Eye On The Central Coast</TITLE>

<!--#include file="../style2.inc" -->

</HEAD>

<BODY BGCOLOR="#FFFFFF" BACKGROUND="../images/background3.gif">
<TABLE WIDTH=400><TR><TD class=a>
<IMG SRC="../images/centralcoast2.GIF" WIDTH=400 HEIGHT=54 BORDER=0><BR><BR>

<%
Set HttpObj = Server.CreateObject("AspHTTP.Conn")
HttpObj.FollowRedirects = true
ContentType = "application/x-www-form-urlencoded"
HttpObj.Url = "http://tbone.biol.sc.edu/tide/nph-tideshow.cgi"
HttpObj.PostData = "?site=monterey+harbor"
HttpObj.TimeOut = 10
HttpObj.RequestMethod = "POST"
tide = HttpObj.GetURL

if tide <> "" then
	response.write tide
	
else 
	response.write "<strong>The tide server is too busy, please try again later.</strong><br><br>"
	response.write tide
end if
%><br><br>
<a href="http://tbone.biol.sc.edu/tide/tideshow.cgi?site=Santa+Cruz%2C+California">http://tbone.biol.sc.edu/tide/tideshow.cgi?site=Santa+Cruz%2C+California</a>

<BR><BR>
<!--#include file="../footer.inc" -->

</TD></TR>
</TABLE>

</BODY>
</HTML>
