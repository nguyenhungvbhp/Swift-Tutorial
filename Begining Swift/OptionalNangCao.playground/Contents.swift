//: Playground - noun: a place where people can play

import UIKit

extension Int {
    
    //Phương thực hiện cộng chính số đó với một số khác
    func addWithNumber(otherNum: Int) -> Int {
        return self + otherNum
    }
    
    //Phương thức nhân chính số hiện tại với số khác
    func multiply(orterNum: Int) -> Int {
        return self * orterNum
    }
}

var numberInt: Int = 10
numberInt.addWithNumber(otherNum: 2).multiply(orterNum: 3)//Kết quả 36

func add(one:Int, tow: Int) -> Int {
    return one + tow
}

func mul(one: Int, tow: Int) -> Int {
    return one * tow
}

add(one: 3, tow: 1)

extension Int {
    func divice(otherNum: Int) -> Int? {
        if otherNum == 0 {
            return nil
        }
        
        return self / otherNum
    }
}

var result = 10.divice(otherNum: 5)
if result != nil {
    print(result) //Optional(2)
}else {
    print("Kết quả nil")
}

var di = 10
di.divice(otherNum: 2)?.addWithNumber(otherNum: 5)//10
di.divice(otherNum: 0)?.addWithNumber(otherNum: 3) //nil


//Ép kiểu
var json: [String: NSObject?] =

    [
        "array" : NSArray(),
        "dict"  : NSDictionary()
        "nil"   : nil
    ]

json["array"]