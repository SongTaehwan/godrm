//
//  UIImage+images.swift
//  Godrm
//
//  Created by 송태환 on 2022/08/25.
//

import UIKit.UIImage

extension UIImage {
    /// (C) Get custom image object from Assets
    static func get(_ image: ImageAssets) -> UIImage? {
        image.object
    }

    /// (C) Get custom image object from Assets
    static func get(image: ImageAssets) -> UIImage? {
        Self.get(image)
    }

    /// (C) User defined custom image assets
    enum ImageAssets: String {
        case launch

        var object: UIImage? {
            UIImage(named: rawValue)
        }
    }
}
