//
//  SettingsViewController.swift
//  Prework
//
//  Created by Carlos Chavez on 1/14/22.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var tip1: UITextField!
    @IBOutlet weak var tip2: UITextField!
    @IBOutlet weak var tip3: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func pressBtn(_ sender: Any) {
        let defaults = UserDefaults.standard
                
                defaults.set(Int(tip1.text!) ?? 15, forKey: "firstTip")
                defaults.set(Int(tip2.text!) ?? 18, forKey: "secondTip")
                defaults.set(Int(tip3.text!) ?? 20, forKey: "thirdTip")
                
                defaults.synchronize()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
