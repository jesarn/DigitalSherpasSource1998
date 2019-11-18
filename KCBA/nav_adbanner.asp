<%

Sub Session_OnStart
	Session("Hits") = 0
End Sub

if Session("Hits") > 3 then
	Session("Hits") = 0
End If

if Session("Hits") = 0 then %>

<SCRIPT RUNAT=SERVER LANGUAGE=JSCRIPT>
function MatchLogicTimeStamp ()
{
var now = new Date;
Response.Write((now.getYear()+1900) + "." + (now.getMonth()+1)
+ "." + now.getDate() + "." + now.getHours()
+ "." + now.getMinutes() + "." + now.getSeconds())
}
</SCRIPT>


<A HREF="http://gm.preferences.com/click.ng;spacedesc=CMINet1_KCBA_234x60_RunOfSite_Any&time=<% Call MatchLogicTimeStamp %>" TARGET="_top">
<IMG WIDTH=234 HEIGHT=60 SRC="http://gm.preferences.com/image.ng;spacedesc=CMINet1_KCBA_234x60_RunOfSite_Any"></A>

<% elseif Session("Hits") = 1 then %>
	<a href="fun.asp" target="main"><img src="images/ads/games.gif" align="right" width=200 height=59 alt="" border="0"></a>

<% elseif Session("Hits") = 2 then %>
	<a href="theconnection/main.asp" target="main"><img src="images/ads/classifieds.gif" align="right" width=200 height=59 alt="" border="0"></a>

<% elseif Session("Hits") = 3 then %>

	<a href="http://207.66.185.129/kcba/postcard_main.htm" target="main"><img src="images/ads/postcard.gif" align="right" width=200 height=59 alt="" border="0"></a>

<% End If

Session("Hits") = Session("Hits") + 1

%>
