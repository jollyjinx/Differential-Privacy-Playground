//: Playground - noun: a place where people can play

import UIKit

func privatequestion() -> Bool
{
    let correctanswer:Bool  = arc4random() % 100 > 94   // 5% of people answer yes
    let flipacoin:Bool      = arc4random() % 100 > 49

    return flipacoin ? correctanswer : false
}

var yescount    = 0
var nocount     = 0
let maxcount    = 10_000

for count in 1...maxcount
{
    if privatequestion()
    {
        yescount += 1
    }
    else
    {
        nocount += 1
    }
}

let probablity      = 2.0 * Float(yescount) / Float(maxcount)
let standarderror   = sqrt( probablity * ( 1.0 - probablity )  / Float(maxcount) )

print("Probabilty of people that truely answered yes: \(probablity*100.0)%")
print("Standard error: +/- \(standarderror*100.0)%")


