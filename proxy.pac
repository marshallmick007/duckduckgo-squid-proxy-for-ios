function FindProxyForURL(url, host)
{
  if( dnsDomainIs(host, ".yahoo.com") ) {
    return "PROXY appletv.local:3128; DIRECT";
  }
  else {
    return "DIRECT";
  }
}
