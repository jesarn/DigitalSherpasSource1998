<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KION Update</TITLE>
<!--#include file="../style1.inc"-->
</HEAD>

<BODY BGCOLOR="#003071" BACKGROUND="../images/kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
<h1>KION News Script Post</h1>

News Script last updated: <!--#include file="../../kionkcbaupdate/text/kionscriptupdatetime.txt"--><br>By: <!--#include file="../../kionkcbaupdate/text/kionscriptupdatedby.txt"--><br><br>


<FORM METHOD=POST ACTION="newspageud.asp">

What show are you updating?
<select name="showname">
   <option value="blank">Select a show.
   <option value="6aa">6 AM Part A
   <option value="6ab">6 AM Part B
   <option value="7aa">7 AM Part A
   <option value="7ab">7 AM Part B
   <option value="noon">Noon
   <option value="5p">5 PM
   <option value="6pa">6 PM Part A
   <option value="6pb">6 PM Part B
   <option value="11p">11 PM
   </select>
<br><br>
What date did the show air (YYMMDD)?
<input type="Text" name="showdate" value="970131" size="6" maxlength="6">
<br><br>

Is this the most recent news script?<BR>
<input type="Checkbox" name="replace" value="Update"> <EM>Yes</EM>
<br><br>
Paste the HTML text below:<br>
<textarea name="page" cols="50" rows="20" wrap="VIRTUAL"></textarea><br><br>

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
