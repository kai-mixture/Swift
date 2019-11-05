//
//  ArrayEx.swift
//  ArrayEx
//
//  Created by 伊志嶺海 on 2019/06/22.
//  Copyright © 2019 伊志嶺海. All rights reserved.
//

import UIKit

//配列と連想配列
class ArrayEx: UIView{
    
    //描画時に呼ばれる
    override func draw(_ rect: CGRect) {
        //配列の生成
        var array: Array<String> = Array<String>()
        
        //配列の要素の追加
        array.append("iPhone")
        array.append("iPad")
        array.append("iPod touch")
        
        //配列の要素の変更
        array[2] = "AppleTV"
        
        //配列の要素の取得
        for i in 0..<3{
            drawString(str: array[i], x:0, y:20+i*26)
        }
        
        //配列の要素の取得
        for element in array {
            print(element)
        }
        
        //連想配列の生成
        var dictionary: Dictionary<String, String> =
            Dictionary<String, String>()
        
        //連想配列の要素の追加
        dictionary["Phone"] = "iPhone"
        dictionary["Tablet"] = "iPad"
        dictionary["MusicPlayer"] = "iPod touch"
        
        //連想配列の要素の変更
        dictionary["MusicPlayer"] = "AppleTV"
        
        //連想配列要素の取得
        drawString(str: dictionary["Phone"]!, x:0, y:20+4*26)
        drawString(str: dictionary["Tablet"]!, x:0, y:20+5*26)
        drawString(str: dictionary["MusicPlayer"]!, x:0, y:20+6*26)
    }
    //文字列の描画
    func drawString(str: String, x: Int, y: Int){
        let attrs = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24)]
        //str.draw(at: CGPoint(x:0,y:20), withAttributes: attrs)
        str.draw(at: CGPoint(x:CGFloat(x),y:CGFloat(y)), withAttributes: attrs)
    }
}
