#!/usr/bin/perl
$mirror = "duckduckgo.com";

$| = 1;
while (<>) {
    @line = split;
    $_ = $line[0];
    if (m/^http:\/\/((?:[a-z0-9]+\.)?yahoo\.com)\/(.*)\?(.*)p=(.*)$/ &&
        $1 ne $mirror) {
        print "http://" . $mirror . "/?q=" . $4 . "\n";
    } else {
        print $_ . "\n";
    }
}
