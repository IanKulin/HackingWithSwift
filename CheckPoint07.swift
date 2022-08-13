/*
Your challenge is this: make a class hierarchy for animals, starting with Animal at the top, then Dog and 
  Cat as subclasses, then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.

But there’s more:

    The Animal class should have a legs integer property that tracks how many legs the animal has.
    The Dog class should have a speak() method that prints a generic dog barking string, but each of 
      the subclasses should print something slightly different.
    The Cat class should have a matching speak() method, again with each subclass printing something different.
    The Cat class should have an isTame Boolean property, provided using an initializer.

https://www.hackingwithswift.com/quick-start/beginners/checkpoint-7
*/


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
