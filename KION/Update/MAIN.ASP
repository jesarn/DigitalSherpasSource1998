	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>Welcome</TITLE>

<STYLE type="text/css">
	P {font: 12pt Arial; color: white}
	UL LI {font: 10pt Arial; color: black}
	TD.a {font: 12pt Arial; color: white}
	TD.b {font: 10pt Arial; color: white}
</STYLE>

</HEAD>

<BODY BGCOLOR="#003071" BACKGROUND="images/kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" ALINK="#FF0000">
<TABLE BORDER=1>
  <TR>
   <TD class=b WIDTH=400 COLSPAN=2 VALIGN="TOP" ALIGN="CENTER">
   <font size="-2">Thanks for visiting KIONTV.COM. 
   The time is <% Response.Write time() %> on <% Response.Write  date() %></font>
   </TD>
  </TR>
  <TR>
   <TD class=a WIDTH=400 COLSPAN=2 VALIGN=TOP>
   <IMG SRC="images/today_t.gif"><BR>
   <TABLE>
     <TR>
	 <TD class=a WIDTH=400><A HREF="marketplace/travelstore.asp"><IMG SRC="images/globeanim4.gif" WIDTH=125 HEIGHT=86 HSPACE=2 BORDER=0 ALIGN=RIGHT ALT="Icon"></A>
     Have you ever wanted to visit the places we show you on "Weekend Getaways" on KION Eyewitness News and Eye On This Morning? Now you can. We've worked together with XYZ Travel to create special packages that put will make your weekend. Visit our online <A HREF="marketplace/travelstore.asp">Travel Store</A> for more details.<BR><BR></TD></TR></TABLE>
	 </TD>
	 </TR>

     <TR>
	 <TD class=a WIDTH=275 VALIGN=TOP><IMG SRC="images/topnews_t.gif" border=0>
        <TABLE BORDER=0>
          <TR>
            <TD class=a VALIGN="TOP"><IMG SRC="images/littleeye4.GIF" WIDTH=15 HEIGHT=15 BORDER=0></TD>
            <TD class=a><A HREF="news/news.htm">
            <!--#include virtual="/kionkcbaupdate/text/newslink1.txt"--></A> <BR>
            <!--#include virtual="kionkcbaupdate/text/newsstory1.txt"--></TD>
          </TR>
          <TR>
            <TD class=a VALIGN="TOP"> <IMG SRC="images/littleeye4.GIF" WIDTH=15 HEIGHT=15 BORDER=0></TD>
            <TD class=a VALIGN="TOP"><A HREF="news/news.htm">
            <!--#include virtual="/kionkcbaupdate/text/newslink2.txt"--></A> <BR>
            <!--#include virtual="/kionkcbaupdate/text/newsstory2.txt"--></TD>
          </TR>
          <TR>
            <TD class=a VALIGN="TOP"> <IMG SRC="images/littleeye4.GIF" WIDTH=15 HEIGHT=15 BORDER=0></TD>
            <TD class=a>Get the complete rundown from <A HREF="news/news.htm">Eye on this Morning</A>. </TD>
          </TR>
          <TR>
            <TD class=a VALIGN="TOP"><IMG SRC="images/littleeye4.GIF" WIDTH=15 HEIGHT=15 BORDER=0></TD>
            <TD class=a>Be sure to watch KION Eyewitness News to get complete details on these stories and more.</TD>
          </TR>
        </TABLE>
      </TD>
      <TD class=a WIDTH=125 ALIGN=CENTER ROWSPAN=2 VALIGN=TOP>
         <TABLE WIDTH=125 BORDER=1 BORDERCOLOR="Navy" BGCOLOR="#0078C0">
           <TR>
             <TD class=a COLSPAN=3 WIDTH=125 ALIGN=CENTER VALIGN=TOP>
             <applet
              /   code=headline.class
             width=125 height=155 >
             <param name=filename value="weather.txt">
             <param name=image value="images/weatherbg.gif">
             <param name=typespeed value=5>
             <param name=direction value=2>
             <param name=x value=8>
             <param name=y value=20>
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
             <param name=outputheight value=125>
             <param name=step value=1>
             <param name=sleeptime value=5000>
             <param name=fontname value=helVEtica>
             <param name=fontsize value=12>
             <param name=target value=new>
             <param name=typespeed value=5>
             </applet>
			 <BR>
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
         </TABLE>
         </TD>
       </TR>
       <TR>
         <TD class="a" COLSPAN=2>
         <!--#include file="poll.inc"-->
         </TD>
       </TR>
       <TR>
         <TD class=a COLSPAN=2 ALIGN=CENTER><BR><BR>
         <A HREF="http://www.cbs.com/sports/olympics/"><IMG SRC="images/nagano1.gif" WIDTH=64 HEIGHT=100 BORDER=0 HSPACE=10 ALT="Nagano 1998"></A><A HREF="http://cbs.sportsline.com"><IMG SRC="images/sportsline.gif" WIDTH=118 HEIGHT=35 BORDER=0 HSPACE=10 ALT="CBS Sportsline"></A><IMG SRC="images/wirelogo2.gif" WIDTH=87 HEIGHT=35 BORDER=0 HSPACE=10 ALT="AP Wire">
         <BR><BR>
         <!--#include file="footer.inc" -->
         </TD>
		 </TR>
       </TABLE>

</BODY>
</HTML>
