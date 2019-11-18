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

<BODY BGCOLOR="#003071" BACKGROUND="images/kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
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
     <TR>
	 <TD class=a WIDTH=400>
Enjoy the power of classified ads online! Visit the <a href="marketplace/classifieds.asp">KION Classifieds</a> and put the web to work for you.<BR><BR>
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
            <TD class=a>For the latest details on these stories and more, watch <% If hour(time) = 23 and minute(time) >= 35 then %>
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
<% End If %> on KION Channel 46.</TD>

          </TR>
        </TABLE>

        <BR>
		<p><img src="images/viewerpoll_t.gif" width=275 height=17 alt="" border="0"><br>
<!--#include file="poll.inc"-->
         </p>
		 <br><br><br>
		 <table cellpadding=4><tr><td align="center" valign="top"><a href="http://www.attpebblebeachproam.com" target="_top"><img src="images/attlogo.gif" alt="" border=0></a></TD>
		 <TD CLASS="A" valign="top">KION is your Official <a href="http://www.attpebblebeachproam.com" target="_top">AT&T Pebble Beach National Pro-Am</a> Station.</td></tr>

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
	     <A HREF="tickerad.htm" TARGET="_top"><IMG SRC="images/ads/mbaicon2.gif" WIDTH=125 HEIGHT=60 BORDER=0 ALT="Monterey Bay Aquarium"></A>
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

         </TD>
       </TR>

       <TR>
         <td colspan="2" class="a"><br><br>

			<table WIDTH="100%">
				<tr>
					<td valign="CENTER" class="a">
					<A HREF="http://www.cbs.com/sports/olympics/"><IMG SRC="images/nagano1.gif" WIDTH=64 HEIGHT=100 BORDER=0 HSPACE=5 ALT="Nagano 1998"></A>
					</td>
					<td valign="CENTER" class"a"><A HREF="http://cbs.sportsline.com"><IMG SRC="images/sportsline.gif" WIDTH=118 HEIGHT=35 BORDER=0 HSPACE=5 ALT="CBS Sportsline"></A>
					</td>
					<td valign="CENTER" class="a"><IMG SRC="images/wirelogo2.gif" WIDTH=87 HEIGHT=35 BORDER=0 ALT="AP Wire" hspace=5>
					</td>
				</tr>
			</table>
		</td>
	   </tr>

	   <tr>
	   	<td colspan=2 class="a"><BR><BR><!--#include file="footer.inc" --></td>
	   </tr>

	 </TABLE>

</BODY>
</HTML>
