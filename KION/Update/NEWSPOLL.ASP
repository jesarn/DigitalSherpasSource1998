<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KION Update</TITLE>
</HEAD>
<!--#include file="../style1.inc"-->
<BODY BGCOLOR="#003071" BACKGROUND="../images/kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
<h1>KION Viewer Poll Update/Status</h1>



<H3>Current Results:</H3>
<!--#include virtual="\kionkcbaupdate\text\newspolloption1.txt"--> = 
<!--#include virtual="\kionkcbaupdate\text\newspollresult1.txt"--> <BR>
<!--#include virtual="\kionkcbaupdate\text\newspolloption2.txt"--> = 
<!--#include virtual="\kionkcbaupdate\text\newspollresult2.txt"--> <BR>
<!--#include virtual="\kionkcbaupdate\text\newspolloption3.txt"--> = 
<!--#include virtual="\kionkcbaupdate\text\newspollresult3.txt"--> <BR>
<FORM METHOD=POST ACTION="newspollreset.asp">
<INPUT TYPE=SUBMIT VALUE="Reset Voting Results">
</Form>
<HR>
<BR><B>Current Viewer Poll:</B>
<br>
<br><br>
<FORM METHOD=POST ACTION="newspollud.asp">
 <P><TABLE>
<TR><td bgcolor="#254525">Answer 1</td><TD bgcolor="#808000"><textarea name="option1" cols="50" rows="3" wrap="VIRTUAL"><!--#include virtual="\kionkcbaupdate\text\newspolloption1.txt"--></textarea></TD></TR>
<TR><td bgcolor="#254525">Answer 1 Synopsis</td><TD bgcolor="#808000"><textarea name="optiontext1" cols="50" rows="3" wrap="VIRTUAL"><!--#include virtual="\kionkcbaupdate\text\newspolloptiontext1.txt"--></textarea></TD></TR>
<TR><td bgcolor="#254525">Answer 2</td><TD bgcolor="#808000"><textarea name="option2" cols="50" rows="3" wrap="VIRTUAL"><!--#include virtual="\kionkcbaupdate\text\newspolloption2.txt"--></textarea></TD></TR>
<TR><td bgcolor="#254525">Answer 2 Synopsis</td><TD bgcolor="#808000"><textarea name="optiontext2" cols="50" rows="3" wrap="VIRTUAL"><!--#include virtual="\kionkcbaupdate\text\newspolloptiontext2.txt"--></textarea></TD></TR>
<TR><td bgcolor="#254525">Answer 3<BR><EM>(optional)</EM></td><TD bgcolor="#808000"><textarea name="option3" cols="50" rows="3" wrap="VIRTUAL"><!--#include virtual="\kionkcbaupdate\text\newspolloption3.txt"--></textarea></TD></TR>
<TR><td bgcolor="#254525">Answer 3 Synopsis</td><TD bgcolor="#808000"><textarea name="optiontext3" cols="50" rows="3" wrap="VIRTUAL"><!--#include virtual="\kionkcbaupdate\text\newspolloptiontext3.txt"--></textarea></TD></TR>
</table>
<P><INPUT TYPE=SUBMIT VALUE="Submit Form"><INPUT TYPE=RESET VALUE="Reset Form">
</form>

<BR><BR>
<EM>Note: If answer 3 is left blank, then it will not be included in the poll.<BR>
Remember to reset the results at the top of the screen before updating the questions!</EM>

<BR><BR>
<A HREF="default.html">Return to the main update page</A>
<br><br>
<A HREF="../" target="_top">KION Home</A><BR>


</BODY>
</HTML>
