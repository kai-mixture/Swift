//
//  BranchEx.swift
//  BranchEx
//
//  Created by 伊志嶺海 on 2019/06/22.
//  Copyright © 2019 伊志嶺海. All rights reserved.
//

import UIKit

//条件分岐
class BranchEx: UIView{
    
    //描画時に呼ばれる
    override func draw(_ rect: CGRect) {
        //乱数の生成
        let num = Int(arc4random()%4)
        
        //if文による計算
        var text0 = ""
        if num == 0{
            text0 = "大吉"
        }else if num == 1 {
            text0 == "中吉"
        }else if num == 2 {
            text0 = "小吉"
        }else {
            text0 = "凶"
        }
        
        //switchぬ文による計算
        var text1 = ""
        switch num {
        case 0 :
            text1 = "大吉"
        case 1 :
            text1 = "中吉"
        case 2 :
            text1 = "小吉"
        default :
            text1 = "凶"
        }
        
        //表示
        let str0 = "if文の計算結果:\(text0)"
        let str1 = "switch文の計算結果:\(text1)"
        drawString(str: str0, x:0, y:20)
        drawString(str: str1, x:0, y:20+26)
    }
    
    //文字列の描画
    func drawString(str: String, x: Int, y: Int){
        let attrs = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24)]
        //str.draw(at: CGPoint(x:0,y:20), withAttributes: attrs)
        str.draw(at: CGPoint(x:CGFloat(x),y:CGFloat(y)), withAttributes: attrs)
    }
}
