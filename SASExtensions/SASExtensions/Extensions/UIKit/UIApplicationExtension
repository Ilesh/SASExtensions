//
//  UIApplicationExtension.swift
//  
//
//  Created by Ilesh's 2018 on 05/09/19.
//  Copyright © 2019 Ilesh's. All rights reserved.
//

import UIKit

extension UIApplication {
    
    var visibleViewController: UIViewController? {
        
        guard let rootViewController = keyWindow?.rootViewController else {
            return nil
        }
        
        return getVisibleViewController(rootViewController)
    }
    
    private func getVisibleViewController(_ rootViewController: UIViewController) -> UIViewController? {
        
        if let presentedViewController = rootViewController.presentedViewController {
            return getVisibleViewController(presentedViewController)
        }
        
        if let navigationController = rootViewController as? UINavigationController {
            return navigationController.visibleViewController
        }
        
        if let tabBarController = rootViewController as? UITabBarController {
            return tabBarController.selectedViewController
        }
        
        return rootViewController
    }
}
