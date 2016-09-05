//
//  Button_Extension.swift
//  ButtonEdgeInsets
//
//  Created by DRTerry on 16/9/4.
//  Copyright © 2016年 DRTerry. All rights reserved.
//

import UIKit

extension UIButton {

    func setupImageAtRight() {
        func setupImageAtRight() {
            /*
             此处存疑: 为什么先获取`titleWidth`则`titleWidth`值始终未`0.0`(能获取到`titleLabel.text`和`titleLabel.font`,字符串计算`width`能正确获得),但是当先获取`imageWidth`时,则能获取到正确的`titleWidth`🐷
             */
            //通过获取`titleLabel`的`width`来调整
            guard let imageWidth = imageView?.frame.size.width else {
                return
            }
            guard let titleWidth = titleLabel?.frame.size.width else {
                return
            }
            //设置`image`和`title`距离为`5`
            let spaceForImageAndLabel: CGFloat = 5.0
            titleEdgeInsets = UIEdgeInsetsMake(0.0, -(imageWidth + spaceForImageAndLabel * 0.5), 0, imageWidth + spaceForImageAndLabel * 0.5)
            imageEdgeInsets = UIEdgeInsetsMake(0.0, titleWidth + spaceForImageAndLabel * 0.5, 0.0, -(spaceForImageAndLabel * 0.5 + titleWidth))
        }
    }
}
