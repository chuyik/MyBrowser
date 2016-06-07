//
//  WebViewController.swift
//  MyBrowser
//
//  Created by Edward Chu on 6/7/16.
//  Copyright © 2016 Edward Chu. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {
    
    var url: String!
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self
        webView.loadRequest(NSURLRequest(URL: NSURL(string: url)!))
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
