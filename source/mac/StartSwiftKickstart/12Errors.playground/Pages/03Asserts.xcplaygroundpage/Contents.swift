//: ### Asserts
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
extension Forecast {
    static func number(_ index: Int) -> String {
        assert(index >= 0 && index < count, "Out of bounds")
        return Forecast()[index]
    }
}


Forecast.number(0)
//Forecast.number(-2)
//Forecast.number(20)
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
