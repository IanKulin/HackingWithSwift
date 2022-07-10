/*
 The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:
 
 You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
 If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
 You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
 If you can’t find the square root, throw a “no root” error.
 */

enum IntSqrtError: Error {
    case low, high, noIntRoot
}

func integerMean(_ firstNum: Int, _ secondNum: Int) -> Int {
    return (firstNum+secondNum)/2
}

func calculateIntSqrt(_ number:Int) throws -> Int  {
    var lowerBound = 1
    var upperBound = 2_147_483_646
    if number < lowerBound {throw IntSqrtError.low}
    if number > upperBound {throw IntSqrtError.high}
    
    var guess: Int
    var guessSquared: Int
    // ensure the answer is not in one of the bounds
    lowerBound = lowerBound-1
    upperBound = number+1
    while upperBound > lowerBound+1 {
        // pick a guess number halfway between the bounds
        guess = integerMean(lowerBound, upperBound)
        guessSquared = guess*guess
            // then use it to reduce the range between the bounds
        if guessSquared < number {
            lowerBound = guess
        } else if guessSquared > number {
            upperBound = guess
        } else { 
            // our guess was the integer square root
            return guess
        }
    }
    // none found or we would have returned by now
    throw IntSqrtError.noIntRoot
}

func printIntSqrt(_ number:Int){
    do {
        try print("Square root of \(number) is \(calculateIntSqrt(number))")
    } catch IntSqrtError.low {
        print("Lower bound error for \(number)")
    } catch IntSqrtError.high {
        print("Upper bound error for \(number)")
    } catch IntSqrtError.noIntRoot {
        print("No integer root for \(number)")
    } catch {
        assert(false)
        print("Unknown error for \(number)")
    }
}

printIntSqrt(2_147_302_921)
printIntSqrt(1)
printIntSqrt(169)

printIntSqrt(2_147_302_922)
printIntSqrt(2)

printIntSqrt(2_147_483_647)
printIntSqrt(0)
printIntSqrt(-1)
