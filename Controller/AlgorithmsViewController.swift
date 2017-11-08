//
//  AlgorithmsController.swift
//  ZachStout_CSP
//
//  Created by Stout, Zachary on 10/26/17.
//  Copyright © 2017 Stout, Zachary. All rights reserved.
//

import UIKit

class AlgorithmsViewController: UIViewController {

    
    
    @IBOutlet weak var algorithm: UILabel!
    
    private func setupAlgorithm() -> void
    {
        var algorithmSteps : [String] = []
        
        let algorithm :String = "These are the instructions to create a project in Java using Eclipse and Github \n"
        let stepTwo :String = "Open Github"
        let stepThree :String = "Open Eclipse"
        let stepFour :String = "Click launch if the allocated memory is correct if not browse and select correct file."
        let stepFive :String = "File new Java Project"
        let stepSix :String = "Type in desired java project name and click ok."
        let stepSeven :String = "Then go to you newly created project and Click the arrow to the left of it."
        let stepEight :String = "Then right click on the src folder"
        let stepNine :String = "Create new package named by using the name of your project followed by .controller Example (test.controller) click finish"
        let stepTen :String = "Then right click on src folder again and make a new package with your project name .model Example (test.model) click finish"
        let stepEleven :String = "Then right click on test.controller package and select new class name it your project name controller (TestController)"
        let stepTwelve :String = "Repeat step 11 but name it your projectname runner (TestRunner)"
        let stepThirteen :String = "Then open up your github account FILE new repository and Name it exactly what your project is called and click ok."
        
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven, stepEight, stepNine, stepTen, stepEleven, stepTwelve, stepThirteen]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(String: algorithm, attributes: attributesDictioary)
        
        for step in algorithmSteps
        {
            let bullet :String = ":P"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringSte : NSMutableString = NSMutableString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle]), range:
                NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        algorithmText.attributedText = fullAttributedString
        }
         }
        
        
    override func viewDidLoad() {
        super.viewDidLoad()

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
