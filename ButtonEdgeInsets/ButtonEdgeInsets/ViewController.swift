//
//  ViewController.swift
//  ButtonEdgeInsets
//
//  Created by DRTerry on 16/9/4.
//  Copyright © 2016年 DRTerry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        addButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

// MARK:- 设置UI
extension ViewController {
    func addButton(title: String = "78987fded") {
        view.backgroundColor = UIColor.lightGrayColor()
        let button = TestBtn()
        button.setTitle(title, forState: .Normal)
        button.setImage(UIImage(named: "navigationbar_arrow_down"), forState: .Normal)
        button.setImage(UIImage(named: "navigationbar_arrow_up"), forState: .Selected)
        //button.setTitleColor(UIColor.grayColor(), forState: .Normal)
        button.titleLabel?.font = UIFont.systemFontOfSize(14);
        button.sizeToFit()
        button.center = view.center
        //设置图片和标题的位置
        button.setupImageAtRight()
        button.backgroundColor = UIColor.greenColor()
        view.addSubview(button)
    }
}

