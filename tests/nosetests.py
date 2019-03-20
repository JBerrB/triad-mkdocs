import urllib

site_url="http://127.0.0.1:8000"

def test_http_response():
   response_code = urllib.urlopen(site_url).getcode()
   assert response_code == 200

def test_index_title():
   response_content = urllib.urlopen(site_url).read()
   assert "TRI-AD Demo Test" in response_content
