func randomInt(_ numbers:[Int]?) -> Int { numbers?.randomElement() ?? Int.random(in:1...100) }

print(randomInt(nil))
print(randomInt([2,5]))
