import Cocoa

// Set the date and time format to be used throughout
let defaultDateFormat = "HH:mm E, d MMM y zzz"
let defaultTimeZoneFormat = "zzz"

// Define the start and end of a showing
struct Showing {
    
    let start: Date
    let end: Date
        
    init(start: String, end: String) {
        
        // Format the dates provided
        let formatter = DateFormatter()
        formatter.dateFormat = defaultDateFormat
        
        // Define the show start
        if let startDate = formatter.date(from: start) {
            self.start = startDate
        } else {
            // If an invalid date, set date to current time
            self.start = Date()
        }
        
        // Define the show end
        if let endDate = formatter.date(from: end) {
            self.end = endDate
        } else {
            // If an invalid date, set date to current time
            self.end = Date()
        }
        
    }
    
}

extension Date {
    
    // Return a formatted date
    func formatted() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = defaultDateFormat
        return formatter.string(from: self)
    }
    
    // Return the time zone
    func timeZone() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = defaultTimeZoneFormat
        return formatter.string(from: self)
    }
    
    // Is the current date during a showing of the musical?
    func isDuring(showings: [Showing]) -> Bool {
        
        // Iterate over showings and see whether the date is after the start and before the end
        for show in showings {
            
            if self >= show.start && self <= show.end {
                return true
            }
            
        }
        
        // If we made it here, the date is not during one of the showings
        return false
        
    }
}

// What time is it now?
Date().formatted()
Date().timeZone()

// Define the showings for the musical
let forChicagoMusical: [Showing] = [

    Showing(start: "19:25 Tue, 26 Nov 2019 EST", end: "21:45 Tue, 26 Nov 2019 EST"),
    Showing(start: "19:25 Wed, 27 Nov 2019 EST", end: "21:45 Wed, 27 Nov 2019 EST"),
    Showing(start: "19:25 Thu, 28 Nov 2019 EST", end: "21:45 Thu, 28 Nov 2019 EST"),
    Showing(start: "19:25 Fri, 29 Nov 2019 EST", end: "21:45 Fri, 29 Nov 2019 EST"),

]

// When are the showings?
for showing in forChicagoMusical {
    print("Showing start: \(showing.start.formatted())")
    print("Showing end: \(showing.end.formatted())")
    print("=====")
}

// Is the current date and time during a showing?
Date().isDuring(showings: forChicagoMusical)

// Check various times near the boundary of showings

for showing in forChicagoMusical.enumerated() {
    
    // Around start of a show
    print("--- start of a show ---")
    print(forChicagoMusical[showing.offset].start.addingTimeInterval(TimeInterval(-1)).formatted())
    print(forChicagoMusical[showing.offset].start.addingTimeInterval(TimeInterval(-1)).isDuring(showings: forChicagoMusical))
    print(forChicagoMusical[showing.offset].start.addingTimeInterval(TimeInterval(0)).formatted())
    print(forChicagoMusical[showing.offset].start.addingTimeInterval(TimeInterval(0)).isDuring(showings: forChicagoMusical))
    print(forChicagoMusical[showing.offset].start.addingTimeInterval(TimeInterval(60)).formatted())
    print(forChicagoMusical[showing.offset].start.addingTimeInterval(TimeInterval(60)).isDuring(showings: forChicagoMusical))

    // Around end of a show
    print("--- end of a show ---")
    print(forChicagoMusical[showing.offset].end.addingTimeInterval(TimeInterval(-1)).formatted())
    print(forChicagoMusical[showing.offset].end.addingTimeInterval(TimeInterval(-1)).isDuring(showings: forChicagoMusical))
    print(forChicagoMusical[showing.offset].end.addingTimeInterval(TimeInterval(0)).formatted())
    print(forChicagoMusical[showing.offset].end.addingTimeInterval(TimeInterval(0)).isDuring(showings: forChicagoMusical))
    print(forChicagoMusical[showing.offset].end.addingTimeInterval(TimeInterval(60)).formatted())
    print(forChicagoMusical[showing.offset].end.addingTimeInterval(TimeInterval(60)).isDuring(showings: forChicagoMusical))

}


//extension Date {
//    func isDuringShow() -> Bool {
//
//
//
//        switch self {
//
//        default:
//            return false
//        }
//
//    }
//}
//
//// Hacking with Swift
//let today = Date()
//let formatter1 = DateFormatter()
//formatter1.dateStyle = .full
//formatter1.timeStyle = .long
//formatter1.string(from: today)
//
//
//var str = "Hello, playground"
//
//extension Date {
//    func toMillis() -> Double! {
//        return Double(self.timeIntervalSince1970 * 1000)
//    }
//    func inSeconds() -> Double! {
//        return Double(self.timeIntervalSince1970)
//    }
//    func inMiniutes() -> Double! {
//        return Double(self.timeIntervalSince1970 / 60)
//    }
//}
//
//// What time is it now?
//Date()
//var nowInSeconds = Date().timeIntervalSince1970
//nowInSeconds.round(.down)
//19*60
//
//// Constants that will be needed for calculation
//let secondsSinceHour: Double = 22*60
//let secondsSinceMidnight: Double = 20*60*60
//let day: Double = 24*60*60
//let hour: Double = 60*60
//let todayAtMidnight: Double = 1574312433
//let saturday: Double = todayAtMidnight + 2*day
//let currentTime: Double = Date(timeIntervalSinceNow: 0).inSeconds()
//
//// Sat Nov 23 @ 1:50p.m - 4:00p.m
//var showTime: Double = 0.0
//var showEndTime: Double = 0.0
//
//// Check if users are in the show or not
//func isDuringShow() -> Bool{
//    var duringShow: Bool
//    if showTime < currentTime {
//        duringShow = true
//    } else if currentTime > showEndTime {
//        duringShow = false
//    } else {
//        duringShow = false
//    }
//
//    return(duringShow)
//}
//
//// Time of shows during saturday and sunday
//var numberOfDaysNeeded: Double = 2
//var numberOfDays: Double = numberOfDaysNeeded*day
//
//// Two shows during the weekend
//while numberOfDaysNeeded < 4 {
//    showTime = todayAtMidnight + numberOfDays + 14*hour - 5*60
//    showEndTime = showTime + hour*2
//    isDuringShow()
//    numberOfDaysNeeded += 1
//}
//
//
//
//// Time of shows during the week
//numberOfDaysNeeded = 6
//numberOfDays = numberOfDaysNeeded*day
//
//// Four shows during the week
//while numberOfDaysNeeded < 10 {
//    showTime = todayAtMidnight + numberOfDays - 5*hour + 25*60
//    showEndTime = showTime + hour*2
//    isDuringShow()
//    numberOfDaysNeeded += 1
//}
//
//
//// MARK: Make sure that the time of shows set are correct
//
//// Saturday Nov 23 @ 2:00 - 4:00
//showTime = todayAtMidnight + 2*day + 14*hour - 5*60
//Date(timeIntervalSince1970: showTime)
//showEndTime = showTime + hour*2
//Date(timeIntervalSince1970: showEndTime)
//
//// Sunday Nov 24 @ 2:00 - 4:00
//showTime = todayAtMidnight + 3*day + 14*hour - 5*60
//Date(timeIntervalSince1970: showTime)
//showEndTime = showTime + hour*2
//Date(timeIntervalSince1970: showEndTime)
//
//// Tuesday Nov 26 @ 7:30 - 9:30
//showTime = todayAtMidnight + 6*day - 5*hour + 25*60
//Date(timeIntervalSince1970: showTime)
//showEndTime = showTime + hour*2
//Date(timeIntervalSince1970: showEndTime)
//
//// Wednesday Nov 27 @ 7:30 - 9:30
//showTime = todayAtMidnight + 7*day - 5*hour + 25*60
//Date(timeIntervalSince1970: showTime)
//showEndTime = showTime + hour*2
//Date(timeIntervalSince1970: showEndTime)
//
//// Thursday Nov 28 @ 7:30 - 9:30
//showTime = todayAtMidnight + 8*day - 5*hour + 25*60
//Date(timeIntervalSince1970: showTime)
//showEndTime = showTime + hour*2
//Date(timeIntervalSince1970: showEndTime)
//
//// Friday Nov 29 @ 7:30 - 9:30
//showTime = todayAtMidnight + 9*day - 5*hour + 25*60
//Date(timeIntervalSince1970: showTime)
//showEndTime = showTime + hour*2
//Date(timeIntervalSince1970: showEndTime)
//
