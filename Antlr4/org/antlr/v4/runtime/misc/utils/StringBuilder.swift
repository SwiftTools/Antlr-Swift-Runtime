//
//  StringBuilder.swift
//   antlr.swift
//
//  Created by janyou on 15/9/4.
//  Copyright © 2015 jlabs. All rights reserved.
//

import Foundation

public class StringBuilder {
    private var stringValue: String

    public init(string: String = "") {
        self.stringValue = string
    }

    public func toString() -> String {
        return stringValue
    }

    public var length: Int {
        return stringValue.length
    }

    public func append(string: String) -> StringBuilder {
        stringValue += string
        return self
    }

    public func append<T:CustomStringConvertible>(value: T) -> StringBuilder {
        stringValue += value.description
        return self
    }

    public func appendLine(string: String) -> StringBuilder {
        stringValue += string + "\n"
        return self
    }

    public func appendLine<T:CustomStringConvertible>(value: T) -> StringBuilder {
        stringValue += value.description + "\n"
        return self
    }

    public func clear() -> StringBuilder {
        stringValue = ""
        return self
    }
}

public func +=(lhs: StringBuilder, rhs: String) {
    lhs.append(rhs)
}

public func +=<T:CustomStringConvertible>(lhs: StringBuilder, rhs: T) {
    lhs.append(rhs.description)
}

public func +(lhs: StringBuilder, rhs: StringBuilder) -> StringBuilder {
    return StringBuilder(string: lhs.toString() + rhs.toString())
}
 