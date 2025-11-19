
import Foundation

struct Game{
    private(set) var target = Int.random(in: 1...100)
    private(set) var points = 0
    mutating func calculatePoints(userValue: Double, sliderValue: Double){
        self.points = 100 - Int(abs(Double(target)-sliderValue))
    }
}
