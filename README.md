# ImageEngine-customer-tests:

Using the urls supplied by the customer, create requests to and from multiple geographic locations, both with and without cache-busting enabled. 
Perform these tests multiple times over the course of several time periods within a 24 hour span. 

The proposed methodology is intended to identify geographic cold spots, eliminate network jitter, and compare against three environments (origin, cold-cache, warm-cache).


  
	lookup: 	The time, in seconds, it took from the start until the name resolving was completed.
	connect: 	The time, in seconds, it took from the start until the TCP connect to the remote host (or proxy) was completed.
	appconnect: 	The time, in seconds, it took from the start until the SSL/SSH/etc connect/handshake to the remote host was completed. 
	pretransfer: 	The time, in seconds, it took from the start until the file transfer was just about to begin. 
			This includes all pre-transfer commands and negotiations that are specific to the particular protocol(s) involved.
	redirect: 	The time, in seconds, it took for all redirection steps include name lookup, connect, pretransfer and transfer before 
			the final transaction was started. time_redirect shows the complete execution time for multiple redirections. 
	starttransfer: 	The time, in seconds, it took from the start until the first byte was just about to be transferred. This includes 
			time_pretransfer and also the time the server needed to calculate the result.
	total: 		The total time, in seconds, that the full operation lasted. The time will be displayed with millisecond resolution.


	README.md  - This file
	curl.config  - configuration file for curl (Phone UA)
	curl.config.desktop - configuration file for curl (desktop UA)
	examples  - Command line examples
	loadbalancers - list of current frontend loadbalancers
	run-imageengine-cache-status.example - example script to test a given set of urls, against a known set of loadbalancers
	run-imageengine.example - verbose test given set of urls, against a known set of loadbalancers
	run-website.example - verbose test given set of urls, against a known set of loadbalancers
	url.list
