//
//  SceneDelegate.swift
//  ios-subway-station
//
//  Created by 허지인 on 2021/12/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.backgroundColor = .systemBackground
        window?.rootViewController = UINavigationController(rootViewController: StationSearchViewController())
        //navigation bar에 item으로 UISearchController의 Serch Bar를 embeded 해줘야함
        window?.makeKeyAndVisible()
    }
}

