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
    
    
    
    @IBAction func button(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        //BlinkFlying(sender)
    }
    
    @IBAction func button2(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        //BlinkFlying(sender)
    }
    @IBAction func button3(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        //BlinkFlying(sender)
    }
    @IBAction func button4(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        //BlinkFlying(sender)
    }
    @IBAction func button5(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        //BlinkFlying(sender)
    }
    @IBAction func button6(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        //BlinkFlying(sender)
    }
    @IBAction func button7(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        //BlinkFlying(sender)
    }
    @IBAction func button8(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        //BlinkFlying(sender)
    }
    @IBAction func button9(_ sender: UIButton) {
        PushButton()
        sender.isHidden = true
        //BlinkFlying(sender)
    }
    //蝶々押したら減点！
    @IBAction func cyou_button(_ sender: UIButton) {
        if score_sum > 3 {
            score_sum -= 3
        } else {
            score_sum = 0
        }
        score.text = score_sum.description
        sender.isHidden = true
        BlinkFlying(sender)
    }
    
    //蚊を押したら合計スコア追加
    func PushButton(){
        score_sum += 1
        score.text = score_sum.description
    }
    
    
    //消えた蚊を再び表示するまでの時間
    func BlinkFlying(_ sender: UIButton){
//        timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true, block: {_ in sender.isHidden = false})

        sender.isHidden = false
        timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: false, block: {_ in sender.isHidden = true})
    }
    
    //合計スコアを渡して画面遷移
    func changeView(){
        //メモリ解放
        if let workingTimer = timer{
            workingTimer.invalidate()
        }
        //description追加
        self.performSegue(withIdentifier: "toLastPage", sender: score_sum.description)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true, block: {_ in self.BlinkFlying(self.button)})
        
        timer = Timer.scheduledTimer(withTimeInterval: 30.0, repeats: false, block: {_ in self.changeView()})
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
    
    /*
    メモリが解放されているか確認
    deinit{
        print("release")
    }
    */
    
}

