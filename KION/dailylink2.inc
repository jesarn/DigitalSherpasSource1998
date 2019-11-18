<%
if day(date) < 23 then
	response.write "http://207.66.185.129/kion/FMPro?-DB=kiontvdetail.fp3&-Format=tvdetail_thisweek.htm&programlink=Olympics_Feb" & day(date) & "&-Max=50&-Find"

elseif weekday(date) = 1 then
	response.write "http://207.66.185.129/kion/FMPro?-DB=kiontvdetail.fp3&-Format=tvdetail_thisweek.htm&program=60_Minutes&-Max=50&-Find"

elseif weekday(date) = 2 then
	response.write "http://207.66.185.129/kion/FMPro?-DB=kiontvdetail.fp3&-Format=tvdetail_thisweek.htm&program=Brooklyn_South&-Max=50&-Find"

elseif weekday(date) = 3 then
	response.write "http://207.66.185.129/kion/FMPro?-DB=kiontvdetail.fp3&-Format=tvdetail_thisweek.htm&program=JAG&-Max=50&-Find"

elseif weekday(date) = 4 then
	response.write "http://207.66.185.129/kion/FMPro?-DB=kiontvdetail.fp3&-Format=tvdetail_thisweek.htm&program=Chicago_Hope&-Max=50&-Find"

elseif weekday(date) = 5 then
	response.write "http://207.66.185.129/kion/FMPro?-DB=kiontvdetail.fp3&-Format=tvdetail_thisweek.htm&program=Diagnosis_Murder&-Max=50&-Find"

elseif weekday(date) = 6 then
	response.write "http://207.66.185.129/kion/FMPro?-DB=kiontvdetail.fp3&-Format=tvdetail_thisweek.htm&program=Nash_Bridges&-Max=50&-Find"

elseif weekday(date) = 7 then
	response.write "http://207.66.185.129/kion/FMPro?-DB=kiontvdetail.fp3&-Format=tvdetail_thisweek.htm&program=Walker_Texas_Ranger&-Max=50&-Find"
End If

%>