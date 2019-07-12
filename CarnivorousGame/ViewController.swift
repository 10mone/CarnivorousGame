//
//  ViewController.swift
//  CarnivorousGame
//
//  Created by Nakamura Tomone on 2019/07/12.
//  Copyright © 2019年 Nakamura Tomone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var score_sum: Int = 0
    var timer: Timer?
    
    @IBOutlet weak var score: UILabel!
    
    @IBAction func button(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        BlinkFlying(sender)
    }
    @IBAction func button2(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        BlinkFlying(sender)
    }
    @IBAction func button3(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        BlinkFlying(sender)
    }
    @IBAction func button4(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        BlinkFlying(sender)
    }
    @IBAction func button5(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        BlinkFlying(sender)
    }
    @IBAction func button6(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        BlinkFlying(sender)
    }
    @IBAction func button7(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        BlinkFlying(sender)
    }
    @IBAction func button8(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        BlinkFlying(sender)
    }
    @IBAction func button9(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        BlinkFlying(sender)
    }
    //蚊を押したら合計スコア追加
    func PushButton(){
        score_sum += 1
        score.text = score_sum.description
    }
    //消えたかを再び表示するまでの時間
    func BlinkFlying(_ sender: UIButton){
        timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true, block: {_ in self.re_Display(sender)})
    }
    //消えた蚊を再び表示
    func re_Display(_ sender: UIButton){
        sender.isHidden = false
    }
    //合計スコアを渡して画面遷移
    func changeView(){
        //description追加
        self.performSegue(withIdentifier: "toLastPage", sender: score_sum.description)
    }
    
    
    //var timer: Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = Timer.scheduledTimer(withTimeInterval: 30.0, repeats: false, block: {_ in self.changeView()})
        //timer = Timer.scheduledTimer(timeInterval: 10.0, target: self, selector: #selector(ViewController.changeView), userInfo: nil, repeats: false)
    }
    
    //Segueの初期化を通知するメソッドをオーバーライド
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLastPage"{
            let LastViewController = segue.destination as! LastViewController
            LastViewController.finally_score = sender as! String
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

