<% outlink = "-DB=radiopsa.fp3&-Format=kube-psadisplay.htm&kube=yes&-SortField=record id&-Max=50&-op=gte&killdate=" & date() & "&-Find"
Set HttpObj = Server.CreateObject("AspHTTP.Conn")
HttpObj.Url = "http://207.66.185.129/radiopsa/FMPro?"
HttpObj.PostData = outlink
HttpObj.TimeOut = 30
HttpObj.RequestMethod = "POST"
ProgramstrResult = HttpObj.GetURL

errormessagepos = InStr(UCase(ProgramstrResult),  "Database Not Open")
if errormessagepos then %>

<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html>

<head>
<meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1">
<meta name="GENERATOR" content="Microsoft FrontPage 2.0">
<title>Content</title>
<!--########################################################
//-Client: KUBE 93.3fm - Seattle
//-Created by: Digital-Sherpas (www.digital-sherpas.com)
//-Date: 9.97
//-Site-Section: Public Service DEFAULT CONTENT
//-Version: v.1.0
//-Developer: Steve Karr (steve@digital-sherpas.com)
//-Version: v.1.01
//-Developer: Danny Mavromatis (danny@digital-sherpas.com)
//##########################################################-->
</head>

<body bgcolor="#000000"
text="#FFFFFF" link="#FF0000" vlink="#FF0000" topmargin="5"
leftmargin="0">

<h2><font face="Arial"><img src="graphics/publicservice_logo.gif"
align="absmiddle" width="300" height="35"></font><font
color="#FF0000" size="2" face="Arial"><strong> </strong></font></h2>

<table border="0" width="100%">
    <tr>
        <td>&nbsp;</td>
        <td><a href="public_service_send.htm"><font
        color="#FF0000" size="2" face="Arial"><strong>instructions
        on how to submit a topic</strong></font></a><p>
<font color="#FFFFFF" size="-1" face="Arial">
We're sorry, but your submission is not reaching our database.  Please try again later.

<p><br>
</font>
        <p align="center"><a href="public_service_send.htm"><font
        color="#FF0000" size="4" face="Arial"><em><strong>instructions
        on how to submit a topic</strong></em></font></a></p>
        </td>
    </tr>
</table>

<p align="center"><font color="#808080" size="1" face="Arial"><strong>KUBE
93.com and all content is Copyright 1998. <br>
This site designed and maintained by </strong></font><a
href="http://www.kube93.com/credits.htm" target="new"><font
color="#FF0000" size="1" face="Arial"><strong>Digital Sherpas</strong></font></a><font
color="#808080" size="1" face="Arial"><strong>.</strong></font></p>
</body>
</html>
<!-- can't reach database -->

<% elseif ProgramstrResult="" then %>

<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html>

<head>
<meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1">
<meta name="GENERATOR" content="Microsoft FrontPage 2.0">
<title>Content</title>
<!--########################################################
//-Client: KUBE 93.3fm - Seattle
//-Created by: Digital-Sherpas (www.digital-sherpas.com)
//-Date: 9.97
//-Site-Section: Public Service DEFAULT CONTENT
//-Version: v.1.0
//-Developer: Steve Karr (steve@digital-sherpas.com)
//-Version: v.1.01
//-Developer: Danny Mavromatis (danny@digital-sherpas.com)
//##########################################################-->
</head>

<body bgcolor="#000000"
text="#FFFFFF" link="#FF0000" vlink="#FF0000" topmargin="5"
leftmargin="0">

<h2><font face="Arial"><img src="graphics/publicservice_logo.gif"
align="absmiddle" width="300" height="35"></font><font
color="#FF0000" size="2" face="Arial"><strong> </strong></font></h2>

<table border="0" width="100%">
    <tr>
        <td>&nbsp;</td>
        <td><a href="public_service_send.htm"><font
        color="#FF0000" size="2" face="Arial"><strong>instructions
        on how to submit a topic</strong></font></a><p>
<font color="#FFFFFF" size="-1" face="Arial">
We're sorry, but a database error is preventing your submission from reaching us.  Please try again later.

<p><br>
</font>
        <p align="center"><a href="public_service_send.htm"><font
        color="#FF0000" size="4" face="Arial"><em><strong>instructions
        on how to submit a topic</strong></em></font></a></p>
        </td>
    </tr>
</table>

<p align="center"><font color="#808080" size="1" face="Arial"><strong>KUBE
93.com and all content is Copyright 1998. <br>
This site designed and maintained by </strong></font><a
href="http://www.kube93.com/credits.htm" target="new"><font
color="#FF0000" size="1" face="Arial"><strong>Digital Sherpas</strong></font></a><font
color="#808080" size="1" face="Arial"><strong>.</strong></font></p>
</body>
</html>
<!-- database error -->

<% else %>
<%= ProgramstrResult %>
<% end if %>