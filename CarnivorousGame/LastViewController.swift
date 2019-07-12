//
//  LastViewController.swift
//  CarnivorousGame
//
//  Created by Nakamura Tomone on 2019/07/12.
//  Copyright © 2019年 Nakamura Tomone. All rights reserved.
//

import Foundation
import UIKit

class LastViewController: UIViewController{
    @IBOutlet weak var score: UILabel!
    
    var finally_score: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        score.text = finally_score
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
