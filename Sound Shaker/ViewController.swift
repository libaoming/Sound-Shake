//
//  ViewController.swift
//  Sound Shaker
//
//  Created by 李宝明 on 16/8/25.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
            
            let soundArray = ["bell1","bell2","bell3","bell4","bell5","bell6","bell7"]
            
            let rand = Int(arc4random_uniform(UInt32(soundArray.count)))
            
            let fileName = soundArray[rand]
            
            let filePath = Bundle.main.path(forResource: fileName, ofType: "mp3")
            
            do {
                
               try  player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: filePath!))
                
                player.play()
                
                
            } catch {
                
            }
            
        }
    }

}

