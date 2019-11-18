
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KCBA</TITLE>
<!--#include file="style2.inc" -->
</HEAD>

<BODY TEXT="#000000" VLINK="#1C0058" LINK="#005B91" ALINK="#FF0000" BGCOLOR="#FFFFFF">	
<TABLE BORDER=0 ALIGN="LEFT" WIDTH="100%">
<TR>
<TD ALIGN="LEFT" VALIGN="TOP" class=a>


<IMG SRC="images/welcome3.gif" BORDER=0>

<% showlink = "-DB=kcbaprogramming.fp3&-Format=feature_front.htm&id=prime1&-SortField=sort_order&date=" & date() & "&-Max=50&-Find"
Set HttpObj = Server.CreateObject("AspHTTP.Conn")
HttpObj.Url = "http://207.66.185.129/kcba/FMPro?"
HttpObj.PostData = showlink
HttpObj.TimeOut = 30
HttpObj.RequestMethod = "POST"
ProgramstrResult = HttpObj.GetURL 

errormessagepos = InStr(UCase(ProgramstrResult),  "<HTML>")
if errormessagepos then %>
<!-- db -->

<% else %>

<table width="200" align="RIGHT" bgcolor="#FFEBD7" class="a"><TR><TD>
<%= ProgramstrResult %>
</TD></TR>
</TABLE>

<% End If %>

<br>
<a href="bookmark.asp">Bookmark</a> this page for local <a href="weather/main.asp">Weather</a>, <a href="news/main.asp">News</a>, <a href="sports/main.asp">Sports</a> & <a href="fun.asp">FUN!</a><br><br>

Welcome to KCBA FOX 35's home on the World Wide Web!  Your source for information about all your favorite shows on KCBA FOX 35 and the best place for Central Coast Weather, News and FUN on the World Wide Web!<br><br>

Check out The KCBA Connection for our local Classified Ads, the KCBA Bookstore and other fantastic Web shopping opportunities. 

KCBA FOX 35 is your Central Coast home for great FOX shows like:
<A HREF="http://www.thex-files.com" target="_top">The X-Files</A>, <a href="programming/ally.htm" target="_top">Ally McBeal</a>, <a href="programming/kingofthehill.htm" target="_top">King of the Hill</A>, <A HREF="programming/simpsons.htm" target="_top">The Simpsons</A> and <A HREF="programming/millenium.htm" target="_top">Millennium</A>.

The KCBA Comedy Club: The funniest television line-up in the known universe, weeknights from 5pm to 8pm, featuring The Simpsons, Mad About You, Seinfeld and Frasier. <em><a href="programming/disclaimer.asp">*Disclaimer*</a></em>
<BR><BR>
Your only local Primetime newscast… <a href="news/main.asp">KCBA FOX NEWS - First at Ten</a>.
Why wait up? Get your local news at a time that's right for you… 10:00 O'clock every night.
<BR><BR>
If it's <a href="sports/main.asp">Sports</a> you want KCBA FOX 35 is the place to be with the NFL on FOX featuring the San Francisco 49ers; MLB on FOX featuring the San Francisco Giants plus an additional 25 Giants games & NHL ON FOX Featuring the San Jose Sharks.
<br><br>
And, don't forget the incredible <a href="kids/main.asp">KCBA Kids Club</a>.  With over 70,000 members and growing, the KCBA Kids Club is the most popular source for fun and educational kid's shows on the Central Coast.
<br><br>
If you are using WebTV, your computer's resolution is set to 640X480, or you are having any problems viewing this site, <a href="default_640x480.htm" target="_top">click here to visit the alternate version of our site.</a>

<!--#include file="footer.inc" -->
</td></tr></table>

</BODY>
</HTML>

