//
//  UnifiableType.swift
//  Gluey
//
//  Created by Jaden Geller on 1/18/16.
//  Copyright © 2016 Jaden Geller. All rights reserved.
//

/// Instances of conforming types can be unified such that they represent to the same value.
public protocol UnifiableType {
    /// Unifies `lhs` with `rhs`, otherwise throws a `UnificationError`.
    static func unify(_ lhs: Self, _ rhs: Self) throws
    
    /// Performs `action` as an operation on `self` such that the
    /// `self` preserves its initial `glue` value if the operation fails.
    static func attempt(_ value: Self, _ action: @escaping () throws -> ()) throws
}
