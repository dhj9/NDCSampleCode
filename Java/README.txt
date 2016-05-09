Sample Java code to demonstrate how to connect to the NDC Sandboxes and send / receive an NDC message which is loaded from
the NDC_Request.xml file.

A sample NDC request is supplied in the resources sub-directory and should be copied to the appropriate project path prior to executing the client.

Users should insert their API key in the request header "Authorization-Key" in place of "API-KEY-GOES-HERE".

This code depends on the following libraries which can be found at http://hc.apache.org/httpclient-3.x/ under HttpClient 4.5.1:

commons-logging
httpclient
httpclient-cache
httpclient-win
httpcore
httpmime

A pre-compiled and executable jar file which will submit an AirShoppingRQ, ndcclient.jar is supplied.
Users may modify the contents of the xml file to rapidly get started with their NDC interface testing.