//
//  UIImage+images.swift
//  Godrm
//
//  Created by 송태환 on 2022/08/25.
//

import UIKit.UIImage

extension UIImage {
    enum Images: String {
        case launch
    }

    convenience init?(image: Images) {
        self.init(named: image.rawValue)
    }
}
