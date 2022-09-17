//
//  SceneDelegate.swift
//  Godrm
//
//  Created by 송태환 on 2022/08/17.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo _: UISceneSession, options _: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else {
            return
        }

        window = UIWindow(windowScene: scene)

        let vc = OnboardingViewController()
        vc.inject(viewModel: DefaultOnboardingViewModel())
        let navigationController = UINavigationController(rootViewController: vc)

        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
