//
//  NavigationTheme.swift
//  SMASH
//
//  Created by Bomi on 2018/11/13.
//  Copyright © 2018年 Bomi. All rights reserved.
//

import UIKit

enum NavigaitonTheme {
    
    case None
    
    case Light
    
    case Dark
    
    var statusBarStyle: UIStatusBarStyle {
        
        switch self {
            
        case .None, .Light: return .default
            
        case .Dark: return .lightContent
            
        }
    }
    
    var barTintColor: UIColor? {
        
        switch self {
            
        case .None: return nil
            
        case .Light:
            return .lightThemeTint
            
        case .Dark:
            return .darkThemeTint
        }
    }
    
    var titleTextAttributes: [NSAttributedString.Key: NSObject]? {
        
        switch self {
            
        case .None: return nil
            
        case .Light:
            
            return [.font : UIFont.boldSystemFont(ofSize: 22)]
            
        case .Dark:
            
            return [.foregroundColor : UIColor.white,
                    .font : UIFont.boldSystemFont(ofSize: 22)]
            
        }
    }
    
    var tintColor: UIColor? {
        
        switch self {
            
        case .None, .Light: return nil
            
        case .Dark:
            
            return UIColor.white
            
        }
    }
    
}

/**
 extenstion example for Number
 */
extension NavigaitonTheme {
    
    init(number: UInt) {
        
        switch number {
            
        case 0...3:
            
            self = .None
            
        case let x where x > 3 && x < 10:
            
            self = .Light
            
        default:
            
            self = .Dark
        }
    }
}
