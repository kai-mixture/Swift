//
//  ObjectEx.swift
//  ObjectEX
//
//  Created by 伊志嶺海 on 2019/06/22.
//  Copyright © 2019 伊志嶺海. All rights reserved.
//

import UIKit


//オブジェクト
class ObjectEx: UIView{
    override func draw(_ rect: CGRect){
        //オブジェクト型の変数の定義
        let calendar: NSCalendar =
            NSCalendar(calendarIdentifier:
            NSCalendar.Identifier.gregorian)!
        
        //取得情報フラグの準備
        let flags: NSCalendar.Unit = [
            NSCalendar.Unit.year,  //年
            NSCalendar.Unit.month, //月
            NSCalendar.Unit.day,   //日
            NSCalendar.Unit.hour,  //時間
            NSCalendar.Unit.minute //分
        ]
        
        //日付コンポーネント(成分)の取得
        let comps = (calendar as NSCalendar).components(flags, from: NSDate() as Date)
        
        //年月日の取得
        let year = comps.year
        let month = comps.month
        let day = comps.day
        let hour = comps.hour
        let minute = comps.minute
        
        //文字列の描画
        let str = "\(year)年"+"\(month)月"+"\(day)日"+"\(hour)時"+"\(minute)分"
        drawString(str: str, x:0, y:20)
    }
    //文字列の描画
    func drawString(str: String, x: Int, y: Int){
        let attrs = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24)]
        //str.draw(at: CGPoint(x:0,y:20), withAttributes: attrs)
        str.draw(at: CGPoint(x:CGFloat(x),y:CGFloat(y)), withAttributes: attrs)
    }
}
