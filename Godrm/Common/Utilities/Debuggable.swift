//
//  Debuggable.swift
//  Godrm
//
//  Created by 송태환 on 2022/08/27.
//

import Foundation

@propertyWrapper
struct Debuggable<T>: CustomStringConvertible {
    private let name: String
    private let caller: String
    private let location: String
    private var value: T
    var description: String {
        """
        \(name)
        │ Caller: \(caller)
        │ Location: \(location)
        │ Type of value: \(type(of: value))
        │ Current value: \(value)
        """
    }

    init(
        wrappedValue: T,
        name: String = "Debuggable",
        caller: String = #function,
        location: String = #fileID
    ) {
        self.value = wrappedValue
        self.name = name
        self.caller = caller
        self.location = location
    }

    var wrappedValue: T {
        get {
            print(self)
            return value
        }
        set {
            print("""
            \(self)
            │ Will be updated to new value: \(newValue)
            """)
            value = newValue
        }
    }
}
