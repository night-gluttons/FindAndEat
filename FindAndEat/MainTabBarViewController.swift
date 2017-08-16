//
//  MainTabBarViewController.swift
//  FindAndEat
//
//  Created by Ольга Выростко on 16.08.17.
//  Copyright © 2017 night-gluttons. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    typealias This = MainTabBarViewController
    
    enum Tabs: Int {
        case receiptsList
        case profile
        
        var title: String {
            switch self {
            case .receiptsList: return "Список рецептов"
            case .profile: return "Профиль"
            }
        }
        
        static var allValues: [Tabs] = [.receiptsList, .profile]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBar()
    }
    
    private func configureTabBar() {
        var vcs = [UIViewController]()
        for tab in This.Tabs.allValues {
            vcs.append(createViewController(forTab: tab))
        }
        setViewControllers(vcs, animated: false)
    }
    
    private func createViewController(forTab tab: This.Tabs) -> UIViewController {
        let vc: UIViewController?
        switch tab {
        case .receiptsList:
            vc = UIStoryboard.instantiateReceiptsListViewController()
            vc?.tabBarItem = UITabBarItem(title: tab.title, image: nil, tag: tab.rawValue)
        case .profile:
            vc = UIStoryboard.instantiateProfileViewController()
            vc?.tabBarItem = UITabBarItem(title: tab.title, image: nil, tag: tab.rawValue)
        }
        return vc ?? UIViewController()
    }

}
