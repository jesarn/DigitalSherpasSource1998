<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KION/KCBA Update</TITLE>
<!--#include file="../style1.inc"-->
</head>

<BODY BGCOLOR="#003071" BACKGROUND="../images/kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
<h1>KION/KCBA Weather Ticker Update</h1>
<FORM METHOD=POST ACTION="weatherud.asp">

<BR><BR>

<p><strong>To update the Weather Ticker enter text into the field below.  The text format is Header|Body|Link URL.  The pipe [|] character is [shift + \], above the enter key on your keyboard. A line of text entered without a pipe will appear entirely in the red header font.  Paragraphs should be separated by two carriage returns. If you do not change the text in the box, it will not change on the live site.</strong></p>
<p><B>Replace Current Weather Ticker With:</B></p>
 <P><TEXTAREA ROWS="10" COLS="80" NAME="forecast">
<%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  WeatherFile = Server.MapPath ("/") & "\weather.txt"
  Set InStream= FileObject.OpenTextFile (WeatherFile, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & chr(13)

  Wend
  Set Instream=Nothing
%></TEXTAREA><BR>
<br><br><br><br>


      <P><B>Current Temperatures:</B>


<TABLE>

<TR>
<td width="150" bgcolor="#254525">Day of Week</td>
<TD width="151" bgcolor="#808000"><%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  day1 = Server.MapPath ("/kionkcbaupdate/text") & "\day1.txt"
  Set InStream= FileObject.OpenTextFile (day1, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & "<BR>"
  Wend
  Set Instream=Nothing
%>
</TD>
<TD width="151" bgcolor="#808000"><%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  day2 = Server.MapPath ("/kionkcbaupdate/text") & "\day2.txt"
  Set InStream= FileObject.OpenTextFile (day2, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & "<BR>"
  Wend
  Set Instream=Nothing
%>
</TD>
<TD width="151" bgcolor="#808000"><%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  day3 = Server.MapPath ("/kionkcbaupdate/text") & "\day3.txt"
  Set InStream= FileObject.OpenTextFile (day3, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & "<BR>"
  Wend
  Set Instream=Nothing
%>
</TD>
</TR>
<TR>
<td width=150 bgcolor="#254525">Icon</td>
<TD width=151 bgcolor="#808000"><%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  icon1 = Server.MapPath ("/kionkcbaupdate/text") & "\icon1.txt"
  Set InStream= FileObject.OpenTextFile (icon1, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%>
</TD>
<TD width="151" bgcolor="#808000"><%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  icon2 = Server.MapPath ("/kionkcbaupdate/text") & "\icon2.txt"
  Set InStream= FileObject.OpenTextFile (icon2, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%>
</TD>
<TD width="151" bgcolor="#808000"><%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  icon3 = Server.MapPath ("/kionkcbaupdate/text") & "\icon3.txt"
  Set InStream= FileObject.OpenTextFile (icon3, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%>
</TD>
</TR>
<TR>
<td width="150" bgcolor="#254525">Temp (High/Low)</td>
<td width="150" bgcolor="#808000"><%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  temp1 = Server.MapPath ("/kionkcbaupdate/text") & "\temp1.txt"
  Set InStream= FileObject.OpenTextFile (temp1, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & "<BR>"
  Wend
  Set Instream=Nothing
%>
</TD>
<TD width="151" bgcolor="#808000"><%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  temp2 = Server.MapPath ("/kionkcbaupdate/text") & "\temp2.txt"
  Set InStream= FileObject.OpenTextFile (temp2, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & "<BR>"
  Wend
  Set Instream=Nothing
%>
</TD>
<TD width="151" bgcolor="#808000"><%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  temp3 = Server.MapPath ("/kionkcbaupdate/text") & "\temp3.txt"
  Set InStream= FileObject.OpenTextFile (temp3, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & "<BR>"
  Wend
  Set Instream=Nothing
%>
</TD>
</TR>
</TABLE>
<br><br>
<b>Replace Current Temperatures With:</b>
<table>
<tr>
<td width="150" bgcolor="#254525">Day of Week</td>
<TD width="151" bgcolor="#808000"><select name="day1">
<option>MON
<option>TUE
<option>WED
<option>THU
<option>FRI
<option>SAT
<option>SUN
</select></td>

<TD width="151" bgcolor="#808000"><select name="day2">
<option>MON
<option>TUE
<option>WED
<option>THU
<option>FRI
<option>SAT
<option>SUN
</select></td>

<TD width="151" bgcolor="#808000"><select name="day3">
<option>MON
<option>TUE
<option>WED
<option>THU
<option>FRI
<option>SAT
<option>SUN
</select></td></tr>


<tr>
<td width="150" bgcolor="#254525">Icon</td>
<TD width="151" bgcolor="#808000"><select name="icon1">
<option>Sun
<option>Cloudy
<option>Lightning
<option>PartlyCloudy
<option>Rain
<option>Snow
<option>Thunderstorm
</select></td>

<TD width="151" bgcolor="#808000"><select name="icon2">
<option>Sun
<option>Cloudy
<option>Lightning
<option>PartlyCloudy
<option>Rain
<option>Snow
<option>Thunderstorm
</select></td>

<TD width="151" bgcolor="#808000"><select name="icon3">
<option>Sun
<option>Cloudy
<option>Lightning
<option>PartlyCloudy
<option>Rain
<option>Snow
<option>Thunderstorm
</select></td></tr>
<tr>
<td width="150" bgcolor="#254525">Temp (High/Low)</td>
<td width="151" bgcolor="#808000"><INPUT TYPE="TEXT" NAME="temp1" VALUE="" SIZE=5 MAXLENGTH=10></td>
<TD width="151" bgcolor="#808000"><INPUT TYPE="TEXT" NAME="temp2" VALUE="" SIZE=5 MAXLENGTH=10></td>
<TD width="151" bgcolor="#808000"><INPUT TYPE="TEXT" NAME="temp3" VALUE="" SIZE=5 MAXLENGTH=10></td>
</tr>

</TABLE>



<BR><BR><BR>
<p><strong>Did you enter values for the daily conditions above?</strong></p>
<P><INPUT TYPE="Submit" VALUE="  Update the Sites  ">
<INPUT TYPE=RESET VALUE="Reset Form"></P>

</form>
<BR><BR>
<A HREF="default.html">Return to the main update page</A>
<br><br>
<A HREF="../" target="_top">KION Home</A><BR>
<A HREF="http://206.159.0.73" target="_top">KCBA Home</A>
</BODY>
</HTML>
