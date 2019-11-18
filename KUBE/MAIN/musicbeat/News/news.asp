<html>

<head>
<title>Content</title>
<!--########################################################
//-Client: KUBE 93.3fm - Seattle
//-Created by: Digital-Sherpas (www.digital-sherpas.com)
//-Date: 2.98
//-Site-Section: MUSICBEAT DEFAULT CONTENT
//-Version: v.1.0
//-Developer: Steve Karr (steve@digital-sherpas.com)
//-Version: v.1.01
//-Developer: Danny Mavromatis (danny@digital-sherpas.com)
//##########################################################-->
</head>


<body background="../../../graphics/musicbeat_back2.JPG"
bgcolor="#FFFFFF" BGPROPERTIES="FIXED" text="#000000" link="#FF0000" vlink="#FF0000" alink="#FF0000" topmargin="0" leftmargin="0">
<TABLE width="95%" align="center"><TR><TD>

<table width="100%">
<TR><TD><FONT FACE="ARIAL">
<img src="../graphics/dailyjam.gif" width=97 height=58 border=0 align="left" alt="Daily Jam"></TD>
<TD align="center"><FONT FACE="ARIAL">
<!-- DATE -->
<br><h2>
<% If weekday(date) = 1 then %>
	Sunday
<% elseIf weekday(date) = 2 then %>
	Monday
<% elseIf weekday(date) = 3 then %>
	Tuesday
<% elseIf weekday(date) = 4 then %>
	Wednesday
<% elseIf weekday(date) = 5 then %>
	Thursday
<% elseIf weekday(date) = 6 then %>
	Friday
<% elseIf weekday(date) = 7 then %>
	Saturday
<% End If %> -
<% If Month(date) = 1 then %>
	January
<% elseIf Month(date) = 2 then %>
	February
<% elseIf Month(date) = 3 then %>
	March
<% elseIf Month(date) = 4 then %>
	April
<% elseIf Month(date) = 5 then %>
	May
<% elseIf Month(date) = 6 then %>
	June
<% elseIf Month(date) = 7 then %>
	July
<% elseIf Month(date) = 8 then %>
	August
<% elseIf Month(date) = 9 then %>
	September
<% elseIf Month(date) = 10 then %>
	October
<% elseIf Month(date) = 11 then %>
	November
<% elseIf Month(date) = 12 then %>
	December
<% End If %> <% Response.Write  Day(date)%>, <% Response.Write  Year(date) %></h2></TD></TR></TABLE>
<!-- END DATE -->
<!-- DO NOT MODIFY CODE ABOVE THIS LINE!!! -->
<table width="98%">
<!-- START NEWS STORIES BELOW -->
<FONT FACE="ARIAL"><!--#include file="todays_news.asp"-->

</TD></TR></table></FONT>
</body>
</html>
