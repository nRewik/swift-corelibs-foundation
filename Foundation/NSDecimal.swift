// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2015 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//


// Rounding policies :
// Original
//    value 1.2  1.21  1.25  1.35  1.27
// Plain    1.2  1.2   1.3   1.4   1.3
// Down     1.2  1.2   1.2   1.3   1.2
// Up       1.2  1.3   1.3   1.4   1.3
// Bankers  1.2  1.2   1.2   1.4   1.3

/***************	Type definitions		***********/
public enum NSRoundingMode : UInt {
    
    case RoundPlain // Round up on a tie
    case RoundDown // Always down == truncate
    case RoundUp // Always up
    case RoundBankers // on a tie round so last digit is even
}

public enum NSCalculationError : UInt {
    
    case NoError
    case LossOfPrecision // Result lost precision
    case Underflow // Result became 0
    case Overflow // Result exceeds possible representation
    case DivideByZero
}

public var NSDecimalMaxSize: Int32 {
    return 8
}
// Give a precision of at least 38 decimal digits, 128 binary positions.

public var NSDecimalNoScale: Int32 {
    return 32767
}

public struct NSDecimal {
    public var _exponent: Int32
    public var _length: UInt32 // length == 0 && isNegative -> NaN
    public var _isNegative: UInt32
    public var _isCompact: UInt32
    public var _reserved: UInt32
    public var _mantissa: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16)
    public init() { NSUnimplemented() }
    public init(_exponent: Int32, _length: UInt32, _isNegative: UInt32, _isCompact: UInt32, _reserved: UInt32, _mantissa: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16)){ NSUnimplemented() }
}

public func NSDecimalIsNotANumber(dcm: UnsafePointer<NSDecimal>) -> Bool { NSUnimplemented() }


/***************	Operations		***********/
public func NSDecimalCopy(destination: UnsafeMutablePointer<NSDecimal>, _ source: UnsafePointer<NSDecimal>) { NSUnimplemented() }

public func NSDecimalCompact(number: UnsafeMutablePointer<NSDecimal>) { NSUnimplemented() }

public func NSDecimalCompare(leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>) -> NSComparisonResult { NSUnimplemented() }
// NSDecimalCompare:Compares leftOperand and rightOperand.

public func NSDecimalRound(result: UnsafeMutablePointer<NSDecimal>, _ number: UnsafePointer<NSDecimal>, _ scale: Int, _ roundingMode: NSRoundingMode) { NSUnimplemented() }
// Rounds num to the given scale using the given mode.
// result may be a pointer to same space as num.
// scale indicates number of significant digits after the decimal point

public func NSDecimalNormalize(number1: UnsafeMutablePointer<NSDecimal>, _ number2: UnsafeMutablePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError { NSUnimplemented() }

public func NSDecimalAdd(result: UnsafeMutablePointer<NSDecimal>, _ leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError { NSUnimplemented() }
// Exact operations. result may be a pointer to same space as leftOperand or rightOperand

public func NSDecimalSubtract(result: UnsafeMutablePointer<NSDecimal>, _ leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError { NSUnimplemented() }
// Exact operations. result may be a pointer to same space as leftOperand or rightOperand

public func NSDecimalMultiply(result: UnsafeMutablePointer<NSDecimal>, _ leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError { NSUnimplemented() }
// Exact operations. result may be a pointer to same space as leftOperand or rightOperand

public func NSDecimalDivide(result: UnsafeMutablePointer<NSDecimal>, _ leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError { NSUnimplemented() }
// Division could be silently inexact;
// Exact operations. result may be a pointer to same space as leftOperand or rightOperand

public func NSDecimalPower(result: UnsafeMutablePointer<NSDecimal>, _ number: UnsafePointer<NSDecimal>, _ power: Int, _ roundingMode: NSRoundingMode) -> NSCalculationError { NSUnimplemented() }

public func NSDecimalMultiplyByPowerOf10(result: UnsafeMutablePointer<NSDecimal>, _ number: UnsafePointer<NSDecimal>, _ power: Int16, _ roundingMode: NSRoundingMode) -> NSCalculationError { NSUnimplemented() }

public func NSDecimalString(dcm: UnsafePointer<NSDecimal>, _ locale: AnyObject?) -> String { NSUnimplemented() }

