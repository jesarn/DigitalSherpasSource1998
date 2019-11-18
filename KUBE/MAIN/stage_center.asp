<html>

<head>
<title>KUBE 93.3fm</title>
<!--###############################
//-Client: KUBE 93.3fm - Seattle
//-Created by: Digital-Sherpas
//-Date: 2.98
//-Site-Section: Stage Center
//-Description: Splash Page
//-Version: v.1.01
//-Developer: Danny Mavromatis
//-ASP Developer: Jesse Arnold
//###############################-->
</head>

<body bgcolor="#000000" margin="0" topmargin="0">

<table border="1" cellpadding="0" cellspacing="0"
bordercolor="#000000" bordercolordark="#000000"
bordercolorlight="#000000" width="100%" height="100%">
    <tr>
    <td align="center" bordercolor="#000000" bordercolordark="#000000" bordercolorlight="#000000">
<!-- BEGIN FLASH MOVIE -->

<!-- Internet Explorer 3.0 will recognize this object tag and download the control  if it is not already present -->
<OBJECT
classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://active.macromedia.com/flash/cabs/swflash.cab#version=2,1,0,7"
width=378 height=222 bgcolor="#000000" NAME="sw" ID="sw">
<param NAME="type" VALUE="application/x-shockwave-flash">
<% If weekday(date) = 1 or weekday(date) = 7 then %>
	<param NAME="Movie" VALUE="../flash/matchwin.swf">
<% Else  %>
	<% If hour(time) >= 0 and hour(time) <= 3 then %>
		<param NAME="Movie" VALUE="../flash/matchwin.swf">
	<% Elseif hour(time) >= 20 and hour(time) <= 23 then %>
		<param NAME="Movie" VALUE="../flash/matchwin.swf">
	<% Elseif hour(time) >=  4 and hour(time) <= 5 then %>
		<param NAME="Movie" VALUE="../flash/matchwin.swf">
	<% Elseif hour(time) >=  6 and hour(time) <= 9 then %>
		<param NAME="Movie" VALUE="../flash/matchwin.swf">
	<% Elseif hour(time) >=  10 and hour(time) <= 11 then %>
		<param NAME="Movie" VALUE="../flash/matchwin.swf">
	<% Elseif hour(time) =  12 then %>
		<param NAME="Movie" VALUE="../flash/matchwin.swf">
	<% Elseif hour(time) >=  13 and hour(time) <= 16 then %>
		<param NAME="Movie" VALUE="../flash/matchwin.swf">
	<% Elseif hour(time) =  17 then %>
		<param NAME="Movie" VALUE="../flash/matchwin.swf">
	<% Elseif hour(time) =  18 then %>
		<param NAME="Movie" VALUE="../flash/matchwin.swf">
	<% Elseif hour(time) =  19 then %>
		<param NAME="Movie" VALUE="../flash/matchwin.swf">
	<% End If %>
<% End If %>
<param NAME="Quality" VALUE="best">
<param NAME="Loop" VALUE="false">
<param NAME="Play" VALUE="true">
<PARAM name="scale" value="showall">
<% If weekday(date) = 1 or weekday(date) = 7 then %>
	<embed SRC="../flash/matchwin.swf"
<% Else  %>
	<% If hour(time) >= 0 and hour(time) <= 3 then %>
		<embed SRC="../flash/matchwin.swf"
	<% Elseif hour(time) >= 20 and hour(time) <= 23 then %>
		<embed SRC="../flash/matchwin.swf"
	<% Elseif hour(time) >=  4 and hour(time) <= 5 then %>
		<embed SRC="../flash/matchwin.swf"
	<% Elseif hour(time) >=  6 and hour(time) <= 9 then %>
		<embed SRC="../flash/matchwin.swf"
	<% Elseif hour(time) >=  10 and hour(time) <= 11 then %>
		<embed SRC="../flash/matchwin.swf"
	<% Elseif hour(time) =  12 then %>
		<embed SRC="../flash/matchwin.swf"
	<% Elseif hour(time) >=  13 and hour(time) <= 16 then %>
		<embed SRC="../flash/matchwin.swf"
	<% Elseif hour(time) =  17 then %>
		<embed SRC="../flash/matchwin.swf"
	<% Elseif hour(time) =  18 then %>
		<embed SRC="../flash/matchwin.swf"
	<% Elseif hour(time) =  19 then %>
		<embed SRC="../flash/matchwin.swf"
	<% End If %>
<% End If %>
	pluginspage="/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" 
	type="application/x-shockwave-flash"
	border="0"	
	width=373
	height=210
	loop="false"
	play="true"
	scale=exactfit
	quality="best"
	
	bgcolor="#000000">
</embed>
</OBJECT>

<!-- END FLASH MOVIE -->
</TD>
</TR>
</TABLE>

</body>
</html>
