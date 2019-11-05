//
//  VarEx.swift
//  VarEx
//
//  Created by 伊志嶺海 on 2019/06/22.
//  Copyright © 2019 伊志嶺海. All rights reserved.
//

import UIKit

//変数
class VarEx: UIView {
    
    //描画時に呼ばれる
    override func draw(_ rect:CGRect) {
        //  変数の定義
        var num0: Int //数値0
        var num1: Int //数値1
        var sum: Int //合計
        
        //値の代入
        num0 = 1000 //数値0に100を代入
        num1 = 200 //数値1に200を代入
        sum = num0 + num1 //数値0と数値1の和をsumへ代入
        
        //文字列の生成
        let str: String = "合計=\(sum)"
        
        //文字列の描画
        drawString(str: str, x:0, y:20)
    }
    //文字列の描画
    func drawString(str: String, x: Int, y: Int){
        let attrs = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24)]
        //str.draw(at: CGPoint(x:0,y:20), withAttributes: attrs)
        str.draw(at: CGPoint(x:CGFloat(x),y:CGFloat(y)), withAttributes: attrs)
    }
}
