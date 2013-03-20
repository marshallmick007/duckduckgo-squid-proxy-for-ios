# DuckDuckGo for iOS

Use [Squid](http://www.squid-cache.org/) as a proxy to redirect Yahoo search requests to [DuckDuckGo](http://duckduckgo.com)

## Setup

1. Install [Squid](http://www.squid-cache.org/) as a Proxy Server
2. Copy the `proxy.pac` file to a web server, changing the `PROXTY appletv.local:3128;` to the IP and port of your Squid configuration.
3. Add the following to your Apache web server configuration or `.htaccess` file

		AddType application/x-ns-proxy-autoconfig .pac
		
4. Add a `url_rewrite_program` directive to your `squid.conf`

		# DuckDuckGo redirect
		url_rewrite_program /opt/squid/bin/duckduckgo.redirect.pl
		
5. Restart Squid
6. Open your iOS network configuration. Settings -> Wi-Fi
7. Under **HTTP Proxy**, tap **Auto** and type in the url of your `.pac` file that you deployed in step 2

## Caveat Emptor

"Works on My Machine" ™

My Perl sucks, and so the redirect script sucks by dafault

### TODO



