//
//  HelloWorld.swift
//  HelloWorld
//
//  Created by 伊志嶺海 on 2019/06/22.
//  Copyright © 2019 伊志嶺海. All rights reserved.
//

import UIKit

//HelloWorld
class HelloWorld: UIView{
    
    //描画時に呼ばれる
    override func draw(_ rect:CGRect){
        let attrs = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24)]
        let str = "Hello, World!"
        //let nsstr = str as NSString
        str.draw(at: CGPoint(x:0, y:20), withAttributes: attrs)
    }
}

