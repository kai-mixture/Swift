import Cocoa

//Chapter9======================================================================================
//section9.1 クラスとは----------------------------------------------------
//func printiPhone(owner: String) {
//    print("\(owner)のiPhone")
//}
//printiPhone(owner: "スティーブ")
//printiPhone(owner: "ジョニー")
//-----------------------------------------------------------------------
//class IPhone {
//    let model: String       //モデル名
//    let owner: String       //オーナー
//    var cover: String = ""  //つけているカバー
//
//    //インスタンスの作成時に状態を設定する
//    init(model: String, owner: String){
//        self.model = model
//        self.owner = owner
//    }
//
//    //カバーをつける
//    func set(cover: String){
//        self.cover = cover
//    }
//
//    //自分の情報を説明する
//    func info() -> String {
//        return "\(owner)の\(model) | \(cover)"
//    }
//}
//
////1つ目のiPhoneデータ
//let phone1 = IPhone(model: "iPhone 8", owner: "スティーブ")
////2つ目のiPhoneデータ
//let phone2 = IPhone(model: "iPhone 8 Plus", owner: "ジョニー")
////2つ目のiPhoneにカバーをつける
//phone2.set(cover: "ソフトカバー")
//
//print(phone1.info()) //1つ目のiPhoneの情報を表示
//print(phone2.info()) //2つ目のiPhoneの情報を表示
//------------------------------------------------------------------------
//section9.2 クラスの定義----------------------------------------------------
//class IPhone {
//}
//let phone = IPhone()
//print(phone)
//section9.3 メンバー----------------------------------------------------
//class IPhone {
//    var histories = [String]()
//    var model = "iPhone 8" {
//        willSet {
//            histories.append("\(model)から\(newValue)に変更されます.")
//        }
//        didSet {
//            histories.append("\(model)に変更されました.")
//        }
//    }
//}
//let phone = IPhone()
//phone.model = "iPhone 8 Plus"
//phone.model = "iPhone X"
//print(phone.histories.joined(separator: "\n"))
//------------------------------------------------------------------------
//class IPhone{
//    var cover = "カバー"
//    var isCoverd: Bool {
//        return !cover.isEmpty
//    }
//}
//
//let phone1 = IPhone()
//print(phone1.isCoverd)
//
//let phone2 = IPhone()
//phone2.cover = ""
//print(phone2.isCoverd)
//------------------------------------------------------------------------
//class IPhone{
//    var cover = "カバー"
//    var isCoverd: Bool {
//        get {
//            return !cover.isEmpty
//        }
//        set {
//            if newValue {
//                cover = "カバー"
//            } else {
//                cover = ""
//            }
//        }
//    }
//}
//
//let phone1 = IPhone()
//phone1.isCoverd = true
//print(phone1.cover)
//------------------------------------------------------------------------
//class IPhone {
//    var cover: String = ""
//
//    func set(cover:String) {
//        guard self.cover.isEmpty else {
//            return
//        }
//        self.cover = cover
//    }
//}
//
//let phone = IPhone()
//phone.set(cover: "ソフトカバー")
//phone.set(cover: "ハードカバー") //無視される
//print(phone.cover)
//section9.4 イニシャライザー----------------------------------------------------
//class IPhone {
//    let model:String
//    init(model:String) {
//        self.model = model
//    }
//}
//print(IPhone(model: "iPhone 8 Plus").model)
//------------------------------------------------------------------------
//class IPhone {
//    let cover: String
//    let covered: Bool
//
//    init(cover:String, covered:Bool) {
//        self.cover = cover
//        self.covered = covered
//    }
//
//    convenience init (cover: String) {
//        let covered = !cover.isEmpty
//        self.init(cover: cover, covered: covered)
//    }
//}
//print(IPhone(cover: "").covered)
//------------------------------------------------------------------------
//class IPhone {
//    let model: String
//
//    init(model: String = "iPhone") {
//        self.model = model
//    }
//}
//print(IPhone().model)
//------------------------------------------------------------------------
//class IPhone {
//    let model: String
//
//    init?(model: String) {
//        guard !model.isEmpty else {return nil}
//        self.model = model
//    }
//}
//print(IPhone(model: ""))
//section9.5 クラスメンバー----------------------------------------------------
//class IPhone {
//    static var count = 0
//
//    init() {
//        IPhone.count += 1
//    }
//}
//
//_ = IPhone()
//_ = IPhone()
//print(IPhone.count)
//------------------------------------------------------------------------
//class IPhone {
//    static func models() -> [String] {
//        return ["iPhone 8", "iPhone 8 Plus"]
//    }
//}
//print(IPhone.models().joined(separator: "\n"))
//section9.6 継承----------------------------------------------------
//class IOSDevice {
//    let model: String
//
//    init(model: String) {
//        self.model  = model
//    }
//
//    func info() -> String {
//        return model
//    }
//}
//
//class IPhone: IOSDevice {
//    var isPlus: Bool {
//        return model.hasSuffix("Plus")
//    }
//
//    override func info() -> String {
//        return "このiPhoneのモデルは\(model)です"
//    }
//}
//
//class IPad: IOSDevice {
//    var isPro: Bool {
//        return model.hasSuffix("Pro")
//    }
//}
//
//let phone = IPhone(model: "iPhone 8 Plus")
//let pad = IPad(model: "iPad Pro")
//print(phone.isPlus)
//print(pad.isPro)
//print(phone.info())
//section9.7 アクセスコントロール----------------------------------------------------
//class IPhone {
//    private var cover = ""
//
//    var covered: Bool {
//        return !cover.isEmpty
//    }
//
//    func set(cover: String) {
//        guard self.cover.isEmpty else {
//            return
//        }
//        self.cover = cover
//    }
//}
//let phone = IPhone()
////phone.cover = "ハードカバー" //エラーが出る
//phone.set(cover: "ハードカバー")
//print(phone.covered)
//section9.8 プロトコル----------------------------------------------------
//class IPhone: CustomStringConvertible {
//    var model = "iPhone 8"
//    var description: String {
//        return "このiPhoneのモデルは\(model)です"
//    }
//}
//let phone = IPhone()
//print(phone)
//section9.9 クラスの拡張----------------------------------------------------
//class IPhone {
//    var model = "iPhone 8"
//}
//extension IPhone {
//    var description: String {
//        return "このiPhoneのモデルは\(model)です"
//    }
//}
//
//class ViewController: UIViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let phone = IPhone()
//        print(phone)
//    }
//}
