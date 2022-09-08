//
//  UIFont+style.swift
//  Godrm
//
//  Created by 송태환 on 2022/08/25.
//

import UIKit.UIFont
extension UIFont {
    /// (C) Get custom font object from Assets
    static func get(_ font: FontAssets) -> UIFont {
        font.object
    }

    /// (C) User defined custom font assets
    enum FontAssets {
        case caption3(ofSize: CGFloat = 10, weight: Weight = .regular)
        case caption2(ofSize: CGFloat = 11, weight: Weight = .regular)
        case caption1(ofSize: CGFloat = 12, weight: Weight = .regular)
        case footNote(ofSize: CGFloat = 13, weight: Weight = .regular)
        case subHeadline(ofSize: CGFloat = 15, weight: Weight = .regular)
        case callout(ofSize: CGFloat = 16, weight: Weight = .regular)
        case headline(ofSize: CGFloat = 17, weight: Weight = .bold)
        case body(ofSize: CGFloat = 17, weight: Weight = .regular)
        case title3(ofSize: CGFloat = 20, weight: Weight = .regular)
        case title2(ofSize: CGFloat = 22, weight: Weight = .regular)
        case title1(ofSize: CGFloat = 28, weight: Weight = .regular)
        case largeTitle(ofSize: CGFloat = 34, weight: Weight = .regular)

        var object: UIFont {
            switch self {
            case let .caption1(size, weight):
                return UIFont.systemFont(ofSize: size, weight: weight)
            case let .caption2(size, weight):
                return UIFont.systemFont(ofSize: size, weight: weight)
            case let .caption3(size, weight):
                return UIFont.systemFont(ofSize: size, weight: weight)
            case let .headline(size, weight):
                return UIFont.systemFont(ofSize: size, weight: weight)
            case let .subHeadline(size, weight):
                return UIFont.systemFont(ofSize: size, weight: weight)
            case let .title1(size, weight):
                return UIFont.systemFont(ofSize: size, weight: weight)
            case let .title2(size, weight):
                return UIFont.systemFont(ofSize: size, weight: weight)
            case let .title3(size, weight):
                return UIFont.systemFont(ofSize: size, weight: weight)
            case let .largeTitle(size, weight):
                return UIFont.systemFont(ofSize: size, weight: weight)
            case let .footNote(size, weight):
                return UIFont.systemFont(ofSize: size, weight: weight)
            case let .callout(size, weight):
                return UIFont.systemFont(ofSize: size, weight: weight)
            case let .body(size, weight):
                return UIFont.systemFont(ofSize: size, weight: weight)
            }
        }
    }
}
