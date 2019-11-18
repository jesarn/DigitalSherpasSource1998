<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KION Update</TITLE>
<!--#include file="../style1.inc"-->
</HEAD>

<BODY BGCOLOR="#003071" BACKGROUND="../images/kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
<h1>KION News Headline Update</h1>

Headlines last updated: <!--#include file="../../kionkcbaupdate/text/kionnewsupdatetime.txt"--><br>By: <!--#include file="../../kionkcbaupdate/text/kionnewsupdatedby.txt"--><br><br>


<BR><BR>Current Headlines:
<br>

<FORM METHOD=POST ACTION="newsud.asp">
<TABLE>

<TR>
<td bgcolor="#254525">Link</td>
<td bgcolor="#254525">Story</td></TR>
<TR>
<TD bgcolor="#808000"><textarea name="link1" cols="20" rows="1" wrap="VIRTUAL"><!--#include virtual="\kionkcbaupdate\text\newslink1.txt"--></textarea></TD>
<TD bgcolor="#808000"><textarea name="story1" cols="50" rows="3" wrap="VIRTUAL"><!--#include virtual="\kionkcbaupdate\text\newsstory1.txt"--></textarea></TD>
</TR>

<TR>
<TD bgcolor="#808000"><textarea name="link2" cols="20" rows="1" wrap="VIRTUAL"><!--#include virtual="\kionkcbaupdate\text\newslink2.txt"--></textarea></TD>
<TD bgcolor="#808000"><textarea name="story2" cols="50" rows="3" wrap="VIRTUAL"><!--#include virtual="\kionkcbaupdate\text\newsstory2.txt"--></textarea></TD>
</TR>

<TR>
<td bgcolor="#254525">Web link</td>
<td bgcolor="#254525">Description</td></TR>

<TR>
<TD bgcolor="#808000"><textarea name="weblink" cols="20" rows="3" wrap="VIRTUAL"><!--#include virtual="\kionkcbaupdate\text\weblink.txt"--></textarea></TD>
<TD bgcolor="#808000"><textarea name="description" cols="50" rows="3" wrap="VIRTUAL"><!--#include virtual="\kionkcbaupdate\text\weblinkdescription.txt"--></textarea></TD>
</TR>
</table>
<br><br>

Updated By:<br>
 <TEXTAREA ROWS="2" COLS="50" NAME="updatedby">
</TEXTAREA><BR><br>

<P><INPUT TYPE=SUBMIT VALUE="Submit Form">
<br>
<font size="+1" color="Red">Remember, One click does the trick with the submit button!</font>
<br>
<INPUT TYPE=RESET VALUE="Reset Form">

</form>

<BR><BR>
<A HREF="default.html">Return to the main update page</A>
<br><br>
<A HREF="../" target="_top">KION Home</A><BR>


</BODY>
</HTML>
