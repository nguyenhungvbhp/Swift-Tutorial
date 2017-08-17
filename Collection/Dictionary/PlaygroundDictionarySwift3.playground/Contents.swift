//: Playground - noun: a place where people can play

import UIKit

var responseMessages = [
                        200: "OK",
                        403: "Access forbidden",
                        404: "File not found",
                        500: "Internal server error"
                        ]

print(responseMessages[200])
print(responseMessages[300])
print("-------------------")


let httpResponseCode = [200, 403, 301]

for code in httpResponseCode {
    if let message = responseMessages[code] {
        print("\(code): \(message)")
    }else{
        print("Unknow response \(code)")
    }
}

let records :[[AnyObject]] = [
    [1 as AnyObject, "Nguyen" as AnyObject, "Hung" as AnyObject, "MT Soft ware!" as AnyObject, 0 as AnyObject],
    [2 as AnyObject, "Nguyen" as AnyObject, "Hung" as AnyObject, "MT Soft ware!" as AnyObject, 10 as AnyObject],
    [3 as AnyObject, "Nguyen" as AnyObject, "Hung" as AnyObject, "MT Soft ware!" as AnyObject, 20 as AnyObject],
    [4 as AnyObject, "Nguyen" as AnyObject, "Hung" as AnyObject, "MT Soft ware!" as AnyObject, 30 as AnyObject],
    [5 as AnyObject, "Nguyen" as AnyObject, "Hung" as AnyObject, "MT Soft ware!" as AnyObject, 40 as AnyObject],
    [6 as AnyObject, "Nguyen" as AnyObject, "Hung" as AnyObject, "MT Soft ware!" as AnyObject, 50 as AnyObject],
    
                            ]

let allSalaries = records.map{$0.last as! Int}
print(allSalaries)

let total = allSalaries.reduce(0, - )
print(total)

let goodPay = records.filter{($0.last as! Int) > 20}
print(goodPay)


class Teprature {
    
   private var celsius: Float = 0.0
   private var fahrenheit: Float {
        get {
            return celsius * 1.8 + 32.0
        }
        
        private set {
            celsius = (newValue - 32)/1.8
        }
    }
}

var temp = Teprature()
temp.fahrenheit = 89
