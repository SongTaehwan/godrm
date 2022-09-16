//
//  UIColor+style.swift
//  Godrm
//
//  Created by 송태환 on 2022/09/16.
//

import UIKit.UIColor

extension UIColor {
    /// (C) Get custom color object from Assets
    static func get(color: ColorAssets) -> UIColor? {
        Self.get(color)
    }

    /// (C) Get custom color object from Assets
    static func get(_ color: ColorAssets) -> UIColor? {
        color.object
    }

    /// (C) User defined custom color assets
    enum ColorAssets: String {
        case primary

        var object: UIColor? {
            .init(named: rawValue)
        }
    }
}
