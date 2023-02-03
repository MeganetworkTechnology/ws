
<%

PKName=request.form("PKName")

IF PKName="com.adisesolution" then

STATUS="SUCCESS"

STATUSCODE="1000"

VER="3.3"

RemarksResponse="New Version Available 3.3"

else

STATUS="FAILED"

STATUSCODE="1014"

END IF

response.ContentType = "application/json"

RESPONSE.WRITE "{" + chr(34) + "Version" + chr(34) + ":" + chr(34) + cstr(VER) + chr(34) + "," + chr(34) + "Remark" + chr(34) + ":" + chr(34) + cstr(RemarksResponse) + chr(34) +"," + chr(34) + "Status" + chr(34) + ":" + chr(34) + cstr(STATUS) + chr(34) + "," + chr(34) + "ErrorCode" + chr(34) + ":" + chr(34) + cstr(STATUSCODE) + chr(34) + "}"



%>
