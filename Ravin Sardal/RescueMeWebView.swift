//
//  RescueMeWebView.swift
//  Ravin Sardal
//
//  Created by Ravin Sardal on 4/22/15.
//  Copyright (c) 2015 Ravin Sardal. All rights reserved.
//

import Foundation
import UIKit

class RescueMeWebView: UIViewController,UIWebViewDelegate {
    
    @IBOutlet var myWebView: UIWebView!
    let URL = "https://itunes.apple.com/us/app/rescue-me-i-need-help/id892281526?mt=8"
    //let URL = "http://www.google.com"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let URLRequest = NSURL(string: URL)
        let Request = NSURLRequest(URL: URLRequest!)
        
        myWebView.loadRequest(Request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        return false;
    }
    
}
