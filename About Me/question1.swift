//
//  question1.swift
//  About Me
//
//  Created by Ana Huesa on 6/10/22.
//

import UIKit

class question1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var A: UIButton!
    @IBOutlet weak var B: UIButton!
    @IBOutlet weak var C: UIButton!
    @IBOutlet weak var D: UIButton!
    @IBAction func wrongA(_ sender: UIButton) {
        A.tintColor = UIColor.red
    }
    @IBAction func right(_ sender: UIButton) {
        B.tintColor = UIColor.green
        A.tintColor = UIColor.white
        C.tintColor = UIColor.white
        D.tintColor = UIColor.white
    }
    @IBAction func wrongC(_ sender: UIButton) {
        C.tintColor = UIColor.red
    }
    @IBAction func wrongD(_ sender: UIButton) {
        D.tintColor = UIColor.red
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
