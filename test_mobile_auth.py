#!/usr/bin/env python3
"""
Test script to verify mobile courier authentication and API endpoints
"""

import requests
import json

# Configuration
BASE_URL = "http://localhost:5000"
TEST_COURIER_ID = "4"  # Use a known courier ID for testing

def test_mobile_auth():
    """Test mobile authentication and API endpoints"""
    
    print("🧪 Testing Mobile Courier Authentication")
    print("=" * 50)
    
    # Headers with courier authentication
    headers = {
        'Content-Type': 'application/json',
        'X-Courier-ID': TEST_COURIER_ID
    }
    
    # Test 1: Debug endpoint
    print("\n1. Testing debug endpoint...")
    try:
        response = requests.get(f"{BASE_URL}/api/courier/debug", headers=headers)
        print(f"   Status: {response.status_code}")
        if response.status_code == 200:
            data = response.json()
            print(f"   ✅ Success: Courier ID {data['debug_info']['courier_id']}")
            print(f"   📊 Deliveries: {data['debug_info']['delivery_count']}")
            if data['debug_info']['courier_info']:
                courier = data['debug_info']['courier_info']
                print(f"   👤 Name: {courier['firstname']} {courier['lastname']}")
                print(f"   📧 Email: {courier['email']}")
        else:
            print(f"   ❌ Failed: {response.text}")
    except Exception as e:
        print(f"   ❌ Error: {e}")
    
    # Test 2: Dashboard endpoint
    print("\n2. Testing dashboard endpoint...")
    try:
        response = requests.get(f"{BASE_URL}/api/courier/dashboard", headers=headers)
        print(f"   Status: {response.status_code}")
        if response.status_code == 200:
            data = response.json()
            if data.get('success'):
                earnings = data.get('earnings_stats', {})
                deliveries = data.get('delivery_stats', {})
                print(f"   ✅ Success: Dashboard loaded")
                print(f"   💰 Total Earnings: ₱{earnings.get('total_earnings', 0)}")
                print(f"   📦 Total Deliveries: {earnings.get('total_deliveries', 0)}")
                print(f"   🚚 Pending: {deliveries.get('pending_deliveries', 0)}")
                print(f"   🏃 Active: {deliveries.get('active_deliveries', 0)}")
                print(f"   ✅ Completed: {deliveries.get('completed_deliveries', 0)}")
            else:
                print(f"   ❌ API Error: {data.get('message', 'Unknown error')}")
        else:
            print(f"   ❌ Failed: {response.text}")
    except Exception as e:
        print(f"   ❌ Error: {e}")
    
    # Test 3: Deliveries endpoint
    print("\n3. Testing deliveries endpoint...")
    try:
        response = requests.get(f"{BASE_URL}/api/courier/deliveries", headers=headers)
        print(f"   Status: {response.status_code}")
        if response.status_code == 200:
            data = response.json()
            deliveries = data.get('deliveries', [])
            status_counts = data.get('status_counts', {})
            print(f"   ✅ Success: {len(deliveries)} deliveries found")
            print(f"   📊 Status breakdown:")
            print(f"      - For Delivery: {status_counts.get('for_delivery', 0)}")
            print(f"      - Out for Delivery: {status_counts.get('out_for_delivery', 0)}")
            print(f"      - Delivered: {status_counts.get('delivered', 0)}")
            print(f"      - Total: {status_counts.get('total', 0)}")
        else:
            print(f"   ❌ Failed: {response.text}")
    except Exception as e:
        print(f"   ❌ Error: {e}")
    
    # Test 4: Finance endpoint
    print("\n4. Testing finance endpoint...")
    try:
        response = requests.get(f"{BASE_URL}/api/courier/finance", headers=headers)
        print(f"   Status: {response.status_code}")
        if response.status_code == 200:
            data = response.json()
            sales = data.get('sales', [])
            stats = data.get('statistics', {})
            print(f"   ✅ Success: {len(sales)} sales records found")
            print(f"   💰 Total Earnings: ₱{stats.get('total_earnings', 0)}")
            print(f"   📊 Average Fee: ₱{stats.get('average_delivery_fee', 0):.2f}")
            print(f"   🔝 Max Fee: ₱{stats.get('max_delivery_fee', 0)}")
        else:
            print(f"   ❌ Failed: {response.text}")
    except Exception as e:
        print(f"   ❌ Error: {e}")
    
    # Test 5: Notifications endpoint
    print("\n5. Testing notifications endpoint...")
    try:
        response = requests.get(f"{BASE_URL}/api/courier/notifications", headers=headers)
        print(f"   Status: {response.status_code}")
        if response.status_code == 200:
            data = response.json()
            if data.get('success'):
                notifications = data.get('notifications', [])
                unread_count = data.get('unread_count', 0)
                print(f"   ✅ Success: {len(notifications)} notifications found")
                print(f"   📬 Unread: {unread_count}")
            else:
                print(f"   ❌ API Error: {data.get('message', 'Unknown error')}")
        else:
            print(f"   ❌ Failed: {response.text}")
    except Exception as e:
        print(f"   ❌ Error: {e}")
    
    print("\n" + "=" * 50)
    print("🏁 Test completed!")
    print("\nIf you see real data above (not zeros), the authentication fix worked!")
    print("If you see mostly zeros, there might be no data for this courier ID.")

if __name__ == "__main__":
    test_mobile_auth() 