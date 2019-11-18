<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KION Update</TITLE>
</HEAD>
<!--#include file="../style1.inc"-->
<BODY BGCOLOR="#003071" BACKGROUND="../images/kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
<h1>KION Viewer Poll Update/Status</h1>



<H3>Current Results:</H3>
<!--#include virtual="\kionkcbaupdate\text\polloption1.txt"--> = 
<!--#include virtual="\kionkcbaupdate\text\pollresult1.txt"--> <BR>
<!--#include virtual="\kionkcbaupdate\text\polloption2.txt"--> = 
<!--#include virtual="\kionkcbaupdate\text\pollresult2.txt"--> <BR>
<!--#include virtual="\kionkcbaupdate\text\polloption3.txt"--> = 
<!--#include virtual="\kionkcbaupdate\text\pollresult3.txt"--> <BR>
<FORM METHOD=POST ACTION="pollreset.asp">
<INPUT TYPE=SUBMIT VALUE="Reset Voting Results">
</Form>
<HR>
<BR><B>Current Viewer Poll:</B>
<br>
<br><br>
<FORM METHOD=POST ACTION="pollud.asp">
 <P><TABLE>
<TR><td bgcolor="#254525">Question</td><TD bgcolor="#808000"><textarea name="question" cols="50" rows="3" wrap="VIRTUAL"><!--#include virtual="\kionkcbaupdate\text\pollquestion.txt"--></textarea></TD></TR>
<TR><td bgcolor="#254525">Answer 1</td><TD bgcolor="#808000"><textarea name="option1" cols="50" rows="3" wrap="VIRTUAL"><!--#include virtual="\kionkcbaupdate\text\polloption1.txt"--></textarea></TD></TR>
<TR><td bgcolor="#254525">Answer 2</td><TD bgcolor="#808000"><textarea name="option2" cols="50" rows="3" wrap="VIRTUAL"><!--#include virtual="\kionkcbaupdate\text\polloption2.txt"--></textarea></TD></TR>
<TR><td bgcolor="#254525">Answer 3<BR><EM>(optional)</EM></td><TD bgcolor="#808000"><textarea name="option3" cols="50" rows="3" wrap="VIRTUAL"><!--#include virtual="\kionkcbaupdate\text\polloption3.txt"--></textarea></TD></TR>
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
