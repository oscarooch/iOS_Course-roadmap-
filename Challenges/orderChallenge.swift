func order(input : String) -> String {
    let inputSeparated = input.split(separator: " ")
    let oneThroughNine: [Character] = ["1", "2" , "3", "4", "5", "6", "7", "8", "9"]
    var output: String = ""
    for word in inputSeparated {
        for number in oneThroughNine{
            if word.contains(number){
                output.append("\(word) ")
            }
        }
        
    }
    return output
}

order(input:"Th1is 2is a3 te4st")

