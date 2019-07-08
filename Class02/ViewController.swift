//
//  ViewController.swift
//  Class02
//
//  Created by stu-40 on 2019/7/6.
//  Copyright © 2019 苹果工坊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var IbMsg: UILabel!
    
    
    var result :float_t = 10.2
    
    @IBAction func btnTestClicked(_ sender: UIButton) {
        print("我按了啥？")
        IbMsg.text="我要铜锣烧"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //我要去超市了
        
        let 如果我去超市 = true
        
        
        let 如果看到橘子 = true
        
        
        if 如果我去超市 {
            
            var 买西瓜的数量 = 1
        
            if  如果看到橘子 {
            
                买西瓜的数量 = 10
                
            }
            
            print("买 \( 买西瓜的数量 ) 颗西瓜")
        }
    }
    func add(a : Int, b : Int) -> Int {
        return a + b
    }

}

