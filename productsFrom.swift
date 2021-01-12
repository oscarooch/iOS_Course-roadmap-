func productsFrom (_ factorsArray: [Int]) -> [Int] {
    var productsArray: [Int] = []
    for factor in factorsArray {
        productsArray.append((factorsArray.reduce(1, *))/factor)
        
    }
    return productsArray
}

let factors: [Int] = [2, 4, 6, 8]
productsFrom(factors)
