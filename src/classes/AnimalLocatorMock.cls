@isTest
global class AnimalLocatorMock implements HttpCalloutMock {
	global HTTPResponse respond(HTTPRequest test) {
		HttpResponse response = new HttpResponse();
		response.setHeader('Content-Type', 'application/json');
		response.setBody('{ "animal": { "id": "5", "name": "Tiger",  "eats": "meat", "says": "roar" }}');
		response.setStatusCode(200);
		return response;
	}
}