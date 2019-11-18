
<%
Set HttpObj = Server.CreateObject("AspHTTP.Conn")
HttpObj.Url = "http://207.66.185.129/kion/"
HttpObj.PostData = "FMPro?-DB=kiontvdetail.fp3&Format=synopsis.htm&program=Brooklyn South&-Max=50&-Find"
HttpObj.RequestMethod = "POST"
strResult = HttpObj.GetURL
%>