//
//  Coordinator.swift
//  TestProject
//
//  Created by ınv on 27.09.2023.
//

import Foundation


import UIKit

class MainCoordinator {
    
    
    

    private let window: UIWindow
    private var rootNavigationController: UINavigationController
    
    init() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.rootNavigationController = UINavigationController()
        self.window.rootViewController = self.rootNavigationController
        self.window.makeKeyAndVisible()
    }
    
    func start() {
        self.rootNavigationController.pushViewController(ViewController(viewModel: MainViewModel(coordinator: self)), animated: false)
        
    }
    func navigateToDetail(result: Result) {
        var detailViewController = DetailViewController(detailVM: DetailViewModel(result: result))
        rootNavigationController.present(detailViewController, animated: true)
    }
    
    
   
}
