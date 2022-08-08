class Animal {
    var legs = 4
    init(legs: Int) {
        self.legs = legs
    }
}


class Dog: Animal {
    func speak() { print("woof") }
}


class Corgi: Dog {
    override func speak() { print("Your Majesty?") }
}


class Poodle: Dog {
    override func speak() { print("yip") }
}


class Cat: Animal {
    var isTame: Bool
    
    init (isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() { print("meow") }
}


class Persian: Cat {
    override func speak() { print("hiss") }
    
    init() { super.init (isTame: true, legs: 4 ) }
}


class Lion: Cat {
    override func speak() { print("rawr") }
    
    init() { super.init (isTame: false, legs: 4 ) }
}


let lion = Lion()
print(lion.legs)
