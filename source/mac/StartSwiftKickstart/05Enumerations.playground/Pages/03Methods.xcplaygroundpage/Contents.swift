//: ### Methods
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
import UIKit

enum Color {
    case red
    case green
    case blue
}

func uiColor(color: Color) -> UIColor {
    switch color {
    case .red:
        return UIColor.red
    case .green:
        return UIColor.green
    case .blue:
        return UIColor.blue
    }
}


//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

