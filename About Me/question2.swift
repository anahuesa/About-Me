//
//  question2.swift
//  About Me
//
//  Created by Ana Huesa on 6/10/22.
//

import UIKit

class question2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBOutlet weak var yes: UIButton!
    @IBOutlet weak var no: UIButton!
    @IBOutlet weak var funFact: UILabel!
    @IBAction func right(_ sender: UIButton) {
        yes.tintColor = UIColor.green
        no.tintColor = UIColor.white
        funFact.text = "Fun fact: you can actually see worker bees dragging drones out of the hive during the winter to preserve resources. Additionally, male bees don't have stingers because they don't have to protect the hive."
    }
    @IBAction func wrong(_ sender: UIButton) {
        no.tintColor = UIColor.red
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
