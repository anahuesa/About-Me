//
//  Theater.swift
//  About Me
//
//  Created by Ana Huesa on 6/9/22.
//

import UIKit
import AVFoundation

class Theater: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateSlider), userInfo: nil, repeats: true)
        slider.maximumValue = 111.481674
    }
    
    var player: AVAudioPlayer!

    func playSound() {
           let url = Bundle.main.url(forResource: "I_Got_Lost_In_His_Arms", withExtension: "wav")
           player = try! AVAudioPlayer(contentsOf: url!)
           player.play()
        }

    @IBOutlet weak var playButton: UIButton!
    @IBAction func play(_ sender: UIButton) {
        if player != nil {
                    player.stop()
                    player = nil
                    playButton.setImage(UIImage(systemName: "play.circle"), for: .normal)
                } else {
                    playButton.setImage(UIImage(systemName: "pause.circle"), for: .normal)
                    playSound()
                }
    }
    @IBOutlet weak var timeStamp: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBAction func changeAudioTime(_ sender: UISlider) {
        player.stop()
        player.currentTime = TimeInterval(slider.value)
        player.prepareToPlay()
        player.play()
    }
    @objc func updateSlider() {
        if player == nil {
            slider.value = 0
            timeStamp.text = "0:00"
        } else {
            slider.value = Float(player.currentTime)
            var minute = Int(floor(player.currentTime)/60)
            var second = Int(floor(player.currentTime))%60
            if second < 10 {
                timeStamp.text = String("\(minute):0\(second)")
            } else {
                timeStamp.text = String("\(minute):\(second)")
            }
        }
    }
}
