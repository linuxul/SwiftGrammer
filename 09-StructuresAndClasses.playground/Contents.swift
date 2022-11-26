import UIKit

// 09.구조체와 클래스 (Structures and Classes)


// 정의 구문 (Definition Syntax)
struct SomeStructure {
    // structure definition goes here
}
class SomeClass {
    // class definition goes here
}


struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}


// 구조체와 클래스 인스턴스 (Structure and Class Instances)
let someResolution = Resolution()
let someVideoMode = VideoMode()


// 프로퍼티 접근 (Accessing Properties)
print("The width of someResolution is \(someResolution.width)")
// Prints "The width of someResolution is 0"


print("The width of someVideoMode is \(someVideoMode.resolution.width)")
// Prints "The width of someVideoMode is 0"


someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")
// Prints "The width of someVideoMode is now 1280"


let vga = Resolution(width: 640, height: 480)


// 구조체와 열거형은 값 타입 (Structures and Enumerations Are Value Types)
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd


cinema.width = 2048


print("cinema is now \(cinema.width) pixels wide")
// Prints "cinema is now 2048 pixels wide"


print("hd is still \(hd.width) pixels wide")
// Prints "hd is still 1920 pixels wide"


enum CompassPoint {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}
var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection.turnNorth()

print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")
// Prints "The current direction is north"
// Prints "The remembered direction is west"


// 클래스는 참조 타입 (Classes Are Reference Types)
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0


let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0


print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")
// Prints "The frameRate property of tenEighty is now 30.0"


// 식별 연산자 (Identity Operators)
if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}
// Prints "tenEighty and alsoTenEighty refer to the same VideoMode instance."

