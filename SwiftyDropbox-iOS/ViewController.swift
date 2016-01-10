//
//  ViewController.swift
//  SwiftyDropbox-iOS
//
//  Created by krivoblotsky on 1/10/16.
//  Copyright © 2016 Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Actions
    
    @IBAction func linkToDropBoxButtonClicked(sender: AnyObject)
    {
        if (Dropbox.authorizedClient == nil)
        {
            Dropbox.authorizeFromController(self)
        }
        else
        {
            print("User is already authorized!")
        }
    }
    
    @IBAction func getRootFilesButtonClicked(sender: AnyObject)
    {
        if let client = Dropbox.authorizedClient
        {
            // List contents of app folder
            client.files.listFolder(path: "").response { response, error in
                if let result = response
                {
                    for entry in result.entries
                    {
                        print(entry.name)
                    }
                }
            }
        }
        else
        {
            print("User is not authorized")
        }
    }
    
    @IBAction func logoutButtonClicked(sender: AnyObject)
    {
        if let _ = Dropbox.authorizedClient
        {
            Dropbox.unlinkClient()
        }
        else
        {
            print("User is not authorized")
        }
    }
}

