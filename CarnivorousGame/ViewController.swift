//
//  ViewController.swift
//  CarnivorousGame
//
//  Created by Nakamura Tomone on 2019/07/12.
//  Copyright © 2019年 Nakamura Tomone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var score: UILabel!
    var score_sum: Int = 0
    @IBAction func button(_ sender: UIButton) {
        PushButton()
    }
    @IBAction func button2(_ sender: UIButton) {
        PushButton()
    }
    @IBAction func button3(_ sender: UIButton) {
        PushButton()
    }
    @IBAction func button4(_ sender: UIButton) {
        PushButton()
    }
    @IBAction func button5(_ sender: UIButton) {
        PushButton()
    }
    @IBAction func button6(_ sender: UIButton) {
        PushButton()
    }
    @IBAction func button7(_ sender: UIButton) {
        PushButton()
    }
    @IBAction func button8(_ sender: UIButton) {
        PushButton()
    }
    @IBAction func button9(_ sender: UIButton) {
        PushButton()
    }
    
    
    func PushButton(){
        score_sum += 1
        score.text = score_sum.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

