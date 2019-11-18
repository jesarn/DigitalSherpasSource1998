
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KCBA</TITLE>
<!--#include file="../style.inc" -->

</HEAD>

<script language="JavaScript">

<!--



function openPage(PageLocation){

	mainWindow=window.open(PageLocation,"_blank",'toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=1,resizable=1,width=480,height=450');
    }


// -->

</script>

<script language="JavaScript">

<!--



function openPage2(PageLocation){

	mainWindow=window.open(PageLocation,"_blank",'toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=1,resizable=1,width=400,height=350');
    }


// -->

</script>


<BODY TEXT="#000000" VLINK="#1C0058" LINK="#005B91" ALINK="#FF0000" BGCOLOR="#FFFFFF">
<P>
<table width="100%"><tr>

<td align="Center" valign="TOP">


<h2>Today's KCBA Kids Programming!</h2>
<br><br>


<% showlink = "-DB=kcbaprogramming.fp3&-Format=programming.htm&id=kids&date=" & date() & "&-SortField=sort_field&-Max=50&-Find"
Set HttpObj = Server.CreateObject("AspHTTP.Conn")
HttpObj.Url = "http://207.66.185.129/kcba/FMPro?"
HttpObj.PostData = showlink
HttpObj.TimeOut = 10
HttpObj.RequestMethod = "POST"
ProgramstrResult = HttpObj.GetURL %>

<%= ProgramstrResult %>


<p>Want find out more about your favorite shows?</p>
<p><em>Click on a picture below!</em></p>
<table width="100%" cellpadding="5" align="CENTER" BORDER=0>

<tr>
<td align="CENTER" valign="MIDDLE"><a href="bobby.htm" target="_top"><img src="images/bobby.gif" width=100 height=75 alt="" border="0"></a></td>
<td align="CENTER" valign="MIDDLE"><a href="cbear.htm" target="_top"><img src="images/cbear.gif" width=100 height=81 alt="" border="0"></a></td>
<td align="CENTER" valign="MIDDLE"><a href="eek.htm" target="_top"><img src="images/eek.gif" width=100 height=72 alt="" border="0"></a></td>
</tr>

<tr>
<td align="CENTER" valign="MIDDLE"><a href="goose.htm" target="_top"><img src="images/goosebumps.gif" width=73 height=100 alt="" border="0"></a></td>
<td align="CENTER" valign="MIDDLE"><a href="louie.htm" target="_top"><img src="images/louie.gif" width=64 height=100 alt="" border="0"></a></td>
<td align="CENTER" valign="MIDDLE"><a href="spiderman.htm" target="_top"><img src="images/spidey.gif" width=66 height=100 alt="" border="0"></a></td>
</tr>

<tr>
<td align="CENTER" valign="MIDDLE"><a href="beetleborg.htm" target="_top"><img src="images/beetleborg.gif" width=90 height=87 alt="" border="0"></a></td>
<td align="CENTER" valign="MIDDLE"><a href="xmen.htm" target="_top"><img src="images/xmen.gif" width=74 height=100 alt="" border="0"></a></td>
<td align="CENTER" valign="MIDDLE"><a href="casper.htm" target="_top"><img src="images/casper.gif" width=50 height=100 alt="" border="0"></a></td>
</tr>

<tr>
<td colspan="3" align="CENTER" valign="MIDDLE">
	<table width="100%" BORDER=0><tr><td width="50%" align="CENTER" valign="MIDDLE">
	<a href="ninjaturtles.htm" target="_top"><img src="images/leonardo.gif" width=100 height=151 alt="" border=0></a>
	</td>
	<td  width="50%" align="CENTER" valign="MIDDLE">
	<a href="johnbio.asp"><img src="images/johnhead.gif" width=68 height=100 alt="" border=0></a>
	</td></tr></table>
</td>
</tr>

</table>












</P></td>

<td width="200" align="center" valign="TOP"><img src="../images/kidsclublogo.gif" width=200 height=185 alt="" border=0><br>

<a href="http://207.66.185.129/kcba/kcbakidssignup.htm"><img src="../images/kb_signupoff.gif" width=200 height=50 alt="Sign Up!" border="0"></a>
<br><br><br>



<%  Set BrowserCapabilities = Server.CreateObject("MSWC.BrowserType") %>  


<%If BrowserCapabilities.javascript Then%>
<img src="../images/kb_gamesoff.gif" width=200 height=50 alt="" border="0">

<A HREF="javascript:openPage('../games/kingcentrate/kingcentrate.asp');"><img src="../images/kb_kingcentrateoff.gif" width=200 height=50 alt="" border="0"></A>


<A HREF="javascript:openPage('http://207.66.185.129/kcba/ml1enter.htm');"><img src="../images/kb_fillin1off.gif" width=200 height=50 alt="" border="0"></A>


<A HREF="javascript:openPage('http://207.66.185.129/kcba/ml2enter.htm');"><img src="../images/kb_fillin2off.gif" width=200 height=50 alt="" border="0"></A>


<A HREF="javascript:openPage2('../games/wordsearch/kidsshows.htm');"><img src="../images/kb_wordsearchoff.gif" width=200 height=50 alt="" border=0></A>
<% else %>

<img src="../images/kb_gamesoff.gif" width=200 height=50 alt="" border="0">

<a href="../games/kingcentrate/kingcentrate.asp" target="_blank"><img src="../images/kb_kingcentrateoff.gif" width=200 height=50 alt="KingCentrate" border="0"></a>

<a href="http://207.66.185.129/kcba/ml1enter.htm" target="_blank"><img src="../images/kb_fillin1off.gif" width=200 height=50 alt="Fill In 1" border="0"></a>

<a href="http://207.66.185.129/kcba/ml2enter.htm" target="_blank"><img src="../images/kb_fillin2off.gif" width=200 height=50 alt="Fill In 2" border="0"></a>

<a href="../games/wordsearch/kidsshows.htm" target="_blank"><img src="../images/kb_wordsearchoff.gif" width=200 height=50 alt="WORDSEARCH!" border=0></a>
<% End If %>
<br><br>
<em>Note, playing games will open a new browser window.</em>

</td></tr></table>
<br clear="right"><br><br><br><br>
<!--#include file="../footer.inc" -->

</BODY>
</HTML>
