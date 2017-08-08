//
//  File.swift
//  weChatReadAniamtion
//
//  Created by 掌上先机 on 2017/8/8.
//  Copyright © 2017年 wangchao. All rights reserved.
//

import UIKit

protocol animationProtocal {
    
    
    var tagertFrame:CGRect{set get}
    
    func transFormToTagrtFrame() -> Void
    
    var resertFrame:CGRect{set get}
    
    func resertAnimation() -> Void
    
    
}

extension animationProtocal where Self:animationView {

    
    //翻页动画
    func transFormToTagrtFrame() -> Void {
        
        
        UIView.animate(withDuration: 0.25*3, animations: {
            
            var form1 = CATransform3DIdentity
            
            form1.m34 = -1/900
            
            form1 = CATransform3DRotate(form1, CGFloat(-90*Double.pi / 180), 0, 1, 0)
            
            
            self.readView.layer.transform = form1
            
           self.readView.frame = self.tagertFrame
            
            self.frame = self.tagertFrame
            
            
        }, completion:nil)

        
    }
    
    
    func resertAnimation() -> Void {
        
        
        UIView.animate(withDuration: 0.25*3, animations: {
            
            var form1 = CATransform3DIdentity
            
            form1.m34 = -1/900
            
            form1 = CATransform3DRotate(form1, 0, 0, 1, 0)
            
            
            self.readView.layer.transform = form1
            
            self.readView.frame = CGRect(x: 0, y: 0, width: self.resertFrame.size.width, height: self.resertFrame.size.height)
            
            self.frame = self.resertFrame
            
            
        }, completion:nil)

        
        
    }
    





}
