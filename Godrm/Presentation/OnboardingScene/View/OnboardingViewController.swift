//
//  OnboardingViewController.swift
//  Godrm
//
//  Created by 송태환 on 2022/08/17.
//

import RxAppState
import RxCocoa
import RxSwift
import SnapKit

final class OnboardingViewController: UIViewController {
    private let imageView: UIImageView = {
        let imageView = UIImageView(image: .get(image: .launch))
        return imageView
    }()

    private var viewModel: OnboardingViewModel? {
        didSet {
            guard let viewModel = viewModel else {
                return
            }

            bind(to: viewModel)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
        configureUI()
    }

    private func layout() {
        view.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }

    private func configureUI() {
        navigationController?.navigationBar.barStyle = .black
        view.backgroundColor = .get(.primary)
    }

    private let disposeBag = DisposeBag()

    private func bind(to viewModel: OnboardingViewModel) {
        rx.viewDidLoad
            .debug()
            .bind(to: viewModel.action.fetchOnboardingItems)
            .disposed(by: disposeBag)
    }

    func inject(viewModel: OnboardingViewModel) {
        self.viewModel = viewModel
    }
}
