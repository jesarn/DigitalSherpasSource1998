
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>Weather</TITLE>
</HEAD>

<BODY BGCOLOR="#180054" BGPROPERTIES="FIXED" TEXT="White" VLINK="#D2D2D2" LINK="#FFD711" BACKGROUND="images/foxlights.jpg">

<CENTER><A HREF="main.asp" TARGET="main"><IMG SRC="images/kcbalogo_sm.GIF" WIDTH=76 HEIGHT=64 BORDER=0></A>
<!-- Height Spacer --><BR><IMG SRC="images/invisipic1.gif" WIDTH=1 HEIGHT=5 BORDER=0><BR>
<applet
 /   code=headline.class
    width=125 height=150 >
	<param name=filename value="weather.txt">
	<param name=image value="images/wc.gif">
	<param name=typespeed value=5>
	<param name=direction value=2>
	<param name=x value=10>
    <param name=y value=20>
	<param name=forered value=255>
	<param name=foregreen value=255>
	<param name=foreblue value=255>
	<param name=titlered value=255>
	<param name=titlegreen value=215>
	<param name=titleblue value=17>
	<param name=backred value=0>
	<param name=backgreen value=120>
	<param name=backblue value=192>
   	<param name=outputwidth value=125>
	<param name=outputheight value=125>
    <param name=step value=1>
	<param name=sleeptime value=5000>
	<param name=fontname value=helVEtica>
	<param name=fontsize value=12>
	<param name=url value=http://206.159.0.73/weather>
	<param name=target value=new>
	<param name=typespeed value=5>
</applet></CENTER>
<TABLE BORDER=0>
<TR><TD class=b ALIGN=CENTER VALIGN=TOP WIDTH=41>
<!-- get day1 -->
<%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  day1 = Server.MapPath ("/kionkcbaupdate/text") & "\day1.txt"
  Set InStream= FileObject.OpenTextFile (day1, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%>

<!-- Get Icon1 -->
<IMG SRC="images/weather/<%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  icon1 = Server.MapPath ("/kionkcbaupdate/text") & "\icon1.txt"
  Set InStream= FileObject.OpenTextFile (icon1, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%>.gif"  ALT="<%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  icon1 = Server.MapPath ("/kionkcbaupdate/text") & "\icon1.txt"
  Set InStream= FileObject.OpenTextFile (icon1, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%>" WIDTH=30 HEIGHT=30><BR>

<!-- Get Temp1 -->
<%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  temp1 = Server.MapPath ("/kionkcbaupdate/text") & "\temp1.txt"
  Set InStream= FileObject.OpenTextFile (temp1, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%>
</TD>
<TD class=b ALIGN=CENTER VALIGN=TOP WIDTH=41>
<!-- Get Day 2 -->
<%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  day2 = Server.MapPath ("/kionkcbaupdate/text") & "\day2.txt"
  Set InStream= FileObject.OpenTextFile (day2, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%>

<!-- Get Icon 2-->
<IMG SRC="images/weather/<%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  icon2 = Server.MapPath ("/kionkcbaupdate/text") & "\icon2.txt"
  Set InStream= FileObject.OpenTextFile (icon2, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%>.gif"  ALT="<%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  icon2 = Server.MapPath ("/kionkcbaupdate/text") & "\icon2.txt"
  Set InStream= FileObject.OpenTextFile (icon2, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%>" WIDTH=30 HEIGHT=30><BR>

<!-- Get Temp 2 -->
<%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  temp2 = Server.MapPath ("/kionkcbaupdate/text") & "\temp2.txt"
  Set InStream= FileObject.OpenTextFile (temp2, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%>
</TD>
<TD class=b ALIGN=CENTER VALIGN=TOP WIDTH=41>
<!-- Get Day 3 -->
<%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  day3 = Server.MapPath ("/kionkcbaupdate/text") & "\day3.txt"
  Set InStream= FileObject.OpenTextFile (day3, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%><BR>
<!-- Get Icon 3 -->
<IMG SRC="images/weather/<%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  icon3 = Server.MapPath ("/kionkcbaupdate/text") & "\icon3.txt"
  Set InStream= FileObject.OpenTextFile (icon3, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%>.gif"  ALT="<%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  icon3 = Server.MapPath ("/kionkcbaupdate/text") & "\icon3.txt"
  Set InStream= FileObject.OpenTextFile (icon3, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%>" WIDTH=30 HEIGHT=30><BR>

<!-- Get Temp 3 -->
<%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  temp3 = Server.MapPath ("/kionkcbaupdate/text") & "\temp3.txt"
  Set InStream= FileObject.OpenTextFile (temp3, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%>
</TD>
</TR>
<TR><TD class=b COLSPAN=3><FONT SIZE="-1"><A HREF="weather/main.asp" TARGET="main"><CENTER>Complete Weather
</CENTER></FONT></A></TD></TR></TABLE>

</BODY>
</HTML>
