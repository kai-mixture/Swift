//
//  ClassEx.swift
//  ClassEx
//
//  Created by 伊志嶺海 on 2019/06/22.
//  Copyright © 2019 伊志嶺海. All rights reserved.
//

import UIKit

//クラスの定義
class ClassEx: UIView{
    
    //b描画時に呼ばれる
    override func draw(_ rect: CGRect) {
        //情報を指定しないで表示
        let device0 = Device()
        drawString(str: device0.info(), x:0, y:20+0*26)
        
        //プロパティで情報を指定して表示
        let device1 = Device()
        device1.name = "Device1"
        device1.version = 8
        drawString(str: device1.info(), x:0, y:20+1*26)
        
        //イニシャライザで情報を指定して表示
        let device2 = Device(name:"Device2", version: 9)
        drawString(str: device2.info(), x:0, y:20+2*26)
    }
    //文字列の描画
    func drawString(str: String, x: Int, y: Int){
        let attrs = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24)]
        //str.draw(at: CGPoint(x:0,y:20), withAttributes: attrs)
        str.draw(at: CGPoint(x:CGFloat(x),y:CGFloat(y)), withAttributes: attrs)
    }
}
