//
//  BaseViewController.swift
//  SMASH
//
//  Created by Bomi on 2018/11/13.
//  Copyright © 2018年 Bomi. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    internal var navigationDidChangedHandler: ((NavigaitonTheme) -> Swift.Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationDidChangedHandler = { theme in
            
            guard let navigationController = self.navigationController as?  ThemeNavigationController else { return }
            
            navigationController.statusBarStyle = theme.statusBarStyle
            
            navigationController.navigationBar.applyTheme(theme: theme)
        }
        
        navigationDidChangedHandler?(.Dark) // default theme
    }

}
