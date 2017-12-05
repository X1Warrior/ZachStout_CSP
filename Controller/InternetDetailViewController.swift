//
//  InternetDetailViewController.swift
//  ZachStout_CSP
//
//  Created by Stout, Zachary on 11/29/17.
//  Copyright © 2017 Stout, Zachary. All rights reserved.
//

import UIKit
import WebKit

class InternetDetailViewController: UIViewController
{

    //MARK: GUI Controls
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer: WKWebView!
    
    var detailAddress : String?
    {
        
        didSet
        {
            configureDetailView()
        }
    }
    
    var detailText : String?
    {
        
        didSet
        {
            configureDetailView()
        }
    }
    
    
    private func configureDetailView() -> Void
    {
        if detailAddress != nil
        {
            if let currentWebView = webViewer
            {
                let currentURL = URL(string: detailAddress!)
                let currentWebRequest = URLRequest(url: currentURL!)
                currentWebView.load(currentWebRequest)
            }
        }
        else
        {
            if let currentWebView = webViewer
            {
                let currentURL = URL(string: "https://www.cnn.com")
                currentWebView.load(URLRequest(url:currentURL!))
            }
        }
        if detailText != nil
        {
            if let currentText = textView
            {
                currentText.text = detailText
            }
        }
        else
        {
            if let currentText = textView
            {
                currentText.text = "Zach's CSP app internet screen"
            }
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view.
    }
    
    private func setup() -> Void
    {
        
    }
    
}
