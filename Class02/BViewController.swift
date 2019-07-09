//
//  BViewController.swift
//  Class02
//
//  Created by stu-40 on 2019/7/9.
//  Copyright © 2019 苹果工坊. All rights reserved.
//

import UIKit

class BViewController: UIViewController {

    @IBOutlet weak var IbBMsg: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnBClicked(_ sender: UIButton) {
        print("我按了啥？")
        IbBMsg.text="我要牛奶糖"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
