//
//  StringEx.swift
//  StringEx
//
//  Created by 伊志嶺海 on 2019/06/23.
//  Copyright © 2019 伊志嶺海. All rights reserved.
//

import UIKit

//文字列の描画
class StringEx: UIView{
    
    //描画時に呼ばれる
    override func draw(_ rect: CGRect) {
        //画面サイズの取得
        let w = UIScreen.main.bounds.size.width
        let h = UIScreen.main.bounds.size.width
        drawString(str: "画面サイズ\(Int(w))×\(Int(h))", x:0, y:20)
        
        //文字サイズの取得
        let size = getStringSize(str: "A")
        drawString(str: "文字幅: \(Int(size.width))", x:0, y:20+26)
        
        //12ポイントの文字列の描画
        drawString(str: "12ポイント", x:0, y:20+26*2, size: 12, color: UIColor(red:255/255, green:0/255, blue:0/255, alpha:1.0))
        
        //16ポイントの文字列の描画
        drawString(str: "16ポイント", x:0, y:20+26*3, size: 16, color: UIColor(red:0/255, green:255/255, blue:0/255, alpha:1.0))

        //24ポイントの文字列の描画
        drawString(str: "24ポイント", x:0, y:20+26*4, size: 24, color: UIColor(red:0/255, green:0/255, blue:255/255, alpha:1.0))
    }
    
    //文字サイズの取得
    func getStringSize(str: String, size: Float = 24) -> CGSize{
        let attrs = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: CGFloat(size))]
        return str.size(withAttributes: attrs)
    }
    
    //文字列の描画
    func drawString(str: String, x: Int, y: Int, size: Float = 24, color: UIColor = UIColor.black){
        let attrs = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: CGFloat(size)), NSAttributedString.Key.foregroundColor: color]
        str.draw(at: CGPoint(x:CGFloat(x),y:CGFloat(y)), withAttributes: attrs)
    }
}
