//
//  AppDelegate.swift
//  TestProject
//
//  Created by ınv on 18.09.2023.
//

import UIKit

protocol MainProtocol {
    func getMainCoordinator(coordinator: MainCoordinator)
}

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var appCordinator: MainCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        let window = UIWindow(frame: UIScreen.main.bounds)
//        window.makeKeyAndVisible()
//        let navigationController = UINavigationController(rootViewController: ViewController())
//        window.rootViewController = navigationController  
//        self.window = window
        
        appCordinator = MainCoordinator()
        appCordinator?.start()

//        let window = UIWindow(frame: UIScreen.main.bounds)
//        window.makeKeyAndVisible()
//        let navigationController = UINavigationController()
//        self.appCordinator = MainCoordinator(navController: navigationController)
//        appCordinator?.start()
//        window.rootViewController = navigationController
//        self.window = window
//        
        return true
    }




}

