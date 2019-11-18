
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>KCBA</TITLE>
<!--#include file="style2.inc" -->
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



<script language="JavaScript">

<!--



function openPage3(PageLocation){

	mainWindow=window.open(PageLocation,"_blank",'toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=1,resizable=1,width=600,height=500');
    }


// -->

</script>




<BODY TEXT="#000000" VLINK="#1C0058" LINK="#005B91" ALINK="#FF0000" BGCOLOR="#FFFFFF">

<center><h1>What type of fun are you looking for?</h1></center>

<%  Set BrowserCapabilities = Server.CreateObject("MSWC.BrowserType") %>  
<%If BrowserCapabilities.javascript Then%>

<!-- whole family -->

<table width="100%"><tr>
<td align="CENTER" valign="TOP">
<img src="images/ab_wholefamilyoff.gif" width=200 height=50 alt="" border="0"><br>

<A HREF="javascript:openPage3('games/wordsearch/coastsearch.htm');">
<img src="images/ab_wordsearch1off.gif" width=200 height=50 alt="" border="0"></A>
<br>

<A HREF="javascript:openPage3('games/wordsearch/general.htm');"><img src="images/ab_wordsearch2off.gif" width=200 height=50 alt="" border="0"></A>
<br>

<a href="http://207.66.185.129/kcba/postcard_main.htm"><img src="images/ab_postcardsoff.gif" width=200 height=50 alt="" border="0"></a><br>

<a href="http://207.66.185.129/kcba/melrosestart.htm"><img src="images/ab_melroseoff.gif" width=200 height=50 alt="" border="0"></a><br>

</td>

<!-- kids -->
<td align="CENTER" valign="TOP">
<img src="images/kb_kidsoff.gif" width=200 height=50 alt="" border="0"><br>

<A HREF="javascript:openPage('games/kingcentrate/kingcentrate.asp');"><img src="images/kb_kingcentrateoff.gif" width=200 height=50 alt="" border="0"></A><br>


<A HREF="javascript:openPage('http://207.66.185.129/kcba/ml1enter.htm');"><img src="images/kb_fillin1off.gif" width=200 height=50 alt="" border="0"></A><br>


<A HREF="javascript:openPage('http://207.66.185.129/kcba/ml2enter.htm');"><img src="images/kb_fillin2off.gif" width=200 height=50 alt="" border="0"></A><br>


<A HREF="javascript:openPage2('games/wordsearch/kidsshows.htm');"><img src="images/kb_wordsearchoff.gif" width=200 height=50 alt="" border=0></A><br>
</td></tr></table>


<% else %>
<table width="100%"><tr>
<td align="CENTER" valign="TOP">
<img src="images/ab_wholefamilyoff.gif" width=200 height=50 alt="" border="0"><br>

<a href="games/wordsearch/coastsearch.htm" target="_blank"><img src="images/ab_wordsearch1off.gif" width=200 height=50 alt="" border="0">
</a><br>

<a href="games/wordsearch/general.htm"><img src="images/ab_wordsearch2off.gif" width=200 height=50 alt="" border="0"></a><br>

<a href="http://207.66.185.129/kcba/postcard.htm" target="_blank"><img src="images/ab_postcardsoff.gif" width=200 height=50 alt="" border="0"></a><br>

<a href="http://207.66.185.129/kcba/melrosestart.htm"><img src="images/ab_melroseoff.gif" width=200 height=50 alt="" border="0"></a><br>

</td>

<!-- kids -->
<td align="CENTER" valign="TOP">
<img src="images/kb_kidsoff.gif" width=200 height=50 alt="" border="0"><br>

<a href="games/kingcentrate/kingcentrate.asp" target="_blank"><img src="images/kb_kingcentrateoff.gif" width=200 height=50 alt="" border="0"></a><br>

<a href="http://207.66.185.129/kcba/ml1enter.htm" target="_blank"><img src="images/kb_fillin1off.gif" width=200 height=50 alt="" border="0"></a><br>

<a href="http://207.66.185.129/kcba/ml2enter.htm" target="_blank"><img src="images/kb_fillin2off.gif" width=200 height=50 alt="" border="0"></a><br>

<a href="games/wordsearch/kidsshows.htm" target="_blank"><img src="images/kb_wordsearchoff.gif" width=200 height=50 alt="" border=0></a>
</td></tr></table>
<% End If %>
<!--#include file="footer.inc" -->


</BODY>
</HTML>
