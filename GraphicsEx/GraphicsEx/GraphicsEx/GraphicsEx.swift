//
//  GraphicsEx.swift
//  GraphicsEx
//
//  Created by 伊志嶺海 on 2019/06/23.
//  Copyright © 2019 伊志嶺海. All rights reserved.
//

import UIKit
import QuartzCore

//図形の描画
class GraphicsEx: UIView {
    var _context: CGContext! //グラフィックスコンテキスト
    
    //色の指定
    func setColor(r: Int, g:Int, b: Int){
        CGContextSetRGBFillColor(_context?, CGFloat(r)/255.0, CGFloat(g)/255.0, CGFloat(b)/255.0, 1.0)
        CGContextSetRGBStrokeColor(_context, CGFloat(r)/255.0, CGFloat(g)/255.0, CGFloat(b)/255.0, 1.0)
    }
    
    //ライン幅の指定
    func setLineWidth(width: Float){
        CGContextSetLineWidth(_context, CGFloat(width))
    }
    
    //ラインの描画
    func drawLine(x0: Float, y0: Float, x1: Float, y1: Float){
        CGContextSetLineCap(_context, CGLineCap.Round)
        CGContextMoveToPoint(_context, CGFloat(x0), CGFloat(y0))
        CGContextAddLineToPoint(_context, CGFloat(x1), CGFloat(y1))
        CGContextStrokePath(_context)
    }
    
    //ポリラインの描画
    func drawPolyline(x: Array<Float>, y: Array<Float>){
         CGContextSetLineCap(_context, CGLineCap.Round)
         CGContextSetLineJoin(_context, CGLineJoin.Round)
        CGContextMoveToPoint(_context, CGFloat(x[0]), CGFloat(y[0]))
        for i in 0..<x.count{
            CGContextAddLineToPoint(_context, CGFloat(x[i]), CGFloat(y[i]))
        }
        CGContextStrokePath(_context)
    }
    
    //四角形の描画
    func drawRect(x:Float, y:Float, w:Float, h:Float){
        CGContextMoveToPoint(_context, CGFloat(x), CGFloat(y))
        CGContextAddLineToPoint(_context, CGFloat(x+w), CGFloat(y))
        CGContextAddLineToPoint(_context, CGFloat(x), CGFloat(y+h))
        CGContextAddLineToPoint(_context, CGFloat(x), CGFloat(y+h))
        CGContextAddLineToPoint(_context, CGFloat(x), CGFloat(y))
        CGContextAddLineToPoint(_context, CGFloat(x+w), CGFloat(y))
        CGContextStrokePath(_context)
    }
    
    //四角形の塗りつぶし
    func fillRect(x:Float, y:Float, w:Float, h:Float){
        CGContextFillRect(_context, CGPoint(CGFloat(x), CGFloat(y), CGFloat(w), CGFloat(h)))
    }
    
    //円の描画
    func drawCircle(x:Float, y:Float, w:Float, h:Float){
        CGContextAddEllipseInRect(_context, CGPoint(CGFloat(x), CGFloat(y), CGFloat(w), CGFloat(h)))
        CGContextStrokePath(_context)
    }
    
    //円の塗りつぶし
    func fillCircle(x:Float, y:Float, w:Float, h:Float){
        CGContextFillEllipseInRect(_context, CGPoint(CGFloat(x), CGFloat(y), CGFloat(w), CGFloat(h)))
    }
    
    //描画
    override func draw(_ rect: CGRect) {
        //グラフィックコンテキストの取得
        _context = UIGraphicsGetCurrentContext()
        
        //色の指定
        setColor(r: 255, g:255, b:255)
        
        //背景のクリア
        let w = Float(self.flame.size.width)
        let h = Float(self.flame.size.height)
        fillRect(x: 0, y: 0, w: w, h: h)
        
        //ラインの描画
        setColor(r:255, g:0, b:0)
        setLineWidth(width: 2)
        drawLine(x0: 50, y0: 50, x1: 50, y1: 50+80)
        
        //ポリラインの描画
        let dx: Array<Float> = [110, 170, 130, 190, 110]
        let dy: Array<Float> = [50, 60, 90, 100, 130]
        setColor(r:255, g:0, b:0)
        setLineWidth(width: 3)
        drawPolyline(x: dx, y: dy)
        
        //四角形の描画
        setColor(r: 0, g: 255, b: 0)
        setLineWidth(width: 1)
        drawRect(x: 10, y: 140, w: 80, h: 80)
        
        //四角形の塗りつぶし
        setColor(r: 0, g: 255, b: 0)
        setLineWidth(width: 1)
        fillRect(x: 110, y: 140, w: 80, h: 80)
        
        //円の描画
        setColor(r: 0, g: 0, b: 255)
        drawCircle(x: 10, y: 240, w: 80, h: 80)
        
        //円の塗りつぶし
        setColor(r: 0, g: 0, b: 255)
        fillCircle(x: 110, y: 240, w: 80, h: 80)
    }
}
