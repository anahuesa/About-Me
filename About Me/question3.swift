//
//  question3.swift
//  About Me
//
//  Created by Ana Huesa on 6/10/22.
//

import UIKit

class question3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var A: UIButton!
    @IBOutlet weak var B: UIButton!
    @IBOutlet weak var C: UIButton!
    @IBOutlet weak var D: UIButton!
    @IBOutlet weak var message: UILabel!
    @IBAction func A(_ sender: UIButton) {
        A.backgroundColor = UIColor.red
    }
    @IBAction func B(_ sender: UIButton) {
        B.backgroundColor = UIColor.red
    }
    @IBAction func C(_ sender: UIButton) {
        C.backgroundColor = UIColor.green
        A.backgroundColor = nil
        B.backgroundColor = nil
        D.backgroundColor = nil
        message.text = "Correct! This is a mimic fly. It may be hard to see in these pictures, but bees have four wings, whereas flies and wasps only have two. Bees can come in all shapes and colors, but many species try to imitate them to protect themselves."
    }
    @IBAction func D(_ sender: UIButton) {
        D.backgroundColor = UIColor.red
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
