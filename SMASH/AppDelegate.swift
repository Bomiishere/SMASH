//
//  AppDelegate.swift
//  SMASH
//
//  Created by Bomi on 2018/11/13.
//  Copyright © 2018年 Bomi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    private var navigationController: ThemeNavigationController {
        return self.window!.rootViewController as! ThemeNavigationController
    }

    private lazy var homeViewController: HomeViewController = {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
    }()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.navigationController.viewControllers = [self.homeViewController]
        
        return true
    }

}

