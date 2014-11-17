// Playground - noun: a place where people can play

import UIKit


enum Day: Int {
    case Monday=1, Tuesday=3, Wednesday=100, Thursday=34, Friday=56, Saturday=123, Sunday=12
    
    
    func daysTillWeekEnd () -> Int {
        return Day.Saturday.rawValue - self.rawValue
}

}

var today = Day.Monday

today.daysTillWeekEnd()

today = .Friday

today.daysTillWeekEnd()

var holiday = Day.Saturday
holiday.daysTillWeekEnd()

struct MolecularWeights {
    let CO2 = 12.0107 + 15.9994 * 2
    let O2 = 15.9994 * 2
    let N2 = 14.0067 * 2
    let H2 = 1.0079 * 2
}

    func volumeOfGases (#temperature : Double, #pressure  : Double, #molnumber: Double) -> Double {
        let r_Gas_Constant = 8.20578E-2
        var volume = molnumber * r_Gas_Constant * ( temperature + 273.15 )
        / ( pressure / 1013.25 )
        return volume
    }

var molecularWeight = MolecularWeights()

var volumeOfGas = volumeOfGases( temperature: 0, pressure: 1013.25, molnumber: 1)

    func densityOfGas (#volume: Double, molecularWeight molmass: Double, molnumber molNumber : Double) -> Double {
    return molmass / volume * molNumber
    }

var x = densityOfGas(volume: volumeOfGases( temperature: 0, pressure: 1013.25, molnumber: 4), molecularWeight: molecularWeight.O2, molnumber: 4)




// Gas Constant R = 8.20578 e-2 L atm K-1 mol-1



