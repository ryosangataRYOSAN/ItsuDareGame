//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by ryohei suzuki on 2018/09/16.
//  Copyright © 2018年 ryohei suzuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var itsuLabel : UILabel!
    @IBOutlet var dokodeLabel : UILabel!
    @IBOutlet var daregaLabel : UILabel!
    @IBOutlet var doshitaLabel : UILabel!
    
    let itsuArray: [String] = ["一年前","一週間前","昨日", "今日"]
    let dokodeArray : [String] = ["山に上で", "アメリカで", "学校で", "クラスで"]
    let daregaArray : [String] = ["僕が", "大統領が", "先生が", "友達が"]
    let doshitaArray : [String] = ["叫んだ", "演説した", "怒った", "踊った"]
    
    var index : Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func change(){
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        index = index + 1
        if index > 3{
            index = 0
        }
    }
    
    @IBAction func reset(){
        itsuLabel.text = "----"
        dokodeLabel.text = "----"
        daregaLabel.text = "----"
        doshitaLabel.text = "----"
        
        index = 0
    }
    
    @IBAction func random(){
        let itsuIndex = Int(arc4random_uniform(4))
        let dokodeIndex = Int(arc4random_uniform(4))
        let daregaIndex = Int(arc4random_uniform(4))
        let doshitaIndex = Int(arc4random_uniform(4))
        
        print("いつ:\(itsuIndex)")
        print("どこで:\(dokodeIndex)")
        print("だれが:\(daregaIndex)")
        print("どうした:\(doshitaIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
        
        
    }

}

