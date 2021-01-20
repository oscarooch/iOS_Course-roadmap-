
func convertTime(_ time: String) -> String{
    var timeConverted: String = ""
    var timeSeparated = time.split(separator: ":")
    timeSeparated[1].removeLast(2)
    if time.contains("P"){
        switch timeSeparated[0]{
        case "01":
            timeConverted.append("13:\(timeSeparated[1])")
        case "02":
            timeConverted.append("14:\(timeSeparated[1])")
        case "03":
            timeConverted.append("15:\(timeSeparated[1])")
        case "04":
            timeConverted.append("16:\(timeSeparated[1])")
        case "05":
            timeConverted.append("17:\(timeSeparated[1])")
        case "06":
            timeConverted.append("18:\(timeSeparated[1])")
        case "07":
            timeConverted.append("19:\(timeSeparated[1])")
        case "08":
            timeConverted.append("20:\(timeSeparated[1])")
        case "09":
            timeConverted.append("21:\(timeSeparated[1])")
        case "10":
            timeConverted.append("22:\(timeSeparated[1])")
        case "11":
            timeConverted.append("23:\(timeSeparated[1])")
        case "12":
            timeConverted.append("12:\(timeSeparated[1])")
        default:
            timeConverted.append("Error, Time couldn't be converted")
            
        }
        
    }
    else {
        switch timeSeparated[0]{
        case "12":
            timeConverted.append("00:\(timeSeparated[1])")
        default:
                timeConverted.append("\(timeSeparated[1])")
        }
        
    }
    return timeConverted
}
convertTime("08:31 PM")
