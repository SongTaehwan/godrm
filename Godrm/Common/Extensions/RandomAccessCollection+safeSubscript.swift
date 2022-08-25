//
//  RandomAccessCollection+safeSubscript.swift
//  Godrm
//
//  Created by 송태환 on 2022/08/25.
//

import Foundation

extension RandomAccessCollection {
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }

    /// (C) Returns the element at the specified position.
    func get(at index: Index) -> Element? {
        self[safe: index]
    }
}
