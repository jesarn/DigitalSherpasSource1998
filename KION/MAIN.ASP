
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>Welcome</TITLE>

<STYLE type="text/css">
	P {font-family: 12pt Arial, Sans-Serif; color: white}
	UL LI {font-family: 10pt Arial, Sans-Serif; color: black}
	TD.a {font-family: 12pt Arial, Sans-Serif; color: white}
	TD.b {font-family: 10pt Arial, Sans-Serif; color: white}
	H1 {font-family: 16pt Arial, Sans-Serif; color: white}
	H2 {font-family: 14pt Arial, Sans-Serif; color: white}
	H3 {font-family: 12pt Arial, Sans-Serif; font-weight: bold; color: white}
</STYLE>

</HEAD>

<BODY BGCOLOR="#003071" BACKGROUND="images/kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#D90005" ALINK="#FF0000">
<TABLE width=400 BORDER=0>
  <TR>
   <TD class=b WIDTH=400 COLSPAN=2 VALIGN="TOP" ALIGN="CENTER">
   <font size="-2">Thanks for visiting KIONTV.COM. 
   The time is <% Response.Write time() %> on <% Response.Write  date() %></font>
   </TD>
  </TR>
  <TR>
   <TD class=a WIDTH=400 COLSPAN=2 VALIGN=TOP>
   



   <IMG SRC="images/today_t2.gif" width=400 height=17 border=0 alt=""><BR>
   <TABLE border=0>
     <tr><td align="CENTER" class=b>
	 <!--#include file="onKIONnow.inc"--></td></tr>
	 <TR>
	 <TD class=a WIDTH=400>
	 

         <br clear="all">
		 <br><br> 

         <img src="images/cbsdotcomlogo.gif" width=116 height=34 alt="" border=0 align="left">Visit the Central Coast's place on CBS Now at <A HREF="http://kion.cbsnow.com" target="_top">kion.cbsnow.com</A>. <BR><BR>

<% if 1 = 2 then %>
		  <a href="centralcoast/centralcoast.asp"><img src="images/stormwatch.gif" alt="" border="0"></A><br>
		  Find the links to the <a href="centralcoast/centralcoast.asp">latest</A> road closures and storm information in our Eye On the Central Coast section of the KION website.<BR><BR>
<% end if %>
	 </TD>
	 </TR>
   </TABLE>
	 </TD>
	 </TR>

     <TR>
	 <TD class=a WIDTH=275 VALIGN=TOP><IMG SRC="images/topnews_t2.gif" border=0 width=275 height=17 alt="">
        <table width="275" border="0">
          <TR>
            <TD class=a VALIGN="TOP"><IMG SRC="images/littleeye4.GIF" WIDTH=15 HEIGHT=15 BORDER=0></TD>
            <TD class=a><A HREF="news/news.asp">
            <!--#include virtual="/kionkcbaupdate/text/newslink1.txt"--></A> <BR>
            <!--#include virtual="kionkcbaupdate/text/newsstory1.txt"--></TD>
          </TR>
          <TR>
            <TD class=a VALIGN="TOP"> <IMG SRC="images/littleeye4.GIF" WIDTH=15 HEIGHT=15 BORDER=0></TD>
            <TD class=a VALIGN="TOP"><A HREF="news/news.asp">
            <!--#include virtual="/kionkcbaupdate/text/newslink2.txt"--></A> <BR>
            <!--#include virtual="/kionkcbaupdate/text/newsstory2.txt"--></TD>
          </TR>
          <TR>
            <TD class=a VALIGN="TOP"> <IMG SRC="images/littleeye4.GIF" WIDTH=15 HEIGHT=15 BORDER=0></TD>
            <TD class=a VALIGN="TOP">
            <a href="<!--#include virtual="/kionkcbaupdate/text/weblink.txt"-->" target="_top">Today's Web Link:</a><BR>
            <!--#include virtual="/kionkcbaupdate/text/weblinkdescription.txt"--></TD>
          </TR>
          <TR>
            <TD class=a VALIGN="TOP"> <IMG SRC="images/littleeye4.GIF" WIDTH=15 HEIGHT=15 BORDER=0></TD>
            <TD class=a>Get the complete rundown from <!--#include virtual="/kionkcbaupdate/text/newsshow.txt"--> newscast. </TD>
          </TR>
          <TR>
            <TD class=a VALIGN="TOP"><IMG SRC="images/littleeye4.GIF" WIDTH=15 HEIGHT=15 BORDER=0></TD>
            <TD class=a>For the latest details on these stories and more, watch <%
'----weekend------
if weekday(date) = 6 and hour(time) = 23 and minute(time) > 34 then %>
     <STRONG>Eyewitness News</STRONG> tomorrow night at 6pm
<% elseif weekday(date) = 7 and hour(time) < 18 then %>
     <STRONG>Eyewitness News</STRONG> tonight at 6pm
<% elseif weekday(date) = 7 and hour(time) = 18 and minute(time) < 30 then %>
     <STRONG>Eyewitness News</STRONG> right now
<% elseif weekday(date) = 7 and hour(time) = 18 then %>
     <STRONG>Eyewitness News</STRONG> tonight at 11pm 
<% elseif weekday(date) = 7 and hour(time) > 18 and hour(time) < 23 then %>
     <STRONG>Eyewitness News</STRONG> tonight at 11pm 
<% elseif weekday(date) = 7 and hour(time) = 23 and minute(time) < 30 then %>
     <STRONG>Eyewitness News</STRONG> right now
<% elseif weekday(date) = 7 and hour(time) = 23 then %>
     <STRONG>Eyewitness News</STRONG> tomorrow night at 6pm

<% elseif weekday(date) = 1 and hour(time) < 18 then %>
     <STRONG>Eyewitness News</STRONG> tonight at 6pm
<% elseif weekday(date) = 1 and hour(time) = 18 and minute(time) < 30 then %>
     <STRONG>Eyewitness News</STRONG> right now
<% elseif weekday(date) = 1 and hour(time) = 18 then %>
     <STRONG>Eyewitness News</STRONG> tonight at 11pm 
<% elseif weekday(date) = 1 and hour(time) > 18 and hour(time) < 23 then %>
     <STRONG>Eyewitness News</STRONG> tonight at 11pm 
<% elseif weekday(date) = 1 and hour(time) = 23 and minute(time) < 30 then %>
     <STRONG>Eyewitness News</STRONG> right now
<% elseif weekday(date) = 1 and hour(time) = 23 then %>
     <STRONG>Eye on This Morning</STRONG> tomorrow morning between 6am and 9am

<%
else
'------weekday-----	 
	If hour(time) = 23 and minute(time) >= 35 then %>
	     <STRONG>Eye On This Morning</STRONG> tomorrow morning between 6am and 9am
	<% Elseif hour(time) < 6 then %>
		 <STRONG>Eye On This Morning</STRONG> this morning between 6am and 9am
	<% Elseif hour(time) >= 6 and hour(time) < 9 then %>
		 <STRONG>Eye On This Morning</STRONG> right now
	<% Elseif hour(time) >= 9 and hour(time) < 12 then %>
	     <STRONG>Eyewitness News at Noon</STRONG> today
	<% Elseif hour(time) = 12 and minute(time) <= 30 then %>
	     <STRONG>Eyewitness News at Noon</STRONG> right now
	<% Elseif hour(time) = 12 and minute(time) > 30 then %>
	     <STRONG>Eyewitness News at Five</STRONG> tonight
	<% Elseif hour(time) >= 13 and hour(time) < 17 then %>
	     <STRONG>Eyewitness News at Five</STRONG> tonight
	<% Elseif hour(time) = 17 and minute(time) <= 30 then %>
	     <STRONG>Eyewitness News at Five</STRONG> right now
	<% Elseif hour(time) = 17 and minute(time) > 30 then %>
	     <STRONG>Eyewitness News at Six</STRONG> next
	<% Elseif hour(time) =  18 then %>
	     <STRONG>Eyewitness News at Six</STRONG> right now
	<% Elseif hour(time) => 19 and hour(time) < 23 then %>
	     <STRONG>Eyewitness News at Eleven</STRONG> tonight
	<% Elseif hour(time) = 23 and minute(time) < 35 then %>
	     <STRONG>Eyewitness News at Eleven</STRONG> right now
	<% End If %>
<% End If %> only on KION Channel 46.</TD>

          </TR>
        </TABLE>

        <BR>
		<p><img src="images/viewerpoll_t.gif" width=275 height=17 alt="" border="0"><br>
<!--#include file="poll.inc"-->
         </p>
		 <br>

<a href="http://207.137.189.177/cgi-bin/Webdriver?MIval=Mainmenu1&linked=1&affil_name=KION&city=15&net=2" target="_top"><center><img src="images/chattvlogo2.gif" width=150 height=56 alt="ChatTV" border=0></center></a><br>
		 If it's on TV, it's on ChatTV.  <a href="http://207.137.189.177/cgi-bin/Webdriver?MIval=Mainmenu1&linked=1&affil_name=KION&city=15&net=2" target="_top">Click here</a> to talk with others about what's on TV right now!
		 
		 <table cellpadding=4>
		<tr>
		<td class=a valign="top"><br><br>KION is the Central Coast's Official <a href="http://www.cmn.org " target="_top">Children's Miracle Network</a> Champions Station</td>
		<td valign="top"><br><br><a href="http://www.cmn.org " target="_top"><img src="images/cmnchamp.gif" width=80 height=77 alt="" border="0"></a></td>
		</tr></table>

      </TD>
	  
      <TD class=a ALIGN=LEFT VALIGN=TOP>
         <TABLE WIDTH=125 BORDER=1 BORDERCOLOR="Navy" BGCOLOR="#0078C0">
           <TR>
             <td colspan="3" align="CENTER" valign="TOP" class="a">
             <center>
			 <% if right(time(), 2) = "AM" then %>
             <A HREF="weather/weather.asp"><IMG SRC="images/forecastbybarry.GIF" WIDTH=125 HEIGHT=50 BORDER=0 ALT="Forecast by Barry Brown"></A>
			 <% else %>
			 <A HREF="weather/weather.asp"><IMG SRC="images/forecastbygary.GIF" WIDTH=125 HEIGHT=50 BORDER=0 ALT="Forecast by Gary Butterworth"></A>
			 <% end if %>
			 <applet
              /   code=headline.class
             width=125 height=136 >
             <param name=filename value="weather.txt">
             <param name=image value="images/weatherbg2.gif">
             <param name=typespeed value=5>
             <param name=direction value=2>
             <param name=x value=8>
             <param name=y value=7>
             <param name=forered value=255>
     	     <param name=foregreen value=255>
             <param name=foreblue value=255>
             <param name=titlered value=217>
             <param name=titlegreen value=0>
             <param name=titleblue value=55>
             <param name=backred value=0>
             <param name=backgreen value=120>
             <param name=backblue value=192>
             <param name=outputwidth value=125>
             <param name=outputheight value=120>
             <param name=step value=1>
             <param name=sleeptime value=5000>
             <param name=fontname value=helVEtica>
             <param name=fontsize value=12>
             <param name=target value=new>
             <param name=typespeed value=5>
             </applet></center>
	     <a href="http://www.mbayaq.org/" target="_top"><IMG SRC="images/ads/mbaicon2.gif" WIDTH=125 HEIGHT=60 BORDER=0 ALT="Monterey Bay Aquarium"></a>
             </TD>
           </TR>
           <TR>
             <TD class=b ALIGN=CENTER VALIGN=TOP WIDTH=41>
             <!--#include virtual="/kionkcbaupdate/text/day1.txt"-->
             <IMG SRC="images/weather/<!--#include virtual="/kionkcbaupdate/text/icon1.txt"-->.gif"  ALT="<!--#include virtual="/kionkcbaupdate/text/icon1.txt"-->" WIDTH=30 HEIGHT=30><BR>
             <!--#include virtual="/kionkcbaupdate/text/temp1.txt"-->
             </TD>
             <TD class=b ALIGN=CENTER VALIGN=TOP WIDTH=41>
             <!--#include virtual="/kionkcbaupdate/text/day2.txt"-->
             <IMG SRC="images/weather/<!--#include virtual="/kionkcbaupdate/text/icon2.txt"-->.gif"  ALT="<!--#include virtual="/kionkcbaupdate/text/icon2.txt"-->" WIDTH=30 HEIGHT=30><BR>
             <!--#include virtual="/kionkcbaupdate/text/temp2.txt"-->
             </TD>
             <TD class=b ALIGN=CENTER VALIGN=TOP WIDTH=41>
             <!--#include virtual="/kionkcbaupdate/text/day3.txt"-->
             <IMG SRC="images/weather/<!--#include virtual="/kionkcbaupdate/text/icon3.txt"-->.gif"  ALT="<!--#include virtual="/kionkcbaupdate/text/icon3.txt"-->" WIDTH=30 HEIGHT=30><BR>
             <!--#include virtual="/kionkcbaupdate/text/temp3.txt"-->
             </TD>
           </TR>
           <TR>
		     <TD class=b COLSPAN=3>
			 <A HREF="weather/weather.asp"><CENTER>Complete Weather</CENTER></A>
			 </TD>
		   </TR>
         </TABLE><BR><BR><BR><BR>
		 <center>
		 <% if date = "4/26/98" then %>
		 
		<img src="images/tonightonkion.gif" width=125 height=32 alt="" border=0><br>
		<P><a href="programming/today_detail.asp" target="main">
		<img src="http://207.66.185.129/kion/images/sm60min.jpg"><BR>
		<B>60 Minutes</B></A><BR>
		The quintessential news magazine, 60 Minutes, is in its 30th season of investigative reports and revealing interviews. Watch for a new broadcast this Sunday.
		</P>
	 
		 <% else %>
		 <!--#include file="dailyshow.inc"-->
		 <% End If %>
		
		 </center>

         </TD>
       </TR>

       <TR>
         <td colspan="2" class="a"><br><br>

			<table WIDTH="100%">
				<tr>
					<td valign="CENTER" class"a"><A HREF="http://cbs.sportsline.com"><IMG SRC="images/sportsline.gif" WIDTH=118 HEIGHT=35 BORDER=0 HSPACE=5 ALT="CBS Sportsline"></A>
					</td>
					<td valign="CENTER" class="a"><IMG SRC="images/wirelogo2.gif" WIDTH=87 HEIGHT=35 BORDER=0 ALT="AP Wire" hspace=5>
					</td>
				</tr>
			</table>
		</td>
	   </tr>

	   <tr>
	   	<td colspan=2 class="a"><BR><BR><!--#include file="footer_main.inc" --></td>
	   </tr>

	 </TABLE>

</BODY>
</HTML>
