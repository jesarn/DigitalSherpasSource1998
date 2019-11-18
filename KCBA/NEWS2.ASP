
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>news</TITLE>

<SCRIPT LANGUAGE = "JavaScript">

<!-- // hide from old browsers

var version = 0;

if (navigator.userAgent.indexOf("Mozilla/3.0") != -1) version = "n3";
else if (navigator.userAgent.indexOf("Mozilla/4.0") != -1) version = "n3";
else if (navigator.userAgent.indexOf("MSIE") != -1) version = "e3";
else if (navigator.userAgent.indexOf("Mozilla/2.0") != -1) version = "n2";


if (version == "n3") {

topnews1 = new Image(162,22);
topnews1.src = "images/b_topnewsoff.gif";

topnews2 = new Image(162,22);
topnews2.src = "images/b_topnewson.gif";

}

function img_all_inact() {
                if (version == "n3") {
                                img_inact('topnews');
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
<!--#include file="style2.inc" -->
</HEAD>

<BODY BGCOLOR="#1C0058"   TEXT="White" VLINK="#D2D2D2" LINK="#FFD711">
<TABLE><TR><TD class=b>
<A HREF="news/news.asp" TARGET="main"
					onMouseover = "img_act('topnews')"
					onMouseout = "img_inact('topnews')">
<IMG SRC="images/b_topnewsoff.gif" NAME="topnews" BORDER=0 WIDTH=162 HEIGHT=22></A><br>


<font size="-1"><a href="news/news.asp" target="main"><%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  link1 = Server.MapPath ("/kionkcbaupdate/text") & "\newslink1kcba.txt"
  Set InStream= FileObject.OpenTextFile (link1, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%></a> <%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  story1 = Server.MapPath ("/kionkcbaupdate/text") & "\newsstory1kcba.txt"
  Set InStream= FileObject.OpenTextFile (story1, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%></font>
<!-- Height Spacer --><BR><IMG SRC="images/invisipic1.gif" WIDTH=1 HEIGHT=5 BORDER=0><BR>
<font size="-1"><a href="news/news.asp" target="main"><%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  link2 = Server.MapPath ("/kionkcbaupdate/text") & "\newslink2kcba.txt"
  Set InStream= FileObject.OpenTextFile (link2, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%></a> <%
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  story2 = Server.MapPath ("/kionkcbaupdate/text") & "\newsstory2kcba.txt"
  Set InStream= FileObject.OpenTextFile (story2, 1, False, False)
  While not InStream.AtEndOfStream
	Response.Write Instream.Readline & ""
  Wend
  Set Instream=Nothing
%> </font>
</TD></TR></TABLE>

</BODY>
</HTML>
