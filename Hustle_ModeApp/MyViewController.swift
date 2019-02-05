//
//  MyViewController.swift
//  Hustle_ModeApp
//
//  Created by Jayaram G on 05/02/19.
//  Copyright © 2019 Jayaram G. All rights reserved.
//

import UIKit
import AVFoundation
class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
            
        }catch let error as NSError{
            print(error.localizedDescription)
        }
    }
    var player:AVAudioPlayer!
    
    @IBOutlet weak var darkBlueImage: UIImageView!
    

    @IBOutlet weak var PowerBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!

    @IBOutlet weak var rocketImage: UIImageView!
    

    @IBOutlet weak var CloudsImage: UIImageView!
    
    @IBOutlet weak var OnLable: UILabel!
    
    @IBOutlet weak var HustleLbel: UILabel!
    
    
    @IBAction func PowerAction(_ sender: UIButton) {
        cloudHolder.isHidden = false
        darkBlueImage.isHidden = true
        PowerBtn.isHidden = true
        player.play()
        UIView.animate(withDuration: 2.3, animations: {
            self.rocketImage.frame = CGRect(x: 0, y: 130, width: 375, height: 402)
        }) { (finished) in
            self.HustleLbel.isHidden = false
            self.OnLable.isHidden = false
        }
    }
    
    
    
    
    
    
    
    
    
}
