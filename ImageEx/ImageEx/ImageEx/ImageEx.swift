//
//  ImageEx.swift
//  ImageEx
//
//  Created by 伊志嶺海 on 2019/06/23.
//  Copyright © 2019 伊志嶺海. All rights reserved.
//

import UIKit

//イメージの描画
class ImageEx: UIView{
    var _image: UIImage! //イメージ
    
    //初期化
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        //画像ファイルおの読み込み
        _image = UIImage(named: "sample.png")
    }
    
    //描画時に呼ばれる
    override func draw(_ rect: CGRect) {
        //イメージの描画
        _image.draw(at: CGPoint(x:0, y:20))
        
        //イメージの拡大縮小描画
        let w = _image.size.width
        let h = _image.size.height
        _image.draw(in: CGRect(x:0, y:180, width: w*2, height: h*2))
    }
}
