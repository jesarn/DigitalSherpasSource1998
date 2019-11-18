<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>Eye On This Morning</TITLE>
<!--#include file="../style2.inc" -->
</HEAD>

<BODY BGCOLOR="#FFFFFF" BACKGROUND="../images/background3.gif">

<TABLE CELLSPACING=0 CELLPADDING=0 BORDER=0  WIDTH=400><TR><TD class="a">
<IMG SRC="../images/eyeonthismorning2.GIF" WIDTH=350 HEIGHT=75 BORDER=0><BR>
<BR>

<CENTER><H2>KION Eye On This Morning:<BR>
A Real Eye Opener!</H2></CENTER>


<CENTER>
<TABLE CELLSPACING=0 CELLPADDING=10 BORDER=0>
	<TR>
		<TD class=a COLSPAN=3 ALIGN="CENTER">Featuring:</TD>
	</TR>
	<TR>
		<TD class=a><STRONG>Barry Brown</STRONG></TD><TD class=a><STRONG>&</STRONG></TD><TD class=a><STRONG>Colleen Odegaard</STRONG></TD>
	</TR>
</TABLE>
</CENTER>
 
<!-- <CENTER>
<TABLE CELLSPACING=0 CELLPADDING=5 BORDER=0>
	<TR><TD class=a ALIGN="CENTER" COLSPAN=4>With:</TD></TR>
	<TR>
		<TD><A HREF="grocery.asp"><img src="../images/grocery.gif" width=100 height=75 alt="" border=0></A></TD>
		<TD><A HREF="green.asp"><IMG SRC="../images/greenthumbs.GIF" WIDTH=97 HEIGHT=75 BORDER=0 alt=""></A></TD>
		<TD><A HREF="family.asp"><IMG SRC="../images/familytalk.GIF" WIDTH=51 HEIGHT=75 BORDER=0 alt=""></A></TD>
		<TD><A HREF="pets.asp"><IMG SRC="../images/petcorner.GIF" WIDTH=73 HEIGHT=75 BORDER=0 alt=""></A></TD>
	</TR>
</TABLE>
</CENTER> -->

<%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  starfile = Server.MapPath ("/kionkcbaupdate/text") & "\thismorningstar.txt"
  Set InStream= FileObject.OpenTextFile (starfile, 1, False, False)
  star = InStream.readline
  Set Instream=Nothing
  if star <> "" then
%>
<BR><BR><STRONG><CENTER>Today's show is guest starring:<BR><%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  star = Server.MapPath ("/kionkcbaupdate/text") & "\thismorningstar.txt"
  Set InStream= FileObject.OpenTextFile (star, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & "<BR>"
  Wend
  Set Instream=Nothing
%></CENTER></STRONG>
<% End If %>

<%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  featurefile = Server.MapPath ("/kionkcbaupdate/text") & "\thismorningfeatures.txt"
  Set InStream= FileObject.OpenTextFile (featurefile, 1, False, False)
  feature = instream.readline
  Set Instream=Nothing
  if feature <> "" then
%><BR><BR>
<STRONG><%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  feature = Server.MapPath ("/kionkcbaupdate/text") & "\thismorningfeatures.txt"
  Set InStream= FileObject.OpenTextFile (feature, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & "<BR>"
  Wend
  Set Instream=Nothing
%></STRONG>
<% End If %>


<P>KION Eye On This Morning is local morning news, weather and traffic for California's Central Coast presented in a unique and innovative format and delivered by the supremely professional and personality packed hosts, Barry Brown and Colleen Odegaard. 

<P>The emphasis of KION Eye On This Morning is on getting you the news, weather and traffic information you need to get you on your way and see you through the rest of your day... But, in addition to the information you need, Eye On This Morning adds a heaping helping of fun to the same old local morning show mix you see on other stations. 

<P>You'll see live, daily interviews with local newsmakers; live, daily on-location reports from intrepid Eye On This Morning reporter Robert Santos; live cooking segments with celebrated chefs from all over the Central Coast as well as live music, comedians and interviews with famous celebrities. 

<P>KION Eye On This Morning also gives you an innovation no other local morning show can offer,  live "Eye On" cameras located high above the three major cities in our area. Eye On Monterey, Eye On Salinas and Eye On Santa Cruz cameras give you bird's eye views of the beauty of our area and what the weather is like outside, live while you watch, so you know what to expect when you get where you're going! 

<P>KION Eye On This Morning is everything you're looking for in a local Morning Show...  News, Weather, Traffic and Fun...  All wrapped up in one easy to look at, informative and highly entertaining package. 

<P>Join Colleen Odegaard and Barry Brown weekday mornings from 6:00am to 9:00am and see for yourself why KION Eye On This Morning is the most talked about local Morning show on California's Central Coast. 


<BR><BR>
<!--#include file="../footer.inc" -->

</TD></TR>
</TABLE>



</BODY>
</HTML>
