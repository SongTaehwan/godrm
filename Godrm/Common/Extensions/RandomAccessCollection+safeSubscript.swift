//
//  RandomAccessCollection+safeSubscript.swift
//  Godrm
//
//  Created by 송태환 on 2022/08/25.
//

import Foundation

extension RandomAccessCollection {
    /// (C) Access the element at the index. nil if not exist
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }

    /// (C) Returns the element at the specified position. nil if not exist
    func get(at index: Index) -> Element? {
        self[safe: index]
    }
}
