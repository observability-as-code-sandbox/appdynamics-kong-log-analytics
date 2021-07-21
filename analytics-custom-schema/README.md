## Trying to push Koong request/reponse logs to an custom analytics schema in AppD

Docs reference
https://konghq.com/blog/custom-lua-plugin-kong-gateway
https://docs.konghq.com/hub/kong-inc/file-log/#log-format

Example controller connection:

Controller: ***REMOVED***
Analytics API: ***REMOVED***
Account_name: ***REMOVED***

Findings:
> 1) creating a schema cannot process list of objects

> 2) you cannot import data that contains additional fields

{"statusCode":400,"code":"Invalid.UnrecognizedField","message":"Unregistered field: account=[customer1_e52eb4e7-KEY-9685502317f2], eventIndex=[0], fieldName=[NotInSchema]","developerMessage":null}

