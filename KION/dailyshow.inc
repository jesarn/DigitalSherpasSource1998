
<%
briefsynopsis = "-DB=kionprogramming.fp3&-Format=synopsis3.htm&id=prime&date=" & date() & "&-Max=50&-Find"

Set HttpObj = Server.CreateObject("AspHTTP.Conn")
HttpObj.Url = "http://207.66.185.129/kion/FMPro?"
HttpObj.PostData = briefsynopsis
HttpObj.RequestMethod = "POST"
strResult = HttpObj.GetURL

errormessagepos = InStr(UCase(strResult),  "<HTML>")
if errormessagepos then %>
<!-- db -->

<% elseif strResult = "" then %>
<!-- db timeout -->

<% else %>
<img src="images/tonightonkion.gif" width=125 height=32 alt="" border=0><br>
<P><a href="programming/today_detail.asp" target="main">
<%= strResult %></P>

<% End If %>

