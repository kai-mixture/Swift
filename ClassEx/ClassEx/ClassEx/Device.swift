//
//  Device.swift
//  ClassEx
//
//  Created by 伊志嶺海 on 2019/06/22.
//  Copyright © 2019 伊志嶺海. All rights reserved.
//

class Device {
    var name: String = "" //名前
    var version: Int = 0  //バージョン
    
    //メソッドの定義
    func info() -> String{
        return "\(name)のバージョンは\(version)"
    }
    
    //引数なしのイニシャライザ
    convenience init() {
        self.init(name: "none", version: 1)
    }
    
    //引数ありのイニシャライザの定義
    init(name: String, version: Int) {
        self.name = name
        self.version = version
    }
    
}
