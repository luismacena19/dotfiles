#!/usr/bin/env python3
import requests
import json
api_key = "ae282a855340382ad9d60ad69e252478"
lat = "-23.5475"
lon = "-46.6361"
url = "https://api.openweathermap.org/data/2.5/onecall?lat=%s&lon=%s&appid=%s&units=metric" % (lat, lon, api_key)
response = requests.get(url)
data = json.loads(response.text)
#print(str(data['current']['weather'][0]['description'])+":"+ str(data['current']['temp'])[:2]+"C°")
with open('/home/nullroot_/.local/share/weather.txt', 'w') as f:
    f.write(str(data['current']['weather'][0]['description'])) 
    f.write(":") 
    f.write(str(data['current']['temp'])[:2])
    f.write("c°")
