
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>Navigation</TITLE>
</HEAD>

<SCRIPT LANGUAGE = "JavaScript">

<!-- // hide from old browsers

var version = 0;

if (navigator.userAgent.indexOf("Mozilla/3.0") != -1) version = "n3";
else if (navigator.userAgent.indexOf("Mozilla/4.0") != -1) version = "n3";
else if (navigator.userAgent.indexOf("MSIE") != -1) version = "e3";
else if (navigator.userAgent.indexOf("Mozilla/2.0") != -1) version = "n2";


if (version == "n3") {

news1 = new Image(59,20);
news1.src = "images/b_newsoff.gif";

news2 = new Image(59,20);
news2.src = "images/b_newson.gif";

foxkids1 = new Image(52,16);
foxkids1.src = "images/b_foxkidsoff.gif";

foxkids2 = new Image(52,16);
foxkids2.src = "images/b_foxkidson.gif";

programming1 = new Image(52,16);
programming1.src = "images/b_programmingoff.gif";

programming2 = new Image(52,16);
programming2.src = "images/b_programmingon.gif";

theconnection1 = new Image(52,16);
theconnection1.src = "images/b_theconnectionoff.gif";

theconnection2 = new Image(52,16);
theconnection2.src = "images/b_theconnectionon.gif";

sports1 = new Image(52,16);
sports1.src = "images/b_sportsoff.gif";

sports2 = new Image(52,16);
sports2.src = "images/b_sportson.gif";

}

function img_all_inact() {
                if (version == "n3") {
                                img_inact('home');
                                img_inact('news');
								img_inact('foxkids');
								img_inact('programming');
								img_inact('theconnection');
								img_inact('sports');
                                }
}

function img_act(imgName) {
               if (version == "n3") {
               imgOn = eval(imgName + "2.src");
               document [imgName].src = imgOn;
               }
}
       
function img_inact(imgName) {
               if (version == "n3") {
               imgOff = eval(imgName + "1.src");
               document [imgName].src = imgOff;
               }

}
// -->

</SCRIPT>
<BODY BGCOLOR="#1C0058" BACKGROUND="images/purpbg.gif">
<CENTER>
<TABLE ALIGN="CENTER" VALIGN="TOP" BACKGROUND="bottombox-bg.gif" CELLPADDING=0 CELLSPACING=0 BORDER=0>

<TR>
<td rowspan="2">
<A HREF="main_640x480.asp" TARGET="main"><img src="images/kcbalogo_sm.gif" width=76 height=64 border=0 align="left"></A></td>
<td align="CENTER" valign="MIDDLE">



<A HREF="news/main.asp" TARGET="main"
					onMouseover = "img_act('news')"
					onMouseout = "img_inact('news')">
<IMG SRC="images/b_newsoff.gif" NAME="news" BORDER=0 width=49 height=20 alt=""></A>
<A HREF="kids/main.asp" TARGET="main"
					onMouseover = "img_act('foxkids')"
					onMouseout = "img_inact('foxkids')">
<IMG SRC="images/b_foxkidsoff.gif" NAME="foxkids" BORDER=0 width=47 height=20 alt=""></A>

<A HREF="sports/main.asp" TARGET="main" name="sports"
					onMouseover = "img_act('sports')"
					onMouseout = "img_inact('sports')">
<IMG SRC="images/b_sportsoff.gif" NAME="sports" WIDTH=57 HEIGHT=20 BORDER=0 alt=""></A>
<br>
<A HREF="programming/main.asp" TARGET="main"
					onMouseover = "img_act('programming')"
					onMouseout = "img_inact('programming')">
<IMG SRC="images/b_programmingoff.gif" NAME="programming" WIDTH=113 HEIGHT=20 BORDER=0 alt=""></A>

<A HREF="theconnection/main.asp" TARGET="main"
					onMouseover = "img_act('theconnection')"
					onMouseout = "img_inact('theconnection')">
<IMG SRC="images/b_theconnectionoff.gif" NAME="theconnection" WIDTH=134 HEIGHT=20 BORDER=0 alt=""></A>
</TD>

<td><!--#include file="nav_adbanner.asp"--></td>

</TR>

</table></CENTER>


</BODY>
</HTML>
