//
//  AbstractionController.swift
//  ZachStout_CSP
//
//  Created by Stout, Zachary on 10/26/17.
//  Copyright © 2017 Stout, Zachary. All rights reserved.
//

import UIKit

public class AbstractionController: UIPageViewController, UIPageViewControllerDataSource
{

    //MARK: Array of subviews
    private (set) lazy var orderedAbstractionViews : [UIViewController] =
    {
        return [
            self.newAbstractionViewContoller(absractionLevel: "Block"),
            self.newAbstractionViewContoller(absractionLevel: "Java"),
            self.newAbstractionViewContoller(absractionLevel: "ByteCode"),
            self.newAbstractionViewContoller(absractionLevel: "Binary"),
            self.newAbstractionViewContoller(absractionLevel: "AndGate")
         
        ]
    }()
    
            
    //Helper method to retrieve the correct ViewController
    private func newAbstractionViewController(abstractionLevel : String) -> UIViewController
    {
        
    }
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
