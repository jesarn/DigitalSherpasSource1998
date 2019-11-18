
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KCBA</TITLE>
<!--#include file="../style.inc"-->
</HEAD>

<BODY TEXT="#000000" VLINK="#1C0058" LINK="#005B91" ALINK="#FF0000" BGCOLOR="#FFFFFF">
<TABLE BORDER=0 ALIGN="LEFT" WIDTH="100%">

<TR><TD class=a>
<IMG SRC="../images/programming.GIF" WIDTH=284 HEIGHT=32 BORDER=0 alt=""><BR><BR>
<strong>Tonight:</strong><br>

<% ' begin smart metadata
 if date = "4/26/98" then %>
	<TABLE WIDTH=100%>
	<!-- Program 1 -->
	<TR><td align="LEFT">
	<TABLE ALIGN="LEFT"><TR><TD class=a>
	
	<img src="http://207.66.185.129/kcba/images/simpsons.jpg" ALIGN="left" HSPACE="3">
	<STRONG>Simpsons</STRONG> @ 8:00<BR>
	<br><br>
	U2 and Steve Martin Are Guest Voices 
	<br><br>
	Television's longest-running primetime animated series celebrates its 200th episode with guest stars U2 (as themselves) and Steve Martin (as Trash Commissioner Ray Patterson) when Homer takes on the dirty job of cleaning up Springfield on THE SIMPSONS 200th episode, "Trash of the Titans" Sunday, April 26 (8:00-8:30 PM ET/PT) on FOX. (SI-909) (TV-PG) 
	<br><br>
	Voice Cast: Dan Castellaneta as Homer Simpson; Julie Kavner as Marge Simpson; Nancy Cartwright as Bart Simpson; Yeardley Smith as Lisa Simpson; Hank Azaria as Cletus; and Harry Shearer as Ned Flanders. 
	<br><br>
	Guest Cast: Steve Martin as Ray Patterson, U2 as themselves, Marcia Wallace as Mrs. Krabappel, Pamela Hayden as Milhouse and Tress NacNeille as the female exec. 
	<br><br>
	</TD></TR></TABLE>
	
	
	</TD></TR>
	
	
	<!-- Program 2 -->
	
	<TR><td align="RIGHT">
	<TABLE ALIGN="RIGHT"><TR><TD class=a>
	
	<img src="http://207.66.185.129/kcba/images/king.jpg" ALIGN="right" HSPACE="3">
	<STRONG>King of the Hill</STRONG> @ 8:30<BR>
	
	
	When Hank must hire an accessories associate at Strickland Propane, he 
	takes the resource out of human resources. After interviewing numerous 
	candidates, Hank hires an All-American guy who turns out to be a slacker 
	and former drug addict. But when Hank tries to give him the boot, he 
	discovers drug addiction is a disability and it's illegal to fire the 
	disabled. Hank must venture into the world of bureaucratic nonsense to 
	save the company -- and the day -- on the KING OF THE HILL episode 
	&#34;Junkie Business&#34; 
	
	<BR><BR>
	
	Voice Cast: Mike Judge as Hank Hill, Boomhauer, Monsignor Martinez and 
	Jason Adderly; Kathy Najimy as Peggy Hill; Pamela Segall as Bobby Hill; 
	Brittany Murphy as Luanne, Debbie and Melinda; Johnny Hardwick as Dale 
	and Velma Throckmorton; and Stephen Root as Bill and Buck Strickland. 
	
	<BR><BR>
	
	Guest Voice Cast: David Herman as Anthony Page and Glenn Berger; Bertila 
	Damas as Maria Montalvo; Toby Huss as Joe Jack and Brent Forrester as 
	Leon Petard. 
	<br><br>
	</TD></TR></TABLE>
	</TD></TR>
	
	
	<!-- Program 3 -->
	
	<TR><td align="LEFT">
	<TABLE ALIGN="LEFT"><TR><TD class=a>
	
	<img src="http://207.66.185.129/kcba/images/x.jpg" ALIGN="left" HSPACE="3">
	<STRONG>The X-Files</STRONG> @ 9:00<BR>
	
	
	The unexplained death of a handicapped young girl prompts a priest to 
	ask Scully for her help, but her investigation leads her to a mystery 
	she's afraid to understand on  &#34;All Souls&#34; <BR><BR>
	
	Cast: David Duchovny as Agent Fox Mulder, Gillian Anderson as Agent Dana 
	Scully and Mitch Pileggi as Assistant Director Skinner. 
	<BR><BR>
	Guest Cast: Arnie Walters as Father McCue, Patti Allan as Mrs. Kernoff, 
	Eric Keenleyside as Lance Kernof, Emily Perkins as Dara/Paula, Jody 
	Racicot Father Gregory, Lorraine Landry as Vicki Belon, Glenn Morshower 
	as Aaron Starkey, Lauren Diewold as Emily, Bob Wilde as George Vincent 
	Dyer and Tim O'Halloran as the Sergeant. 
	</TD></TR></TABLE>
	</TD></TR>
	</Table>
<% ' End smart Metadata %>
<% Else  %>
	<TABLE WIDTH=100%>
	<!-- Program 1 -->
	<% showlink = "-DB=kcbaprogramming.fp3&-Format=feature1.htm&id=prime1&-SortField=sort_field&date=" & date() & "&-Max=50&-Find"
	Set HttpObj = Server.CreateObject("AspHTTP.Conn")
	HttpObj.Url = "http://207.66.185.129/kcba/FMPro?"
	HttpObj.PostData = showlink
	HttpObj.TimeOut = 30
	HttpObj.RequestMethod = "POST"
	ProgramstrResult = HttpObj.GetURL 
	
	errormessagepos = InStr(UCase(ProgramstrResult),  "<HTML>")
	if errormessagepos then %>
	
	<% else %>
	<TR><td align="LEFT">
	<%= ProgramstrResult %>
	</TD></TR>
	<% End If %>
	
	<!-- Program 2 -->
	<% showlink = "-DB=kcbaprogramming.fp3&-Format=feature2.htm&id=prime2&date=" & date() & "&-SortField=sort_order&-Max=50&-Find"
	Set HttpObj = Server.CreateObject("AspHTTP.Conn")
	HttpObj.Url = "http://207.66.185.129/kcba/FMPro?"
	HttpObj.PostData = showlink
	HttpObj.TimeOut = 30
	HttpObj.RequestMethod = "POST"
	ProgramstrResult = HttpObj.GetURL 
	
	errormessagepos = InStr(UCase(ProgramstrResult),  "<HTML>")
	if errormessagepos then %>
	
	<% else %>
	<TR><td align="RIGHT">
	<%= ProgramstrResult %>
	</TD></TR>
	<% End If %>
	
	<!-- Program 3 -->
	<% showlink = "-DB=kcbaprogramming.fp3&-Format=feature3.htm&id=prime3&-SortField=sort_order&date=" & date() & "&-Max=50&-Find"
	Set HttpObj = Server.CreateObject("AspHTTP.Conn")
	HttpObj.Url = "http://207.66.185.129/kcba/FMPro?"
	HttpObj.PostData = showlink
	HttpObj.TimeOut = 30
	HttpObj.RequestMethod = "POST"
	ProgramstrResult = HttpObj.GetURL 
	
	errormessagepos = InStr(UCase(ProgramstrResult),  "<HTML>")
	if errormessagepos then %>
	
	<% else %>
	<TR><td align="LEFT">
	<%= ProgramstrResult %>
	</TD></TR>
	<% End If %>
	</Table>
<% End If %>
<br><br>

<center><p><strong>What's on Tonight</strong></p></center>
<% showlink = "-DB=kcbaprogramming.fp3&-Format=programming.htm&id=prime&date=" & date() & "&-SortField=sort_field&-Max=50&-Find"
Set HttpObj = Server.CreateObject("AspHTTP.Conn")
HttpObj.Url = "http://207.66.185.129/kcba/FMPro?"
HttpObj.PostData = showlink
HttpObj.TimeOut = 10
HttpObj.RequestMethod = "POST"
ProgramstrResult = HttpObj.GetURL %>

<%= ProgramstrResult %>

<h3><a href="programming.asp">Complete Listing of Today's Programming</a></h3>
<br><br>
<center><h3>Weeknights Be a Member<br>of the KCBA Comedy Club!</h3>
<img src="../images/club_l.jpg" width=450 height=181 alt="" border="0"><br><br>
<em>KCBA is not responsible for belly aches caused by excessive laughter.</em><br></center>


<tr><td><br><br><br><br><!--#include file="../footer.inc"--></td></tr>
</TABLE>
</BODY>
</HTML>
