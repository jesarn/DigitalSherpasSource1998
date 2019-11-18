
<%
if weekday(date) = 1 then
	response.write "<img src=""images/shows/60minutes.jpg"" border=0 alt=""60 Minutes"">"
	response.write "<BR><strong>60 Minutes</strong><br></A>"
	briefsynopsis = "-DB=kiontvdetail.fp3&-Format=synopsis.htm&programlink=60_Minutes&-Max=50&-Find"
elseif weekday(date) = 2 then
	response.write "<img src=""images/shows/brooklyn.jpg"" border=0 alt=""Brooklyn South"">"
	response.write "<BR><strong>Brooklyn South</strong><br></A>"
	briefsynopsis = "-DB=kiontvdetail.fp3&-Format=synopsis.htm&programlink=Brooklyn_South&-Max=50&-Find"
elseif weekday(date) = 3 then
	response.write "<img src=""images/shows/jag.jpg"" border=0 alt=""JAG"">"
	response.write "<BR><strong>JAG</strong><br></A>"
	briefsynopsis = "-DB=kiontvdetail.fp3&-Format=synopsis.htm&programlink=Jag&-Max=50&-Find"
elseif weekday(date) = 5 then
	response.write "<img src=""images/shows/chicago.jpg"" border=0 alt=""Chicago Hope"">"
	response.write "<BR><strong>Chicago Hope</strong><br></A>"
	briefsynopsis = "-DB=kiontvdetail.fp3&-Format=synopsis.htm&programlink=Chicago_Hope&-Max=50&-Find"
elseif weekday(date) = 4 then
	response.write "<img src=""http://207.66.185.129/kion/images/ncaa.gif"" border=0 alt=""NCAA"">"
	response.write "<BR><strong>NCAA Basketball Championship</strong><br></A>"
	briefsynopsis = "-DB=kiontvdetail.fp3&-Format=synopsis.htm&programlink=March_Madness&-Max=50&-Find"
elseif weekday(date) = 6 then
	response.write "<img src=""images/shows/nash.jpg"" border=0 alt=""Nash Bridges"">"
	response.write "<BR><strong>Nash Bridges</strong><br></A>"
	briefsynopsis = "-DB=kiontvdetail.fp3&-Format=synopsis.htm&programlink=Nash_Bridges&-Max=50&-Find"
elseif weekday(date) = 7 then
	response.write "<img src=""images/shows/walker.jpg"" border=0 alt=""Walker, Texas Ranger"">"
	response.write "<BR><strong>Walker, Texas Ranger</strong><br></A>"
	briefsynopsis = "-DB=kiontvdetail.fp3&-Format=synopsis.htm&programlink=Walker,_Texas_Ranger&-Max=50&-Find"
End If

Set HttpObj = Server.CreateObject("AspHTTP.Conn")
HttpObj.Url = "http://207.66.185.129/kion/FMPro?"
HttpObj.PostData = briefsynopsis
HttpObj.RequestMethod = "POST"
strResult = HttpObj.GetURL

response.write strResult

%>
