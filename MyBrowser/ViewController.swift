//
//  ViewController.swift
//  MyBrowser
//
//  Created by Edward Chu on 6/7/16.
//  Copyright © 2016 Edward Chu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var urlField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        urlField.delegate = self
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ToWebView" {
            let ctrl = segue.destinationViewController as! WebViewController
            
            if let url = urlField.text {
                ctrl.url = url
            }
        }
    }
}

