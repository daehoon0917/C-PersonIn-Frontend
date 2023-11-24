//
//  TabBarController.swift
//  CafeIn
//
//  Created by 성대훈 on 11/24/23.
//

import UIKit

class TabBarController: UITabBarController {
    
    private lazy var searchViewController: UIViewController = {
        let searchVC = SearchViewController()
        let navigationController = UINavigationController(rootViewController: searchVC)
        let tabBarItem = UITabBarItem(title: "", image: UIImage(named: "search"), selectedImage: UIImage(named: "search"))
        navigationController.tabBarItem = tabBarItem
        return navigationController
    }()
    
    private lazy var homeViewController: UIViewController = {
        let homeVC = HomeViewController()
        let navigationController = UINavigationController(rootViewController: homeVC)
        let tabBarItem = UITabBarItem(title: "", image: UIImage(named: "home"), selectedImage: UIImage(named: "home"))
        navigationController.tabBarItem = tabBarItem
        return navigationController
    }()
    
    private lazy var mypageViewController: UIViewController = {
        let mypageVC = MyPageViewController()
        let navigationController = UINavigationController(rootViewController: mypageVC)
        let tabBarItem = UITabBarItem(title: "", image: UIImage(named: "mypage"), selectedImage: UIImage(named: "mypage"))
        navigationController.tabBarItem = tabBarItem
        return navigationController
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        
    }
    
    
    private func setupUI() {

        tabBar.barTintColor = UIColor(red: 0.46, green: 0.38, blue: 0.3, alpha: 1)
        tabBar.isTranslucent = false
        
        viewControllers = [
            searchViewController, homeViewController, mypageViewController
        ]
        
        selectedIndex = 1
        
        configureTabBar()
    }
    

   

}


extension TabBarController {
    private func configureTabBar() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(red: 0.46, green: 0.38, blue: 0.3, alpha: 1)
        
        appearance.stackedLayoutAppearance.normal.iconColor = UIColor.white
        appearance.stackedLayoutAppearance.selected.iconColor = UIColor.white
        
        tabBar.standardAppearance = appearance
        
        tabBar.backgroundColor = UIColor(red: 0.46, green: 0.38, blue: 0.3, alpha: 1)
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .white
        
        
        
        
        
    }
}

