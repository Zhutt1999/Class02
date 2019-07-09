//
//  AViewController.swift
//  Class02
//
//  Created by stu-40 on 2019/7/9.
//  Copyright © 2019 苹果工坊. All rights reserved.
//

import UIKit

class AViewController: UIViewController {
    @IBOutlet weak var btnGoBottomConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var IbAMsg: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @IBAction func btnAClicked(_ sender: UIButton) {
        print("我按了啥？")
        IbAMsg.text="我要铜锣烧啊"
        btnGoBottomConstraint.constant = 400
    }
//    @objc func keyboardWillShow(_ notification: Notification) {
//        if let keyboardHeight :NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey]
//            as?NSValue{
//            let keyboardRectang = keyboardFrame.cgRectValue
//            let keyboardHeight = keyboardRectangle.height
//
//        }
//
//    }
    @objc func keyboardWillShow(notification: NSNotification) {
        let keyboardHeight = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.height
        print("猜猜看：\(keyboardHeight)")
        btnGoBottomConstraint.constant = keyboardHeight
    }
    
//    @objc func keyboardWillHide(notification: NSNotification) {
//        let keyboardHeight = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.height
//        print(keyboardHeight)
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
