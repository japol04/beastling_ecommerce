import requests
import json

try:
    response = requests.get('http://localhost:5000/api/courier/deliveries?status=all&limit=5')
    print(f'Status: {response.status_code}')
    
    if response.status_code == 200:
        data = response.json()
        print(f'Response has data: {"data" in data}')
        if 'data' in data:
            print(f'Data keys: {list(data["data"].keys())}')
            if 'status_counts' in data['data']:
                print(f'Status counts: {data["data"]["status_counts"]}')
        print(f'Full response structure: {json.dumps(data, indent=2)[:500]}...')
    else:
        print(f'Error response: {response.text}')
except Exception as e:
    print(f'Error: {e}') 