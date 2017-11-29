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
