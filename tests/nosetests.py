import httplib

site_url="127.0.0.1:8000"

def test_http_response():
   conn = httplib.HTTPConnection(site_url)
   conn.request("HEAD", "/")
   r1 = conn.getresponse()
   assert r1.status == 200
