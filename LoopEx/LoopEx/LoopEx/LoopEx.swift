//
//  LoopEx.swift
//  LoopEx
//
//  Created by 伊志嶺海 on 2019/06/22.
//  Copyright © 2019 伊志嶺海. All rights reserved.
//

import UIKit

//ループ
class LoopEx: UIView {
    
    //描画時に呼ばれる
    override func draw(_ rect: CGRect) {
        //for文による計算
        var sum0 = 0
        for i in 0..<101{
            sum0 += i
        }
        
        //while文による計算
        var sum1 = 0
        var j = 1
        while j <= 100{
            sum1 += j
            j += 1
        }
        
        //ループの途中で脱出
        var sum2 = 0
        var k = 0
        while true {
            k += 1
            if k > 100 {break}
            if k % 2 != 0 {continue}
            sum2 += k
        }
        
        //表示
        let str0 = "for文の計算結果:\(sum0)"
        let str1 = "while文の計算結果:\(sum1)"
        let str2 = "100以下の偶数の和:\(sum2)"
        drawString(str: str0, x:0, y:20)
        drawString(str: str1, x:0, y:20+26)
        drawString(str: str2, x:0, y:20+26*2)
    }
    
    //文字列の描画
    func drawString(str: String, x: Int, y: Int){
        let attrs = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24)]
        //str.draw(at: CGPoint(x:0,y:20), withAttributes: attrs)
        str.draw(at: CGPoint(x:CGFloat(x),y:CGFloat(y)), withAttributes: attrs)
    }
}
