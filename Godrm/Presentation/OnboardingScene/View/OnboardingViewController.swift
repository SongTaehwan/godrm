//
//  OnboardingPageViewController.swift
//  Godrm
//
//  Created by 송태환 on 2022/08/17.
//

import SnapKit
import UIKit

final class OnboardingPageViewController: UIViewController {
    private let imageView: UIImageView = {
        let imageView = UIImageView(image: .get(image: .launch))
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    private func configureUI() {
        navigationController?.navigationBar.barStyle = .black
        view.backgroundColor = .get(.primary)

        view.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}
