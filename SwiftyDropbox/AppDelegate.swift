//
//  AppDelegate.swift
//  SwiftyDropbox
//
//  Created by krivoblotsky on 1/9/16.
//  Copyright © 2016 Home. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate
{
    func applicationDidFinishLaunching(aNotification: NSNotification)
    {
        //Insert your API Key here
        Dropbox.setupWithAppKey("319epmp7v6spno5")
    }
}

