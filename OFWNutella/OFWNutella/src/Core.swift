//
//  Core.swift
//  OFWNutella
//
//  Created by apoes on 6/9/16.
//  Copyright © 2016 apoes. All rights reserved.
//

import UIKit

/// MARK: - UIScreen Macros

var UIScreenBounds: CGRect {
  get {
    return UIScreen.mainScreen().bounds
  }
}

var UIScreenSize: CGSize {
  get {
    return UIScreen.mainScreen().bounds.size
  }
}

var UIMainScreen: UIScreen {
  get {
    return UIScreen.mainScreen()
  }
}

/// Mark: - Safe CollectionType Subscripting

extension CollectionType {
  // Returns the element at the specified index if within bounds, otherwise nil.
  subscript (safe index: Index) -> Generator.Element? {
    return indices.contains(index) ? self[index] : nil
  }
}

/// Mark: - Float Comparison

infix operator ~= {}

func ~= (a: Float, b: Float) -> Bool {
  return fabsf(a - b) < Float(FLT_EPSILON)
}

func ~= (a: CGFloat, b: CGFloat) -> Bool {
  return fabs(a - b) < CGFloat(FLT_EPSILON)
}

func ~= (a: Double, b: Double) -> Bool {
  return fabs(a - b) < Double(FLT_EPSILON)
}
