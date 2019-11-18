<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KION Weather</TITLE>

<!--#include file="../style2.inc" -->

</HEAD>

<BODY BGCOLOR="#FFFFFF" BACKGROUND="../images/background3.gif">
<TABLE WIDTH=400><TR><TD CLASS="a">
<IMG SRC="../images/weather.GIF" WIDTH=400 HEIGHT=54 BORDER=0>

<center><p><a href="doppler.asp">Doppler Radar Map</a></p>
<h6><A HREF="noaasalinasstation.htm" target="_top">NOAA SalinasWeather Station</A> | <a href="noaamontereystation.htm" target="_top">NOAA Monterey Weather Station</a><br><a href="geos9image.htm" target="_top">GOES-9 Western U.S. Satellite Image</a></h6></center>

<% if right(time(), 2) = "AM" then %>
     <a href="../news/bios/barry.asp">
     <img src="../images/personel/smallbarry.jpg" width=50 height=75 alt="" border=0 ALIGN="LEFT"></A>
     <STRONG>Forecast by <a href="../news/bios/barry.asp">Barry Brown</A></STRONG><br>
     Eye On This Morning Anchor/Meteorologist<BR>
     Weekdays 6am-9am
     <br><br>
<% else %>
     <img src="../images/personel/smallgary.jpg" width=54 height=75 alt="" border="0" ALIGN="LEFT">
     <STRONG>Forecast by Gary Butterworth</STRONG><BR>
     Eyewitness Meteorologist<BR>
     Weekdays at 5pm, 6pm & 11pm
<% end if %>
<br clear="all"> 
<P><%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  forecast = Server.MapPath ("/kionkcbaupdate/text") & "\forecast.txt"
  Set InStream= FileObject.OpenTextFile (forecast, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & "<BR>"
  Wend
  Set Instream=Nothing
%></P>
<UL>
<LI>Current weather conditions (temperature, wind, visibility, dewpoint, relative humidity and barometric pressure) from the <A HREF="noaasalinasstation.htm" target="_top">NOAA Salinas Weather Station</A>
<LI>Current weather conditions from the <a href="noaamontereystation.htm" target="_top">NOAA Monterey Weather Station</a>
<LI>Most recent <a href="geos9image.htm" target="_top">GOES-9 Western U.S. Satellite Image</a>. You can click on the image for a "closeup" view. (Be aware, this is a large -- about 200k image. We are working on a solution to provide you with a lighter weight version).
<LI>Fully animated GOES-9 <a href="satelliteloop.htm" target="_top">Satellite Loop</a>. (Also a large image).
</UL>
<P>
Be sure to watch KION Eyewitness News at 6am, Noon, 5, 6 and 11pm for our complete weather coverage.
<BR><BR>
<!--#include file="../footer.inc" -->
</TD>
</TR>
</TABLE>
</BODY>
</HTML>
