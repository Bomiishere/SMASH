//
//  ThemeNavigationController.swift
//  SMASH
//
//  Created by Bomi on 2018/11/13.
//  Copyright © 2018年 Bomi. All rights reserved.
//

import UIKit

class ThemeNavigationController: UINavigationController {

    var statusBarStyle: UIStatusBarStyle = .default {
        
        didSet { setNeedsStatusBarAppearanceUpdate() }
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return statusBarStyle
    }

}
