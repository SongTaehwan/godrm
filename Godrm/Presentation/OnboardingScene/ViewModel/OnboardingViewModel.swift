//
//  OnboardingViewModel.swift
//  Godrm
//
//  Created by 송태환 on 2022/09/16.
//

import RxRelay
import RxSwift

struct OnboardingViewModelAction {
    let fetchOnboardingItems = PublishRelay<Void>()
}

struct OnboardingViewModelState {
    let onboardingItems = PublishRelay<[OnboardingItem]>()
}

protocol OnboardingViewModel {
    var action: OnboardingViewModelAction { get }
    var state: OnboardingViewModelState { get }
}

struct DefaultOnboardingViewModel: OnboardingViewModel {
    private let disposeBag = DisposeBag()

    let action = OnboardingViewModelAction()
    let state = OnboardingViewModelState()

    init() {
        action.fetchOnboardingItems
            .map {
				// TODO: API Call from repository
                []
            }
			.retry(3)
            .bind(to: state.onboardingItems)
            .disposed(by: disposeBag)

		// TODO: 데이터 응답 받은 후 데이터를 코디네이터로 보냄
    }
}
