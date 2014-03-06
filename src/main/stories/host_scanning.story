Automated host scanning

Meta: @story HostScan

Narrative:
In order to reduce the risk of vulnerabilities on the hosts
As an operations engineer responsible for the configuration of the host systems
I want to scan the hosts for known security vulnerabilities
					 

Scenario: The host systems should not expose known security vulnerabilities

Given a nessus server at https://localhost:8834
And the nessus username continuum and the password continuum
And the scanning policy named test
And the target hosts
|hostname|
|baseUrl|
When the scanner is run with scan name bddscan
And the list of issues is stored
And the following false positives are removed
|pluginID		|hostname		|
|43111          |127.0.0.1      |
Then no severity: 1 or higher issues should be present