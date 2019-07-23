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
    @IBOutlet weak var butterfly: UIImageView!
    
    var finally_score: String!
    
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        score.text = finally_score
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: {_ in self.butterflyAnimation()})
        
    }
    //エラー出たり出なかったり？？
    func butterflyAnimation(){
        butterfly.alpha = 1.0
        UIView.animate(withDuration: 0.2, animations: {self.butterfly.alpha = 0.0},
                                          completion: { finished in UIView.animate(withDuration: 0.3, animations: {self.butterfly.alpha = 1.0})}
        )
        
    }
    
    
    //臨時で、最終的にはボタンで
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //メモリ解放
        self.timer?.invalidate()
        self.butterfly.removeFromSuperview()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
