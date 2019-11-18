<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KION/KCBA Update</TITLE>
<!--#include file="../style1.inc"-->
</HEAD>


<BODY BGCOLOR="#003071" BACKGROUND="../images/kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
<h1>KION/KCBA Weather Forecast Update</h1>
<FORM METHOD=POST ACTION="forecastud.asp">

<BR><BR>

<p><B>Replace Current Weather Forecast With:</B></p>
 <P><TEXTAREA ROWS="10" COLS="80" NAME="forecast">
<%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  WeatherFile = Server.MapPath ("/kionkcbaupdate/text") & "\forecast.txt"
  Set InStream= FileObject.OpenTextFile (WeatherFile, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & chr(13)

  Wend
  Set Instream=Nothing
%></TEXTAREA><BR>
<BR>
<P><INPUT TYPE=SUBMIT VALUE="Submit Form"><INPUT TYPE=RESET VALUE="Reset Form">

</form>

<BR><BR>
<A HREF="default.html">Return to the main update page</A>
<br><br>
<A HREF="../" target="_top">KION Home</A><BR>


</BODY>
</HTML>
