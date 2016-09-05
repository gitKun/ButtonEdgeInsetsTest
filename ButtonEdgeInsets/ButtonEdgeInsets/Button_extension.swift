
//
//  Button_extension.swift
//  ButtonEdgeInsets
//
//  Created by DRTerry on 16/9/4.
//  Copyright © 2016年 DRTerry. All rights reserved.
//

import UIKit

extension UIButton {
    func setupImageAtRight(space: CGFloat = 0.0) {
        DRPrint("获取imageWidth")
        guard let imageWidth = imageView?.frame.size.width else {
            print("noImage")
            return
        }
        DRPrint("获取titleWidth")
        guard let titleWidth = titleLabel?.frame.size.width else {
            print("noTitle")
            return
        }

        //设置`image`和`title`距离为`5`(备注:`button`不作为`navigationItem.titleView`是默认`titleLabel`和`imageView`距离边界是有一个空隙的)
        titleEdgeInsets = UIEdgeInsetsMake(0.0, -(imageWidth + space * 0.5), 0, imageWidth + space * 0.5)
        imageEdgeInsets = UIEdgeInsetsMake(0.0, titleWidth + space * 0.5, 0.0, -(space * 0.5 + titleWidth))
        //打开注释就能看到普通的`button`默认`titleLabel`和`imageView`距离边界为`0`
        backgroundColor = UIColor.greenColor()
    }
}
