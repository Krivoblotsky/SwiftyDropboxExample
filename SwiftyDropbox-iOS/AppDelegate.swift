//
//  AppDelegate.swift
//  SwiftyDropbox-iOS
//
//  Created by krivoblotsky on 1/10/16.
//  Copyright © 2016 Home. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        //Insert your API Key here
        Dropbox.setupWithAppKey("319epmp7v6spno5")
        return true
    }
    
    func application(app: UIApplication, openURL url: NSURL, options: [String : AnyObject]) -> Bool {
        
        if let authResult = Dropbox.handleRedirectURL(url) {
            switch authResult {
            case .Success(let token):
                print("Success! User is logged into Dropbox with token: \(token)")
            case .Error(let error, let description):
                print("Error \(error): \(description)")
            }
        }
        
        return false
    }
}

