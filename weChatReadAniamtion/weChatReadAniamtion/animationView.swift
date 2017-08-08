//
//  animationView.swift
//  weChatReadAniamtion
//
//  Created by 掌上先机 on 2017/8/8.
//  Copyright © 2017年 wangchao. All rights reserved.
//

import UIKit

class animationView: UIView,animationProtocal {
    
    
    var readView:UIView!

    var tagertFrame: CGRect = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    var resertFrame: CGRect = CGRect(x: 0, y: 0, width: 0, height: 0)

    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        
        readView = UIView.init(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height));
        
        
        readView.backgroundColor = UIColor.green
        
        self.addSubview(readView)
        

        self.sendSubview(toBack: readView)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
