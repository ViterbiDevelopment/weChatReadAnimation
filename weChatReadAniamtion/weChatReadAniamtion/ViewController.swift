//
//  ViewController.swift
//  weChatReadAniamtion
//
//  Created by 掌上先机 on 2017/8/8.
//  Copyright © 2017年 wangchao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    var animationV:animationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.view.backgroundColor = UIColor.groupTableViewBackground
        
    
        let animation = animationView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        animation.backgroundColor = UIColor.red
        
        
        animationV = animation
        
        
        
       
        
        animationV.readView.layer.anchorPoint =  CGPoint(x: 0, y: 0.5)

        
        animationV.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        animationV.readView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)

       
        
                
        self.view.addSubview(animation)
        

        
        
    
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        animationV.tagertFrame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
        
        animationV.transFormToTagrtFrame()
        
                
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        animationV.resertFrame = CGRect(x: 100, y: 100, width: 100, height: 100)
        
        animationV.resertAnimation()
        
    }
    


}

