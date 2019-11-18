
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KCBA</TITLE>
<!--#include file="../style.inc" -->
</HEAD>

<BODY TEXT="#000000" VLINK="#1C0058" LINK="#005B91" ALINK="#FF0000" BGCOLOR="#FFFFFF">
<img src="../images/weather.gif" width=284 height=32 alt="" border="0">
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
<LI>Current weather conditions (temperature, wind, visibility, dewpoint, relative humidity and barometric pressure) from the <A HREF="noaasalinas.htm" target="_top">NOAA SalinasWeather Station</A>
<LI>Current weather conditions from the <A HREF="noaamonterey.htm" target="_top">NOAA Monterey Weather Station</A>
<LI>Most recent GOES-9 <A HREF="satmat.htm" target="_top">Western U.S. Satellite Image</A>. You can click on the image for a "closeup" view.

</UL>



<br><br><br><br><br>
<!--#include file="../footer.inc" -->

</BODY>
</HTML>
