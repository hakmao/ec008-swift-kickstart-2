protocol Movable {
    var location: Vertex {get}
    func movedHorizontally(by deltaX: Int) -> Self
    func shiftedRight() -> Self
}

extension Movable {
    func shiftedRight() -> Self {
        return movedHorizontally(by: 1)
    }
}

func shiftedLeft<T: Movable>(movable: T) -> T {
    return movable.movedHorizontally(by: -1)
}

struct Vertex {
    let x, y: Int
}

extension Vertex: Movable {
    public var location: Vertex {
        return self
    }
    func movedHorizontally(by deltaX: Int) -> Vertex {
        return Vertex(x: x + deltaX, y: y)
    }
}

extension Vertex: CustomStringConvertible {
    var description: String {
        return "(\(x), \(y))"
    }
}

struct Size {
    let width, height: Int
}

extension Size: CustomStringConvertible {
    var description: String {
        return "\(width) by \(height)"
    }
}

struct Rectangle {
    let topLeftCorner: Vertex
    let size: Size
}

extension Rectangle: Movable {
    public var location: Vertex {
        let centerX = topLeftCorner.x + size.width/2
        let centerY = topLeftCorner.y + size.height/2
        return Vertex(x: centerX, y: centerY)
    }
    func movedHorizontally(by deltaX: Int) -> Rectangle {
        let movedTopLeftCorner  = topLeftCorner.movedHorizontally(by: deltaX)
        return Rectangle(topLeftCorner:movedTopLeftCorner, size: size)
    }
}

extension Rectangle: CustomStringConvertible {
    var description: String {
        return "\(size) at \(topLeftCorner)"
    }
}

let vertex = Vertex(x: 3, y: 4)
let size = Size(width: 100, height: 50)
let rectangle = Rectangle(topLeftCorner: vertex, size: size)

let movedVertex = vertex.movedHorizontally(by: 10)
let movedTwiceVertex = movedVertex.movedHorizontally(by: 10)

vertex.location
rectangle.location

let shiftedLeftVertex = shiftedLeft(movable: vertex)
let shiftedLeftRectangle = shiftedLeft(movable: rectangle)

let shiftedRightVertex = vertex.shiftedRight()
let shiftedRightRectangle = rectangle.shiftedRight()
