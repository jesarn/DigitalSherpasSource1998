<html>

<head>
<title>NEWS</title>
<!--########################################################
//-Client: KUBE 93.3fm - Seattle
//-Created by: Digital-Sherpas (www.digital-sherpas.com)
//-Date: 2.98
//-Site-Section: NEWS TICKER PAGE
//-Version: v.1.0
//-Developer: Steve Karr (steve@digital-sherpas.com)
//-Version: v.1.01
//-Developer: Danny Mavromatis (danny@digital-sherpas.com)
//##########################################################-->
</head>

<body background="../graphics/top_ad_bk.JPG" bgcolor="#F9AB31"
text="#FFFFFF" link="#FF0000" vlink="#FF0000" topmargin="0"
leftmargin="0">
<table border="0" cellpadding="0" cellspacing="0" width="100%"
height="90%"><tr><td align="center"><applet code="headline.class"
        codebase="../java/headline/" archive="headline.jar" align="middle" width="175"
        height="56"><param name="cabbase" value="headline.cab">
<param name="image"
        value="../graphics/kube_javaticker.gif">
<% If weekday(date) = 1 then %>
	<param name="filename" value="http://www.kube93.com/main/news/sunday.txt">
<% elseIf weekday(date) = 2 then %>
	<param name="filename" value="http://www.kube93.com/main/news/monday.txt">
<% elseIf weekday(date) = 3 then %>
	<param name="filename" value="http://www.kube93.com/main/news/tuesday.txt">
<% elseIf weekday(date) = 4 then %>
	<param name="filename" value="http://www.kube93.com/main/news/wednesday.txt">
<% elseIf weekday(date) = 5 then %>
	<param name="filename" value="http://www.kube93.com/main/news/thursday.txt">
<% elseIf weekday(date) = 6 then %>
	<param name="filename" value="http://www.kube93.com/main/news/friday.txt">
<% elseIf weekday(date) = 7 then %>
	<param name="filename" value="http://www.kube93.com/main/news/saturday.txt">
<% End If %>
<param name="typespeed"
        value="5"><param name="direction" value="2"><param
        name="x" value="4"><param name="y" value="14"><param
        name="forered" value="247"><param name="foregreen"
        value="179"><param name="foreblue" value="87"><param
        name="titlered" value="255"><param name="titlegreen"
        value="0"><param name="titleblue" value="0"><param
        name="backred" value="0"><param name="backgreen"
        value="0"><param name="backblue" value="0"><param
        name="outputwidth" value="175"><param name="outputheight"
        value="40"><param name="step" value="1"><param
        name="sleeptime" value="5000"><param name="fontname"
        value="helvetica"><param name="fontsize" value="12"><param
        name="url" value="0"><param name="target" value="0"></applet>
        </td>
    </tr>
</table>
</center>
</body>
</html>
