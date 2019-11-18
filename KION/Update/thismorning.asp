<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KION Update</TITLE>
<!--#include file="../style1.inc"-->
</HEAD>

<BODY BGCOLOR="#003071" BACKGROUND="../images/kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
<h1>KION Eye on This Morning Update</h1><BR><BR>


<h2>Feature & Guest Star:</h2>

<TABLE>

<TR>
<td class=a bgcolor="#254525">Guest Star(s)</td>
<td class=a bgcolor="#254525">Feature</td></TR>
<TR>
<td class=a bgcolor="#808000"><%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  star = Server.MapPath ("/kionkcbaupdate/text") & "\thismorningstar.txt"
  Set InStream= FileObject.OpenTextFile (star, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & "<BR>"
  Wend
  Set Instream=Nothing
%></TD>
<td class=a bgcolor="#808000"><%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  feature = Server.MapPath ("/kionkcbaupdate/text") & "\thismorningfeatures.txt"
  Set InStream= FileObject.OpenTextFile (feature, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & "<BR>"
  Wend
  Set Instream=Nothing
%></TD>
</TR>

</table><br><br>
<h2>Replace With:</h2>
<FORM METHOD=POST ACTION="thismorningud.asp">
 <P><TABLE>


<tr>
<td class=a bgcolor="#254525">Date</td>
<td class=a bgcolor="#254525">Guest Star(s)</td>
</tr>
<tr>
<td class=a bgcolor="#808000"><textarea name="date" cols="10" rows="2" wrap="VIRTUAL"></textarea></td>
<td class=a bgcolor="#808000"><textarea name="star" cols="20" rows="3" wrap="VIRTUAL"></textarea></td>
</tr>

<TR>
<td class=a bgcolor="#254525">Category</td>
<td class=a bgcolor="#254525">Discription</td></TR>
<TR>
<td class=a bgcolor="#808000"><textarea name="category" cols="10" rows="2" wrap="VIRTUAL"></textarea></TD>
<td class=a bgcolor="#808000"><textarea name="feature" cols="40" rows="3" wrap="VIRTUAL"></textarea></TD>
</TR>
<tr>
<td class=a bgcolor="#254525">Book Notes</td>
<td class=a bgcolor="#254525">Local Appearances</td>
</tr>
<tr>
<td class=a bgcolor="#808000"><textarea name="books" cols="40" rows="3" wrap="VIRTUAL"></textarea></td>
<td class=a bgcolor="#808000"><textarea name="appearances" cols="40" rows="3" wrap="VIRTUAL"></textarea></td>
</tr>

</table>
<P><INPUT TYPE=SUBMIT VALUE="Submit Form"><INPUT TYPE=RESET VALUE="Reset Form">

</form>

<BR><BR>
<A HREF="default.html">Return to the main update page</A>
<br><br>
<A HREF="../" target="_top">KION Home</A><BR>


</BODY>
</HTML>
