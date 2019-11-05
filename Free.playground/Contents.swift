import Cocoa

//Chapter2

//section2.2 print
//print(123)
//print(1+2+3)
//print(8/3) //整数同士だとあ小数点切り捨て
//print(8/3.0) //一方が少数だと少数以下も表示

//section2.3 定数と変数
//let test = "テスト"
//print(test)
//let price = 2800.0
//let taxRate = 1.08
//let taxIn = price * taxRate
//print(price*taxRate)
//print(taxIn)
//var price = 2800.0
//price = price - 800
//let taxRate = 1.08            //変更するかもでは, var使わない. どうしても変更が必要な値のみvar.
//let taxIn = price * taxRate
//print(taxIn)
//do {                        //doは好きな場所にスコープ作れる. スコープの中だけで変数の重複がないか確認できる.
//    let test = "test1"
//    print(test)
//}
//
//do {
//    let test = "test2"
//    print(test)
//}

//section2.5 型
//let test1 = 1
//let test2: UInt = 2
//let test3 = 3.0
//let test4: Float = 4.0
//print(type(of: test1))
//print(type(of: test2))
//print(type(of: test3))
//print(type(of: test4))

//section2.6 タプル 複数の値をグループ化
//let student = (50821, "田中", "太郎")
//let score: (String, Float) = ("国語", 75.0)
//let (id, familyName, firstName) = student
//print(id)
//print(familyName)
//print(firstName)
//let (_, japanese) = score
//print(japanese)
//print(student.1)
//print(student.2)
//print(score.0)
//print(score.1)
//let student = (id: 50821, familyName: "田中", firstName: "太郎")
//let score: (subject: String, point: Float) = ("国語", 75.0)
//print(student.0, student.1, student.2)
//print(student.id, student.familyName, student.firstName)
//print(score.0, score.1)
//print(score.subject, score.point)
//var student = (id: 50821, familyName: "田中", firstName: "太郎")
//var score: (subject: String, point: Float) = ("国語", 75.0)
//student = (id: 46527, familyName: "田中", firstName: "太郎")
//student.familyName = "鈴木"
//student.2 = "二郎"
//score.subject = "数学"
//score.1 = 50.0
//print(student.0, student.1, student.2)
//print(student.id, student.familyName, student.firstName)
//print(score.0, score.1)
//print(score.subject, score.point)
//func getScore() -> (String, Int) {
//    return ("国語", 90)
//}
//let (subject, point) = getScore()
//print(subject + "の点数は" + String(point) + "点です")

//section2.7 演算子
//分かるので省略

//section2.8 レンジ演算子
//let closed = 0...3
//let halfOpen = 0..<3
//print(closed.contains(0))
//print(closed.contains(3))
//print(halfOpen.contains(0))
//print(halfOpen.contains(3))
//let closed1 = 0...
//let closed2 = ...3
//let halfOpen1 = ..<3
//print(closed1.contains(-1))
//print(closed1.contains(3))
//print(closed2.contains(-1))
//print(closed2.contains(3))

//section2.9 ビット演算子
//let bits1: UInt8 = 0b00000111
//let bits2: UInt8 = 7
//let not1 = ~bits1
//let not2 = ~bits2
//print(bits1)
//print(bits2)
//print(not1)
//print(not2)
//print(not1 == 0b00000111)
//print(not2 == 0b00000111)
//let input1: UInt8 = 0b00011111
//let input2: UInt8 = 0b11111000
//let output1: UInt8 = input1 & input2
//let output2: UInt8 = input1 | input2
//let output3: UInt8 = input1 ^ input2
//print(input1)
//print(output1 == 0b00011000)
//print(output2 == 0b11111111)
//print(output3 == 0b11100111)
//print(input1 << 1)
//print(input1 << 1 == 0b00111110)
//let materialRed: UInt32 = 0xF44336
//let BlueComponent = materialRed & 0x0000FF
//let GreenComponent = (materialRed & 0x00FF00) >> 8
//let RedComponent = (materialRed & 0xFF0000) >> 16
//print(RedComponent, GreenComponent, BlueComponent)

//section2.10 if文:条件分岐
//let num = 129
//if num % 2 == 0 {
//    print("2の倍数です")
//}else if num % 3 == 0{
//    print("3の倍数です")
//}else{
//    print("2の倍数でも3の倍数でもありません")
//}
//let num = 6
//if num % 2 == 0{
//    if num % 3 == 0{
//        print("2と3の公倍数です")
//    }else{
//        print("2の倍数です")
//    }
//}else if num % 3 == 0{
//    print("2の倍数ではなく3の倍数です")
//}else{
//    print("2の倍数でも3の倍数でもありません")
//}
//let num1 = 1
//let result1 = num1 % 2 == 1 ? "奇数です" : "偶数です"
//print(result1)
//let num2 = 0
//let result2 = num2 % 2 == 1 ? "奇数です" : num2 == 0 ? "0です" : "偶数です"
//print(result2)

//section2.11 switcn文:高度な条件分岐
//let rank = "B"
//var star = ""
//switch rank {
//case "SS", "S":
//    star += "★"
//    fallthrough
//case "A":
//    star += "★"
//    fallthrough
//case "B":
//    star += "★"
//    fallthrough
//default:
//    print(rank, star)
//}
//let score = (80, 85, 65)
//switch score {
//case (100, 100, 100):
//    print("全て満点です")
//case (100, _, _), (_, 100, _), (_, _, 100):
//    print("1つ満点です")
//case (70..., 70..., 70...):
//    print("全体的に高得点です")
//default:
//    print("頑張りましょう")
//}
//let notice = ("地震が発生しました",true)
//switch notice{
//case let (message, true):
//    print("[重要]", message)
//case (let message, false):
//    print("[お知らせ]", message)
//}
//let paperSize = (450, 50)
//switch paperSize {
//case let (width, height) where width > height:
//    print("横長の用紙")
//case let (width, height) where width < height:
//    print("縦長の用紙")
//default:
//    print("正方形の用紙")
//}

//section2.12 for-in:列挙
//for i in 0..<5 {
//    let message = i % 2 == 0 ? "偶数" : "奇数"
//    print(i, message)
//}
//let names = ["スティーブ", "ジョニー", "ティム"]
//for name in names {
//    print(name)
//}
//var num = 1
//for _ in 0..<8 {
//    num *= 2
//}
//print(num)
//let phones = [
//    "iPhone 8":4.7,
//    "iPhone 8 plus":5.5,
//    "iPhone X":5.8,
//    "iPhone SE":4.0,
//]
//for (name, size) in phones {
//    print(name,size)
//}
//for i in stride(from: 0, through: 10, by: 2){
//    print(i)
//}

//while文:繰り返し
//var i = 0
//while i < 5 {
//    if i > 2{
//        break
//    }
//    print(i)
//    i += 1
//}
//repeat {
//    print(i)
//    i += 1
//} while i < 5
//
//var j = 5
//repeat {
//    print(j)
//    j += 1
//} while j < 5


//Chapter3----------------------------------------------------------------------------------------------------------------
//section3.1 関数の呼び出し--------------------------------------------------------------------------------------------------
//print(arc4random())
//print(arc4random() % 10)

//section3.2 関数の定義----------------------------------------------
//var total: UInt32 = 0
//var even: UInt32 = 0
////ランダム生成, 合計計算, 偶数カウントをする関数を定義
//func randomIncrementAndCountEven() {
//    let num = arc4random() % 10 + 1
//    print(num)
//    total += num
//    if num % 2 == 0{
//        even += 1
//    }
//}
////上記で定義した関数の呼び出し
//randomIncrementAndCountEven()
//randomIncrementAndCountEven()
//randomIncrementAndCountEven()
//print()
//print(total)
//print(even)
//section3.3 戻り値------------------------------------------------------------------------------------------------------
//var total: UInt32 = 0
//var even: UInt32 = 0
////ランダムな数字を生成して返す関数
//func generateRandomNumber() -> UInt32 {
//    return arc4random() % 10 + 1
//}
//
//func randomIncrementAndCountEven() {
//    let num = generateRandomNumber()
//    print(num)
//    total += num
//    if num % 2 == 0{
//        even += 1
//    }
//}
//randomIncrementAndCountEven()
//randomIncrementAndCountEven()
//randomIncrementAndCountEven()
//
//print()
//print(total)
//print(even)
//section3.4 引数------------------------------------------------------------------------------------------------------
//var total: UInt32 = 0
//var even: UInt32 = 0
//
//func generateRandomNumber() -> UInt32 {
//    return arc4random() % 10 + 1
//}
//
////偶数を数える関数
//func countEven(num: UInt32) {
//    if num % 2 == 0{
//        even += 1
//    }
//}
//
//func randomIncrementAndCountEven() {
//    let num = generateRandomNumber()
//    print(num)
//    total += num
//    countEven(num: num) //偶数を数える
//}
//randomIncrementAndCountEven()
//randomIncrementAndCountEven()
//randomIncrementAndCountEven()
//
//print()
//print(total)
//print(even)
//----------------------------------------------
//func generateRandomNumber(max: UInt32) -> UInt32{
//    return arc4random() % max + 1
//}
//print(generateRandomNumber(max: 5))
//print(generateRandomNumber(max: 10))
//----------------------------------------------
//func generateRandomNumber(max: UInt32 = 10) -> UInt32{
//    return arc4random() % max + 1
//}
//print(generateRandomNumber(max: 5))
//print(generateRandomNumber())
//----------------------------------------------
//func generateRandomNumber(lessThanOrEqualTo max: UInt32 = 10) -> UInt32{
//    return arc4random() % max + 1
//}
//print(generateRandomNumber(lessThanOrEqualTo: 100))
//print(generateRandomNumber())
//section3.5 関数名の表記-----------------------------------------------------------------------------------------------------
//func hello(){
//    print(#function)
//    print(#file)
//    print(#line)
//    print(#column)
//}
//section3.6 guard-----------------------------------------------------------------------------------------------------
//func generateRandomNumber(max: UInt32 = 10) -> UInt32{
//    guard max > 0 else{
//        print("maxに0以下の数字は指定できません。") //関数終了していないことをエラーで教えてくれる
//    }
//    return arc4random() % max + 1
//}
//print(generateRandomNumber(max: 100))
//print(generateRandomNumber(max: 0))
//section3.7 defer-----------------------------------------------------------------------------------------------------
//func isNormal(number: Int){
//    defer {
//        print("正常値の判定を終了します。") //先に書かれたdeferが後に実行される
//    }
//    defer {
//        print("正常値の判定がもうすぐ終了します。") //後に書いたdeferhが先に実行される
//    }
//    print("正常値の判定を開始します。")
//    guard number > 30 else {
//        return //20は異常値のため, ここで関数を抜ける
//    }
//    guard number < 70 else {
//        return
//    }
//    defer {
//        print("正常値の判定中です、。") //異常値の場合はこの処理は実行されない
//    }
//    print("\(number)は正常値です。")
//}
//isNormal(number: 20)
//section3.8 クロージャー-----------------------------------------------------------------------------------------------------
//let double = {(x: Int) -> Int in
//    return x*2
//}
//print(double(2))
//print(double(3))
//----------------------------------------------
//func callClosure(closure: (String) -> Void) {
//    closure("test")
//}
//let printText = {(text: String) -> Void in
//    print(text)
//}
//callClosure(closure: printText)
//----------------------------------------------
//func callClosure(closure: (String) -> Void) {
//    closure("test")
//}
//callClosure(closure: { text in
//    print("text")
//})
//----------------------------------------------
//func callClosure(closure: (String) -> Void) {
//    closure("test")
//}
//callClosure(closure: {print($0)})
//----------------------------------------------
//func callClosure(closure: (String) -> Void) {
//    closure("test")
//}
//callClosure{print($0)}
//----------------------------------------------
//func callClosure(closure: (String) -> Void) {
//    closure("test")
//}
//callClosure{ _ in
//    print("text2")
//}
//----------------------------------------------
//func printEach(preprocessor: (Int) -> Int) {
//    print(preprocessor(1))
//    print(preprocessor(2))
//    print(preprocessor(3))
//    print()
//}
//printEach{ _ in 0}
//printEach{ $0 }
//printEach{ $0 * 2 }
//printEach{ $0 * 3 }


//Chapter4----------------------------------------------------------------------------------------------------------------
//section4.1 文字列の作成--------------------------------------------------------------------------------------------------
//let text = "1行目\n2行目"
//print(text)
//let text =  """
//            1行目
//            2行目
//            3行目
//            """
//print(text)
//section4.2 空文字列の作成--------------------------------------------------------------------------------------------------
//func hello(name: String) {
//    if name.isEmpty {
//        print("名前を入力してください")
//    }else{
//        print("名前の入力ありがとうございます")
//    }
//}
//hello(name: "スティーブ")
//hello(name: "")
//----------------------------------------------
//let text = ""
//print(text == "")
//print(text.count == 0)
//section4.3 文字列の操作--------------------------------------------------------------------------------------------------
//let lastName = "田中"
//let firstName = "太郎"
//let fullName = lastName + firstName
//print("あなたの名前は"+fullName+"さんですね")
//----------------------------------------------
//let before = "◯◯株式会社 行"
//let after = before.replacingOccurrences(of: "行", with: "御中")
//print(before)
//print(after)
//----------------------------------------------
//let text1 = "text"
//let text2 = text1.uppercased()
//let text3 = text2.lowercased()
//print(text2)
//print(text3)
//section4.4 数値と文字列の変換-------------------------------------------------------------------------------------------------
//let olympic = "TOKYO " + String(2018 + 2)
//print(olympic)
//----------------------------------------------
//let price = 200.0
//let taxin = Int(price * 1.08)
//print("税込: "+taxin.description+"円")
//section4.5 文字単位での操作-------------------------------------------------------------------------------------------------
//let text = "text"
//for character in text.characters {
//    print(character)
//}
//var i=1
//for character in text.characters {
//    print(String(i)+"文字目: "+String(character))
//}
//----------------------------------------------
//let text = "text"
//for character in text{
//    print(character)
//}
//print()
//print(text.count)
//section4.6 展開-------------------------------------------------------------------------------------------------
//let number = 1
//let text1 = "text" + String(number) + String(number)
//let text2 = "text\(number)\(number)"
//print(text1)
//print(text2)
//section4.7 複雑なフォーマット-------------------------------------------------------------------------------------------------
//let date = String(format: "%04d/%02d/%02d", 1998, 4, 8)
//print(date)
//----------------------------------------------
//print(String(format: "%%d    : %d", 1))     //整数
//print(String(format: "%%4d   : %4d", 1))    //スペースで桁を揃えた整数
//print(String(format: "%%04d  : %04d", 1))   //0で桁数を揃えた整数
//print(String(format: "%%f    : %f", 1.0))   //少数
//print(String(format: "%%.2f  : %.2f", 1.0)) //少数（）小数点以下の桁数を指定
//print(String(format: "%%@    : %@", "text"))//文字列
//----------------------------------------------
//let time = [8, 7, 31]
//print(String(format: "%02d:%02d:%02d", arguments: time))
//section4.8 特別な文字-------------------------------------------------------------------------------------------------
//let text = "\u{2660}"
//print(text)
//section4.9 比較-------------------------------------------------------------------------------------------------
//let text = "text"
//let text2 = "text"
//let text3 = "TEXT"
//print(text == text2)
//print(text2 == text3)
//----------------------------------------------
//let text = "あいうえお"
//if text.contains("あ"){
//    print("「あ」は含まれています。")
//}
//if text.contains("か"){
//    print("「か」は含まれています。")
//}
//----------------------------------------------
//let text = "text"
//print(text.hasPrefix("te"))
//print(text.hasPrefix("TE"))
//print(text.hasSuffix("xt"))
//print(text.hasSuffix("XT"))
//section4.10 部分文字列-------------------------------------------------------------------------------------------------
//let text = "3556-0020-2036-0505"
//let start = text.startIndex
//let char = text[start]
//let end = text.endIndex
//let index = text.index(before: end)
//print("1桁目: "+String(char))
//print(text[index])
//----------------------------------------------
//let text = "3556-0020-2036-0505"
//let start = text.startIndex
//let after = text.index(after: start)
//let offset = text.index(start, offsetBy: 4)
//print("2文字目: \(text[after])")
//print("5文字目: \(text[offset])")
//----------------------------------------------
//let text = "3556-0020-2036-0505"
//let start = text.startIndex
//
//let range1 = start...text.index(start, offsetBy: 4) //1文字目から5文字目まで
//let range2 = start..<text.index(start, offsetBy: 4) //1文字目から4文字目(5文字目の前)まで
//let range3 = text.index(start, offsetBy: 14)...     //15文字目以降
//let range4 = ...text.index(start, offsetBy: 4)      //5文字目まで
//let range5 = ..<text.index(start, offsetBy: 4)      //4文字目(5文字目の前)まで
//
//print(text[range1])
//print(text[range2])
//print(text[range3])
//print(text[range4])
//print(text[range5])
//Chapter5----------------------------------------------------------------------------------------------------------------
//section5.1 配列の作成--------------------------------------------------------------------------------------------------
//let integers = [1,2,3]
//let float:[Float] = [1.0,2.0,3.0]
//let scores = [Int](repeating: 10, count: 10)
//let Renzoku = [Int](0...1000)
//print(integers)
//print(float)
//print(scores)
////print(Renzoku)
//Renzoku.forEach{n in print(n)}
//Chapter6----------------------------------------------------------------------------------------------------------------
//section6.1 辞書の作成--------------------------------------------------------------------------------------------------
//let info = [
//    "width": 200,
//    "height": 100,
//    "fontSize": 16
//]
//print(info)
//----------------------------------------------
//let score = [10,80,70,30,50,20,90,60]
//let average = 60
//let groups = Dictionary(grouping: score) {score in
//    score > average ? "平均より上" : "平均より下"
//}
//print(groups)
//Chapter8----------------------------------------------------------------------------------------------------------------
//section8.2 オプショナルの定義--------------------------------------------------------------------------------------------------
//let text1: String? = "text"
//let text2: String? = nil
//var text3: String? = "text"
//var text4: String? = nil
//print(text1)
//print(text2)
//print(text3)
//print(text4)
//section8.5 オプショナルに使える演算子-----------------------------------------------------------------------------------------------
//let text1: String? = "text"
//let text2 = text1 ?? "text1は空っぽです"
//let text3: String? = nil
//let text4 = text3 ?? "text3は空っぽです"
//print(text2)
//print(text4)
//section8.7 エラー処理-----------------------------------------------------------------------------------------------
//エラーを定義
//enum FileError: Error {
//    case cannotLoad
//}
//
////ファイル読み込み成功を想定
//func sucsessfullLoad() throws -> String {
//    return "読み込んだ内容1"
//}
//
////ファイル読み込み失敗を想定
//func failedLoad() throws -> String {
//    throw FileError.cannotLoad
//    return "読み込んだ内容2"
//}
//
//if let content = try? sucsessfullLoad() {
//    print(content)
//}
//if let content = try? failedLoad() {
//    print(content)
//}
//
//do {
//    try failedLoad()
//} catch FileError.cannotLoad {
//    print("ファイルを読み込めませんでした.")
//}
//section8.8 キャスト-----------------------------------------------------------------------------------------------
//let numbers: [Any] = [1, 2, 3, 4.5, 5.5] //Anyはなんでも入る特別な型
//var intCount = 0
//var doubleCount = 0
//
//for n in numbers {
//    if n is Int {
//        intCount += 1
//    } else if n is Double {
//        doubleCount += 1
//    }
//}
//print(intCount)
//print(doubleCount)
