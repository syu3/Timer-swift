//
//  ViewController.swift
//  Timer-swift
//
//  Created by 加藤 周 on 2015/03/13.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var cnt : Float = 0
    
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.backgroundColor = UIColor.orangeColor()
        myLabel.layer.masksToBounds = true
//        myLabel.layer.cornerRadius = 20.0
        myLabel.text = "Time:\(cnt)"
        myLabel.textColor = UIColor.whiteColor()
        myLabel.shadowColor = UIColor.grayColor()
//        myLabel.textAlignment = NSTextAlignment.Center

        self.view.backgroundColor = UIColor.cyanColor()
  
        
        //タイマーを作る.
        NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: "onUpdate:", userInfo: nil, repeats: true)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func onUpdate(timer : NSTimer){
        
        cnt += 5.0
        
        //桁数を指定して文字列を作る.
        let str = "Time:".stringByAppendingFormat("%.1f",cnt)
        
        myLabel.text = str
        
    }


}

