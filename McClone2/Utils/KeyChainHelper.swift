//
//  KeyChainHelper.swift
//  McClone2
//
//  Created by IFTS40 on 31/05/24.
//

import Foundation
import Security

class KeyChainHelper{
    static func storeData(data: Data, 
                          forService service: String,
                          account: String)-> Bool{
        
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: service,
            kSecAttrAccount as String: account,
            kSecValueData as String: data
        ]
        
        let status = SecItemAdd(query as CFDictionary, nil)
        print(status)
        
        return status == errSecSuccess
    }
    
    static func retrieveData(forService service: String, 
                             account: String)-> Data? {
        
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: service,
            kSecAttrAccount as String: account,
            kSecReturnData as String: kCFBooleanTrue as Any,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
        
        var item: CFTypeRef?
        let status = SecItemCopyMatching(query as CFDictionary, &item)
        
        guard status == errSecSuccess else{
            print("Error retrieving data: \(status)")
            return nil
        }
        
        return item as? Data
    }
}
