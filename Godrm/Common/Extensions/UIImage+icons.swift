//
//  UIImage+icons.swift
//  Godrm
//
//  Created by 송태환 on 2022/08/25.
//

import UIKit.UIImage

extension UIImage {
    /// (C) Get custom icon object from Assets
    static func get(icon: IconAssets) -> UIImage? {
        icon.object
    }

	/// (C) User defined custom icon assets
    enum IconAssets: String {
        case arrowDown = "arrow.down"
        case arrowRight = "arrow.right"
        case arrowUp = "arrow.up"
        case bell
        case calendar
        case cart
        case category
        case check
        case cheese
        case clam
        case due = "date.due"
        case dots
        case drink
        case fish
        case freezer
        case fruit
        case grain
        case info
        case meat
        case nuts
        case QR
        case receipt
        case `repeat`
        case sauce
        case snowflake
        case star
        case sugar
        case vegetable

        var object: UIImage? {
            UIImage(named: rawValue)
        }
    }
}
