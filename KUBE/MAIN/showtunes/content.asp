<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html>

<head>
<meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1">
<% If hour(time) >= 0 and hour(time) <= 3 then %>
<meta HTTP-EQUIV="REFRESH" CONTENT="10;URL=wakeup/default.html">
<% Elseif hour(time) >= 20 and hour(time) <= 23 then %>
<meta HTTP-EQUIV="REFRESH" CONTENT="10;URL=asktman/default.html">
<% Elseif hour(time) >=  4 and hour(time) <= 5 then %>
<meta HTTP-EQUIV="REFRESH" CONTENT="10;URL=wakeup/default.html">
<% Elseif hour(time) >=  6 and hour(time) <= 9 then %>
<meta HTTP-EQUIV="REFRESH" CONTENT="10;URL=asktman/default.html">
<% Elseif hour(time) >=  10 and hour(time) <= 11 then %>
<meta HTTP-EQUIV="REFRESH" CONTENT="10;URL=oldschool/default.html">
<% Elseif hour(time) =  12 then %>
<meta HTTP-EQUIV="REFRESH" CONTENT="10;URL=oldschool/default.html">
<% Elseif hour(time) >=  13 and hour(time) <= 16 then %>
<meta HTTP-EQUIV="REFRESH" CONTENT="10;URL=5oclock/default.html">
<% Elseif hour(time) =  17 then %>
<meta HTTP-EQUIV="REFRESH" CONTENT="10;URL=5oclock/default.html">
<% Elseif hour(time) =  18 then %>
<meta HTTP-EQUIV="REFRESH" CONTENT="10;URL=5oclock/default.html">
<% Elseif hour(time) =  19 then %>
<meta HTTP-EQUIV="REFRESH" CONTENT="10;URL=7at7/default.html">
<% End If %>
<meta name="GENERATOR" content="Microsoft FrontPage 2.0">
<title>Content</title>
<!--########################################################
//-Client: KUBE 93.3fm - Seattle
//-Created by: Digital-Sherpas (www.digital-sherpas.com)
//-Date: 9.97
//-Site-Section: FAMILY DEFAULT CONTENT
//-Version: v.1.0
//-Developer: Steve Karr (steve@digital-sherpas.com)
//-Version: v.1.01
//-Developer: Danny Mavromatis (danny@digital-sherpas.com)
//##########################################################-->
</head>

<body background="../../graphics/showtunes.jpg" bgcolor="#000000"
text="#FFFFFF" link="#FF0000" vlink="#FF0000" TOPMARGIN="0" LEFTMARGIN="0">
<div align="left">

<table border="0" width="575" height="100%">
    <tr>
        <td align="center"><img
        src="../../graphics/showtunes_countdown.gif"></td>
    </tr>
</table>
</div>
</body>
</html>
