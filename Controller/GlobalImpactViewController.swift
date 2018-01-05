//
//  GlobalImpactController.swift
//  ZachStout_CSP
//
//  Created by Stout, Zachary on 10/26/17.
//  Copyright © 2017 Stout, Zachary. All rights reserved.
//

import UIKit

class GlobalImpactViewController: UIViewController {

    
    @IBOutlet weak var NuclearPower: UIImageView!
    
    @IBOutlet weak var NuclearPowerApp: UIImageView!
    
    @IBOutlet weak var AppLabel: UILabel!

    @IBOutlet weak var ProblemLabel: UILabel!
    

    private func setup() -> Void
    {
        NuclearPowerApp.image = UIImage(named: "NuclearAppDesign")
        NuclearPower.image = UIImage(named: "Nuclearfacilities")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        ProblemLabel.text = "This is a problem because of carelessness of the radioactive materials that are produced as well of if this comes into the wrong hands. Thats why more people need to understand more about the facilities especially in case of a disaster. If used correctly it is a near perfect emission of CO2 released."
        
        AppLabel.text = "This App is going to start with a main screen that asks what are your thoughts on Nuclear Energy. It then has a text box for response and a submit button to help collect the user's response and send them to a list of buttons, each of which have a topic. When a specified button is click it displays an image and info on that category of Nuclear Energy. When they understand more the last button is  questions buton whcih brings them to a question screen. On this screen they can ask questions they have on Nuclear Energy. If the machine can answer the users question it will do so with its database if not they will be given a link to nuclear energy."
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
