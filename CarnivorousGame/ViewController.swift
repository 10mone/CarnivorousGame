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
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var cyou_button: UIButton!
    
    
    
    @IBAction func button(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
    }
    
    @IBAction func button2(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
    }
    @IBAction func button3(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
    }
    @IBAction func button4(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
    }
    @IBAction func button5(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
    }
    @IBAction func button6(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
    }
    @IBAction func button7(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
    }
    @IBAction func button8(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
    }
    @IBAction func button9(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
    }
    @IBAction func cyou_button(_ sender: UIButton) {
        if score_sum > 3 {
            score_sum -= 3
        } else {
            score_sum = 0
        }
        score.text = score_sum.description
        sender.isHidden = true
    }
    
    
    //蚊を押したら合計スコア追加
    func PushButton(){
        score_sum += 1
        score.text = score_sum.description
    }
    
    //合計スコアを渡して画面遷移
    func changeView(){
        //description追加
        self.performSegue(withIdentifier: "toLastPage", sender: score_sum.description)
    }
    
    //消えた蚊を再び表示するまでの時間
    func BlinkFlying(visibletime: Double, _ sender: UIButton){
        sender.isHidden = false
        timer = Timer.scheduledTimer(withTimeInterval: visibletime, repeats: false, block: {_ in sender.isHidden = true})
    }
    
    func eachFlying(blinktime: Double,visibletime: Double, _ sender: UIButton){
        timer = Timer.scheduledTimer(withTimeInterval: blinktime, repeats: true, block: {_ in self.BlinkFlying(visibletime: visibletime, sender)})
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = Timer.scheduledTimer(withTimeInterval: 20.0, repeats: false, block: {_ in self.changeView()})
        
        eachFlying(blinktime: 3.3, visibletime:0.5 , self.button)
        eachFlying(blinktime: 3.0, visibletime:0.5 , self.button2)
        eachFlying(blinktime: 2.0, visibletime:0.5 , self.button3)
        eachFlying(blinktime: 2.2, visibletime:0.5 , self.button4)
        eachFlying(blinktime: 2.6, visibletime:0.5 , self.button5)
        eachFlying(blinktime: 1.7, visibletime:0.5 , self.button6)
        eachFlying(blinktime: 2.8, visibletime:0.5 , self.button7)
        eachFlying(blinktime: 3.2, visibletime:0.5 , self.button8)
        eachFlying(blinktime: 1.8, visibletime:0.5 , self.button9)
        eachFlying(blinktime: 2.4, visibletime:0.4 , self.cyou_button)
        
        
        }
    
    
    //Segueの初期化をするメソッドをオーバーライド
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
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //メモリ解放
        self.timer?.invalidate()
    }
    
}

