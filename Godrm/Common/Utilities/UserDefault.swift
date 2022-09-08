//
//  UserDefault.swift
//  Godrm
//
//  Created by 송태환 on 2022/09/08.
//

import Foundation

protocol AnyOptional {
    var isNil: Bool { get }
}

extension Optional: AnyOptional {
    var isNil: Bool { self == nil }
}

/**
 (C) Property Wrapper that manages value from UseDefaults

  The parameter for default value from init method takes precedence over the wrapped value.
 */
@propertyWrapper
struct UserDefault<Value> {
    private var container = UserDefaults.standard
    private let key: UserDefault.Key
    private let defaultValue: Value

    init(container: UserDefaults = .standard, key: UserDefault.Key, defaultValue: Value) {
        self.container = container
        self.key = key
        self.defaultValue = defaultValue
    }

    init(wrappedValue value: Value, key: UserDefault.Key) {
        self.init(key: key, defaultValue: value)
    }

    var wrappedValue: Value {
        get {
            container.object(forKey: key.value) as? Value ?? defaultValue
        }
        set {
            if let value = newValue as? AnyOptional, value.isNil {
                container.removeObject(forKey: key.value)
            } else {
                container.set(newValue, forKey: key.value)
            }
        }
    }
}

extension UserDefault where Value: ExpressibleByNilLiteral {
    /// (C) Creates a new User Defaults property wrapper for the given key. This allows nilable wrapped value.
    init(key: UserDefault.Key) {
        self.init(key: key, defaultValue: nil)
    }
}

extension UserDefault {
    /**
     (C) Key for retrieving or storing value from UserDefaults
     */
    enum Key: String {
        /**
         (C) A case for authentication token
         */
        case token

        var value: String { rawValue }
    }
}
