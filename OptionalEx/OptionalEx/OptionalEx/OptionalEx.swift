//
//  OptionalEx.swift
//  OptionalEx
//
//  Created by 伊志嶺海 on 2019/06/23.
//  Copyright © 2019 伊志嶺海. All rights reserved.
//

import UIKit

//オプショナル
class OptionalEx: UIView{
    var value: String! //利用時に「通常の変数」に変換される「オプショナルな変数」
    
    //描画時に呼ばれる
    override func draw(_ rect: CGRect) {
        //オプショナルな変数の定義
        let str: String? = nil //オプショナルな型にはnilを代入できる
        print(str)
        
        //通常の変数にオプショナルな変数を代入
        let optionalValue: Int? = 10
        var newValue: Int
        if let value = optionalValue{
            newValue = value
            drawString(str: "オプショナルな型の変数=\(newValue)", x:0, y:20)
        }
        
        //オプショナルな変数のプロパティ利用
        drawString(str: "オプショナルな変数のプロパティ利用", x:0, y:20+2*26)
        let str0: String? = "3"
        let result0: Bool? = str0?.isEmpty
        drawString(str: "nilでないとき:\(result0)", x:0, y:20+3*26)
        let str1: String? = nil
        let result1: Bool? = str1?.isEmpty
        drawString(str: "nilのとき:\(result1)", x:0, y:20+4*26)
        
        //オプショナルな変数のメソッド利用
        drawString(str: "オプショナルな変数のメソッド利用", x:0, y:20+6*26)
        let str2: String? = "あ"
        let result2: String? = str2?.appendingFormat("か")
        drawString(str: "nilでないとき:\(result2)", x:0, y:20+7*26)
        let str3: String? = nil
        let result3: String? = str3?.appendingFormat("か")
        drawString(str: "nilのとき:\(result3)", x:0, y:20+8*26)
        
        //通常の変数に自動変換するオプショナルな変数
        drawString(str: "通常の変数に自動変換するオプショナルな変数", x:0, y:20+10*26)
        let str4: String! = "あ"
        let result4: String? = str4?.appendingFormat("か")
        drawString(str: "nilでないとき:\(result4)", x:0, y:20+11*26)
        
    }
    //文字列の描画
    func drawString(str: String, x: Int, y: Int){
        let attrs = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24)]
        str.draw(at: CGPoint(x:CGFloat(x),y:CGFloat(y)), withAttributes: attrs)
    }
}

