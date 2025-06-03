#!/usr/bin/env python3
"""
Debug script to check user session data structure
"""

import json

def debug_user_session_structure():
    """
    Simulate the user session data structure to debug the issue
    """
    
    print("🔍 Debugging User Session Data Structure")
    print("=" * 50)
    
    # Simulate what the mobile API returns
    mock_api_response = {
        'status': 'success',
        'message': 'Login successful',
        'data': {
            'user_id': 4,
            'user_type': 'courier',
            'status': 'Approved',
            'profile': {
                'name': 'John Doe',
                'email': 'john.doe@email.com',
                'phone': '+63-912-345-6789',
                'profile_pic': None
            }
        }
    }
    
    print("\n1. Mobile API Response Structure:")
    print(json.dumps(mock_api_response, indent=2))
    
    # Simulate what should be saved to UserSession
    user_data_to_save = {
        'user_id': str(mock_api_response['data']['user_id']),
        'user_type': mock_api_response['data']['user_type'],
        'profile': mock_api_response['data']['profile'],  # This is the corrected part
        'login_time': '2024-12-01T10:00:00'
    }
    
    print("\n2. Corrected UserSession Data Structure:")
    print(json.dumps(user_data_to_save, indent=2))
    
    # Show how the sidebar should access the data
    print("\n3. How Sidebar Should Access Data:")
    print(f"   courierName = userData['profile']['name']")
    print(f"   courierEmail = userData['profile']['email']")
    print(f"   Expected Name: {user_data_to_save['profile']['name']}")
    print(f"   Expected Email: {user_data_to_save['profile']['email']}")
    
    # Show the previous incorrect structure
    incorrect_structure = {
        'user_id': '4',
        'user_type': 'Courier',
        'profile': {  # This was the problem - profile contained the entire user object
            'user_id': 4,
            'user_role': 'Courier',
            'status': 'Approved',
            'profile': {  # The actual profile was nested deeper
                'name': 'John Doe',
                'email': 'john.doe@email.com',
                'phone': '+63-912-345-6789',
                'profile_pic': None
            }
        },
        'login_time': '2024-12-01T10:00:00'
    }
    
    print("\n4. Previous Incorrect Structure (causing the issue):")
    print(json.dumps(incorrect_structure, indent=2))
    print(f"   Would need: userData['profile']['profile']['name'] (double nesting)")
    
    print("\n" + "=" * 50)
    print("✅ Fix Applied:")
    print("   - Changed login_screen.dart to pass only result['user']['profile'] as profileData")
    print("   - Now userData['profile']['name'] should work correctly")
    print("   - Added debug logging to sidebar to verify the fix")

if __name__ == "__main__":
    debug_user_session_structure() 