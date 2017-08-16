//
//  UIStoryboard+Instantiate.swift
//  FindAndEat
//
//  Created by Ольга Выростко on 16.08.17.
//  Copyright © 2017 night-gluttons. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
    
    static func instantiateReceiptsListViewController() -> ReceiptsListViewController? {
        return instantiateInitialViewControllerforStoryboardWithName("ReceiptsListStoryboard")
    }
    
    static func instantiateProfileViewController() -> ProfileViewController? {
        return instantiateInitialViewControllerforStoryboardWithName("ProfileStoryboard")
    }
    
    private static func instantiateInitialViewControllerforStoryboardWithName<T>(_ name: String) -> T? {
        let sb = UIStoryboard(name: name, bundle: nil)
        return sb.instantiateInitialViewController() as? T
    }
}
