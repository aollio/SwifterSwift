//
//  UserDefaultsExtensions.swift
//  SwifterSwift
//
//  Created by Omar Albeik on 9/5/17.
//  Copyright © 2017 SwifterSwift
//

#if canImport(Foundation) && !os(Linux)
import Foundation

// MARK: - Methods
public extension UserDefaults {

    /// SwifterSwift: get object from UserDefaults by using subscript
    ///
    /// - Parameter key: key in the current user's defaults database.
    subscript(key: String) -> Any? {
        get {
            return object(forKey: key)
        }
        set {
            set(newValue, forKey: key)
        }
    }

    /// SwifterSwift: Date from UserDefaults.
    ///
    /// - Parameter forKey: key to find date for.
    /// - Returns: Date object for key (if exists).
    func date(forKey key: String) -> Date? {
        return object(forKey: key) as? Date
    }
    
    /// SwifterSwift: Int from UserDefaults.
    ///
    /// - Parameter for: key to find Int forKey.
    /// - Parameter default: default value if not exists
    /// - Returns: Float object for key (if not exists, default value will returned).
    func int(for key: String, default defaultValue: Int) -> Int {
        return object(forKey: key) as? Int ?? defaultValue
    }
    
    /// SwifterSwift: Float from UserDefaults.
    ///
    /// - Parameter for: key to find float forKey.
    /// - Parameter default: default value if not exists
    /// - Returns: Float object for key (if not exists, default value will returned).
    func float(for key: String, default defaultValue: Float) -> Float {
        return object(forKey: key) as? Float ?? defaultValue
    }
    
    /// SwifterSwift: Float from UserDefaults.
    ///
    /// - Parameter for: key to find float forKey.
    /// - Parameter default: default value if not exists
    /// - Returns: Float object for key (if not exists, default value will returned).
    func double(for key: String, default defaultValue: Double) -> Double {
        return object(forKey: key) as? Double ?? defaultValue
    }

    /// SwifterSwift: Retrieves a Codable object from UserDefaults.
    ///
    /// - Parameters:
    ///   - type: Class that conforms to the Codable protocol.
    ///   - key: Identifier of the object.
    ///   - decoder: Custom JSONDecoder instance. Defaults to `JSONDecoder()`.
    /// - Returns: Codable object for key (if exists).
    func object<T: Codable>(_ type: T.Type, with key: String, usingDecoder decoder: JSONDecoder = JSONDecoder()) -> T? {
        guard let data = value(forKey: key) as? Data else { return nil }
        return try? decoder.decode(type.self, from: data)
    }

    /// SwifterSwift: Allows storing of Codable objects to UserDefaults.
    ///
    /// - Parameters:
    ///   - object: Codable object to store.
    ///   - key: Identifier of the object.
    ///   - encoder: Custom JSONEncoder instance. Defaults to `JSONEncoder()`.
    func set<T: Codable>(object: T, forKey key: String, usingEncoder encoder: JSONEncoder = JSONEncoder()) {
        let data = try? encoder.encode(object)
        set(data, forKey: key)
    }
    

}

#endif
