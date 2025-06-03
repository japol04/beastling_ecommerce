import requests
import json

def simulate_mobile_app():
    """Simulate exactly what the mobile app's CourierService.getDeliveries() does"""
    try:
        # This mimics the mobile app's HTTP request
        uri = 'http://localhost:5000/api/courier/deliveries'
        params = {
            'status': 'all',
            'sort_by': 'date_delivered',
            'order': 'desc',
            'page': '1',
            'limit': '50',
        }
        
        response = requests.get(uri, params=params, headers={'Content-Type': 'application/json'})
        print(f'Response status: {response.status_code}')
        
        if response.status_code == 200:
            # This is what the mobile service returns
            mobile_service_result = {
                'success': True,
                'data': response.json(),  # This is the entire API response
            }
            
            print('Mobile service result structure:')
            print(f"result['success']: {mobile_service_result['success']}")
            print(f"result['data'] keys: {list(mobile_service_result['data'].keys())}")
            
            # This is what the mobile app does
            if mobile_service_result['success']:
                data = mobile_service_result['data']  # This is the entire API response
                print(f"data keys: {list(data.keys())}")
                
                # Try to access what the mobile app tries to access
                try:
                    status_counts = data['status_counts']
                    print(f"status_counts: {status_counts}")
                    
                    for_delivery = data['status_counts']['for_delivery']
                    print(f"for_delivery: {for_delivery}")
                    
                    print("✅ SUCCESS: Mobile app simulation passed!")
                    
                except KeyError as e:
                    print(f"❌ KeyError: {e}")
                    print(f"Available keys in data: {list(data.keys())}")
                    
                except TypeError as e:
                    print(f"❌ TypeError: {e}")
                    print(f"data['status_counts'] is: {data.get('status_counts', 'NOT FOUND')}")
                    
        else:
            print(f'Request failed with status {response.status_code}: {response.text}')
            
    except Exception as e:
        print(f'Exception occurred: {e}')

if __name__ == '__main__':
    simulate_mobile_app() 