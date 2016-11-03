//: ### External Parameter Names
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
func hello() {
    hello(to: "World")
}
func hello(to name: String) {
    print("Hello, \(name)!")
}
hello()
hello(to: "my friend")
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)