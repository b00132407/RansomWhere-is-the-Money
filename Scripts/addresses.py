import requests
import json

counter = 0
url = 'https://api.ransomwhe.re/export'
response = requests.get(url)
data = response.json()

with open('RushSanctionOutput.txt', 'w') as file:
    for item in data['result']:
        if item['family'] == 'Rush/Sanction':
            address = item['address']
            file.write(address + '\n')
            print(address)
