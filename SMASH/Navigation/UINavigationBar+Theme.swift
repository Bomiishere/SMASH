//
//  UINavigationBar+Theme.swift
//  SMASH
//
//  Created by Bomi on 2018/11/13.
//  Copyright © 2018年 Bomi. All rights reserved.
//

import UIKit

extension UINavigationBar {
    
    func applyTheme(theme: NavigaitonTheme) {
        
        self.barTintColor = theme.barTintColor
        
        self.tintColor = theme.tintColor
        
        self.titleTextAttributes = theme.titleTextAttributes

    }
    
}
