/*
 The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:
 
 You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
 If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
 You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
 If you can’t find the square root, throw a “no root” error.
 */

enum IntSqrError: Error {
    case low, high, noIntRoot
}

func calculateIntSqr(_ number:Int) throws -> Int  {
    let lowerBound = 1
    let upperBound = 10_000
    if number < lowerBound {throw IntSqrError.low}
    if number > upperBound {throw IntSqrError.high}
    // brute force sqrt finder
    for i in lowerBound...number {
        if i*i == number {
            return i
        }
    }
    // none found or we would have returned by now
    throw IntSqrError.noIntRoot
}

do {
    try print(calculateIntSqr(5929))
} catch IntSqrError.low {
    print("Lower bound error")
} catch IntSqrError.high {
    print("Upper bound error")
} catch IntSqrError.noIntRoot {
    print("No integer root")
} catch {
    assert(false)
    print("Unknown error")
}
