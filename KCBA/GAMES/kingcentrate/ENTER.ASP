<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>Untitled</TITLE>
</HEAD>

<BODY>

<%  Set BrowserCapabilities = Server.CreateObject("MSWC.BrowserType") %>  
<%If BrowserCapabilities.javascript Then%>
<input type="button" Value="KingCentrate!" ONCLICK="window.open('kingcentrate.asp', 'Sample', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes,copyhistory=yes,width=390,height=450')"></FORM>
<% else %>
<a href="kingcentrate.asp" target="_new">Play Kingcentrate!</a>
<% End If %>
<br><br>
<em>Note, playing the game will open a new browser window.</em>
</BODY>
</HTML>
