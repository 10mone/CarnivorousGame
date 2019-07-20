//
//  LastViewController.swift
//  CarnivorousGame
//
//  Created by Nakamura Tomone on 2019/07/12.
//  Copyright © 2019年 Nakamura Tomone. All rights reserved.
//

import SpriteKit
import UIKit

class LastViewController: UIViewController{
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var flying: UIImageView!
    
    var finally_score: String!
    
    //add
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        score.text = finally_score
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false, block: {_ in self.flyingAnimation()})
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    func flyingAnimation(){
        /*
        //ハエが一秒かけて消える
        flying.alpha = 1.0
        UIView.animate(withDuration: 1.0, animations: {self.flying.alpha = 0.0},
                                          completion: { finished in self.flying.removeFromSuperview()}
        )*/
        
        /*
        //ハエが別のところに行って上に上ってく
        let random = CGFloat(arc4random_uniform(UINT32_MAX)) / CGFloat(UINT32_MAX)
        
        let positionX = 320 * (random - 0.5)
        let positionY = 560 * (random - 0.5)
        
        flying.frame = CGRect(x: positionX, y: positionY ,width: 80, height: 80)
    
        UIView.animate(withDuration: 10.0,
                       animations: {self.flying.frame = /*この位置に行って消える*/CGRect(x: positionX, y: positionY - 300, width: 80, height: 80)},
                       completion: { finished in self.flying.removeFromSuperview()}
        )*/
    }
    
    
    //臨時で、最終的にはボタンで
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //メモリ解放
        self.timer?.invalidate()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
