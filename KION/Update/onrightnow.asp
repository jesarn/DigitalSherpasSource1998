<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KION Update</TITLE>
</HEAD>
<!--#include file="../style1.inc"-->
<BODY BGCOLOR="#003071" BACKGROUND="../images/kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
<h1>KION On Right Now Replacement</h1>

<HR>
<BR><B>Current On Right Now Statement:</B><br>
<!--#include file="../onKIONnow.inc"-->
<%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  interrupt = Server.MapPath ("/kionkcbaupdate/text") & "\onrightnow.txt"
  Set InStream= FileObject.OpenTextFile (interrupt, 1, True, False)
  interruptstream = Instream.Readline
  Set Instream=Nothing


if interruptstream <> "" then
  response.write"Source: <font color=""red"">Not from programming database.</font> Automated message is currently being supressed."
else
  response.write"Source: Automated statement from the programming database"
end if
%>
<br>
<br><br>
<FORM METHOD=POST ACTION="onrightnowud.asp">
If you want to replace the database driven message on the homepage, type it below.<br>
To remove your message, simply leave the window below blank and hit the submit button.<br>
<textarea name="onnow" cols="50" rows="3" wrap="VIRTUAL"></textarea>

<P><INPUT TYPE=SUBMIT VALUE="Submit Form"><INPUT TYPE=RESET VALUE="Reset Form">
</form>


<BR><BR>
<A HREF="default.html">Return to the main update page</A>
<br><br>
<A HREF="../" target="_top">KION Home</A><BR>


</BODY>
</HTML>
