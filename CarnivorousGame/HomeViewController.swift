//
//  HomeViewController.swift
//  CarnivorousGame
//
//  Created by Nakamura Tomone on 2019/07/20.
//  Copyright © 2019年 Nakamura Tomone. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController{
    @IBOutlet weak var flying: UIImageView!
    @IBOutlet weak var butterfly: UIImageView!
    
    var timer: Timer?
    
    override func viewDidLoad() {
        //timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true, block: {_ in self.flyingAnimation()})
        //timer = Timer.scheduledTimer(withTimeInterval: 6.0, repeats: true, block: {_ in self.butterflyAnimation()})
    }
    
    func flyingAnimation(){
         flying.alpha = 1.0
         UIView.animate(withDuration: 2.0, animations: {self.flying.alpha = 0.0},
                        completion: { finished in UIView.animate(withDuration: 3.0, animations: {self.flying.alpha = 1.0})})
    }
    func butterflyAnimation(){
        butterfly.alpha = 1.0
        UIView.animate(withDuration: 2.0, animations: {self.butterfly.alpha = 0.0},
                       completion: { finished in UIView.animate(withDuration: 3.0, animations: {self.butterfly.alpha = 1.0})})
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        self.timer?.invalidate()
        self.flying.removeFromSuperview()
        self.butterfly.removeFromSuperview()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
