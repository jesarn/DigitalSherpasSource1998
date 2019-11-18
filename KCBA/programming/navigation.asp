
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

foxkids1 = new Image(50,20);
foxkids1.src = "images/b_foxkidsoff.gif";

foxkids2 = new Image(50,20);
foxkids2.src = "images/b_foxkidson.gif";

programming1 = new Image(52,16);
programming1.src = "images/b_programmingoff.gif";

programming2 = new Image(52,16);
programming2.src = "images/b_programmingon.gif";

market1 = new Image(52,16);
market1.src = "images/b_marketoff.gif";

market2 = new Image(52,16);
market2.src = "images/b_marketon.gif";

weather1 = new Image(52,16);
weather1.src = "images/b_weatheroff.gif";

weather2 = new Image(52,16);
weather2.src = "images/b_weatheron.gif";

}

function img_all_inact() {
                if (version == "n3") {
                                img_inact('home');
                                img_inact('news');
								img_inact('foxkids');
								img_inact('programming');
								img_inact('market');
								img_inact('weather');
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

<TABLE ALIGN="CENTER" VALIGN="TOP" BACKGROUND="bottombox-bg.gif" CELLPADDING=0 CELLSPACING=0 BORDER=0>
<TR>
<TD ALIGN="LEFT" VALIGN="TOP">
<IMG SRC="images/b_programmingon.gif" NAME="programming" WIDTH=124 HEIGHT=20 BORDER=0>
</TD>

<TD ALIGN="LEFT" VALIGN="TOP">
<A HREF="news/main.asp" TARGET="main"
					onMouseover = "img_act('news')"
					onMouseout = "img_inact('news')">
<IMG SRC="images/b_newsoff.gif" NAME="news" WIDTH=56 HEIGHT=20 BORDER=0></A>
</TD>
<TD ALIGN="LEFT" VALIGN="TOP">
<A HREF="marketplace/main.asp" TARGET="main"
					onMouseover = "img_act('market')"
					onMouseout = "img_inact('market')">
<IMG SRC="images/b_marketoff.gif" NAME="market" WIDTH=114 HEIGHT=20 BORDER=0></A>
</TD>
<TD ALIGN="LEFT" VALIGN="TOP">
<A HREF="programming/foxkids.htm" TARGET="_top"
					onMouseover = "img_act('foxkids')"
					onMouseout = "img_inact('foxkids')">
<IMG SRC="images/b_foxkidsoff.gif" NAME="foxkids" WIDTH=50 HEIGHT=20 BORDER=0 alt=""></A>
</TD>
<TD ALIGN="LEFT" VALIGN="TOP">
<A HREF="weather/main.asp" TARGET="main"
					onMouseover = "img_act('weather')"
					onMouseout = "img_inact('weather')">
<IMG SRC="images/b_weatheroff.gif" NAME="weather" WIDTH=84 HEIGHT=20 BORDER=0></A>
</TD>
</TR>

</table>


</BODY>
</HTML>
