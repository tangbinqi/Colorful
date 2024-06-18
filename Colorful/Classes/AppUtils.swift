//
//  AppUtils.swift
//  TutuST
//
//  Created by tangbinqi on 2021/1/29.
//

import Foundation
import UIKit

@objcMembers public class AppUtils: NSObject {
        
    @objc
    public class func curViewController() -> UIViewController? {
        guard let window = UIApplication.shared.delegate?.window else { return nil }
        guard let rootViewController = window?.rootViewController else { return nil }
        return self.visibleViewController(rootViewController)
    }
    
    class func visibleViewController(_ baseViewController: UIViewController) -> UIViewController? {
        if baseViewController.isKind(of: UINavigationController.self) {
            let navVC: UINavigationController = baseViewController as! UINavigationController
            guard let visibleViewController = navVC.visibleViewController else {
                return navVC
            }
            return self.visibleViewController(visibleViewController)
        } else if baseViewController.isKind(of: UITabBarController.self) {
            let tabBarVC = baseViewController as! UITabBarController
            guard let selectedViewController = tabBarVC.selectedViewController else { return tabBarVC }
            return self.visibleViewController(selectedViewController)
            
        } else if !baseViewController.children.isEmpty {
            let childrenVC: UIViewController = baseViewController.children.last!
            return self.visibleViewController(childrenVC)
        } else {
            guard let presentVC = baseViewController.presentedViewController else { return baseViewController }
            return self.visibleViewController(presentVC)
        }
    }
    

//    class func myIDFV() -> String? {
//        let keychain = Keychain(service: "com.genshuixue.tutust")
//        var IDFA = (keychain["IDFA"] ?? "") as String
//        if IDFA.isEmpty {
//            IDFA = UIDevice.current.identifierForVendor?.uuidString.md5 ?? String.random(ofLength: 20)
//            keychain["IDFA"] = IDFA
//        }
//        return IDFA
//    }
    
}



