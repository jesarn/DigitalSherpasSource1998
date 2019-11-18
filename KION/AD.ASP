
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<META HTTP-EQUIV="Refresh" CONTENT="13; URL=ad.asp">
<HTML>
<HEAD>
	<TITLE>ad</TITLE>
</HEAD>

<BODY BGCOLOR="#003071" BACKGROUND="kionback3.gif" TEXT="#FFFFFF" LINK="#D90037" VLINK="#C0C0C0" leftmargin="0" ALINK="#FF0000">
<table width="100%" align="LEFT" valign="MIDDLE"><tr><td height="100%" align="left" valign="MIDDLE"><%

Sub Session_OnStart
	Session("Hits") = 0
End Sub

if Session("Hits") > 7 then
	Session("Hits") = 0
End If

if Session("Hits") = 0 then %>

<A HREF="news/bios/karina.asp" TARGET="main">
<IMG WIDTH=125 HEIGHT=75 SRC="images/ads/kion_karina.jpg" border=0 alt=""></A>

<% elseif Session("Hits") = 1 then %>
<A HREF="news/bios/romney.asp" TARGET="main">
<IMG WIDTH=125 HEIGHT=75 SRC="images/ads/kion_romney.jpg" border=0 alt=""></A>

<% elseif Session("Hits") = 2 then %>
<A HREF="news/bios/colleen.asp" TARGET="main">
<IMG WIDTH=125 HEIGHT=75 SRC="images/ads/kion_colleen.jpg" border=0 alt=""></A>

<% elseif Session("Hits") = 3 then %>
<A HREF="news/bios/barry.asp" TARGET="main">
<IMG WIDTH=125 HEIGHT=75 SRC="images/ads/kion_barry.jpg" border=0 alt=""></A>

<% elseif Session("Hits") = 4 then %>
<A HREF="marketplace/classifieds.asp" TARGET="main">
<IMG WIDTH=125 HEIGHT=75 SRC="images/ads/kion_classifieds.jpg" border=0 alt=""></A>

<% elseif Session("Hits") = 5 then %>
<A HREF="news/bios/hunter.asp" TARGET="main">
<IMG WIDTH=125 HEIGHT=75 SRC="images/ads/kion_hunter.jpg" border=0 alt=""></A>

<% elseif Session("Hits") = 6 then %>
<A HREF="news/bios/gary.asp" TARGET="main">
<IMG WIDTH=125 HEIGHT=75 SRC="images/ads/kion_gary.jpg" border=0 alt=""></A>

<% elseif Session("Hits") = 7 then %>
<A HREF="weather/weather.asp" TARGET="main">
<IMG WIDTH=125 HEIGHT=75 SRC="images/ads/kion_forecast.jpg" border=0 alt=""></A>

<% End If

Session("Hits") = Session("Hits") + 1

%></td></tr>
</table>


</BODY>
</HTML>
