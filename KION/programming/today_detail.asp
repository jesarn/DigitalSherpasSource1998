<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KION Spring 1998 Program Schedule</TITLE>

<!--#include file="../style2.inc" -->

</HEAD>

<BODY BGCOLOR="#FFFFFF" BACKGROUND="../images/background3.gif">
<TABLE WIDTH=400><TR><TD class=a>
<IMG SRC="../images/programming.GIF" WIDTH=400 HEIGHT=54 BORDER=0>
<BR><BR>

<% if date = "4/26/98" then %>
	<P><center><A HREF="programming.asp"><H2>Today's programming on KION.</H2></A></center><BR>
	<center><h3>Today's featured program:<br>60 Minutes</h3></center><br>
	<CENTER><IMG SRC="http://207.66.185.129/kion/images/60min.gif" BORDER=0 HSPACE=4 VSPACE=4></CENTER>
	<h3>Tonight at 7:00 PM</h3>
	<br><br>
	   
	<strong> I.G.</strong><br>
	While thousands of patients, many of them children, are wondering why a drug their lives depend on mysteriously became so scarce and expensive, officials are questioning whether the shortage is real or a cruel ploy by someone in the supply chain to increase profits. 60 Minutes investigates the shortage in a report airing this Sunday.
	<br><br>
	The shortage of immune globulin (IG), a drug made from blood plasma that fights off potentially fatal illnesses in people whose immune systems cannot fight them on their own, has Dr. Arthur Caplan incensed. "I think there are vultures out there in the blood supply....people who are making money off the lives of American kids," says Caplan, who heads the government's Advisory Committee on Blood Safety and Availability. "It is beyond my understanding that we haven't had Congressional outrage, and indeed, international outrage," he tells co-editor Mike Wallace. 
	 <br><br>
	<strong>The Piano Man</strong><br>
	Even though the last of his mega-hit records came out years ago and he says himself he is just a "schnook" from Levittown, Long Island, Billy Joel still wows his fans in sold-out arenas. Co-editor Steve Kroft reports.
	 <br><br>
	 <strong>Turning Around Denny's</strong><br>
	After it settled discrimination lawsuits to the tune of $46 million, Denny's Restaurants began to train its managers and staff how not to discriminate. 60 Minutes takes viewers into this special training for the first time in a report by co-editor Lesley Stahl.
	<br><br>
	
<% Else  %>
	<% showlink = "-DB=kionprogramming.fp3&-Format=today_detail.htm&id=prime&date=" & date() & "&-Max=50&-Find"
	Set HttpObj = Server.CreateObject("AspHTTP.Conn")
	HttpObj.Url = "http://207.66.185.129/kion/FMPro?"
	HttpObj.PostData = showlink
	HttpObj.TimeOut = 30
	HttpObj.RequestMethod = "POST"
	ProgramstrResult = HttpObj.GetURL 
	
	errormessagepos = InStr(UCase(ProgramstrResult),  "<HTML>")
	if errormessagepos then %>
	We apologize for the inconvenience, we are unable to complete your request. Please try again later.
	<br><br>
	<A HREF="today_detail.asp">Reload this page.</A>
	<!-- db -->
	<% elseif ProgramstrResult = "" then %>
	We apologize for the inconvenience, we are unable to complete your request. Please try again later.
	<br><br>
	<A HREF="today_detail.asp">Reload this page.</A>
	<!-- db timeout -->
	<% else %>
	
	<%= ProgramstrResult %>
	
	<% End If %>
<% End If %>

<BR><BR>
<!--#include file="../footer.inc" -->

</TD></TR>
</TABLE>

</BODY>
</HTML>
