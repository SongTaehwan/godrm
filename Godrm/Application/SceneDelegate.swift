//
//  SceneDelegate.swift
//  Godrm
//
//  Created by 송태환 on 2022/08/17.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

	var window: UIWindow?

	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		guard let scene = (scene as? UIWindowScene) else { return }
		window = UIWindow(windowScene: scene)

		let navigationController = UINavigationController(rootViewController: OnboardingPageViewController())
		navigationController.view.backgroundColor = .systemBackground
		window?.rootViewController = navigationController
		window?.makeKeyAndVisible()
	}

}

