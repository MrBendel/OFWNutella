//
//  Core.swift
//  OFWNutella
//
//  Created by apoes on 6/9/16.
//  Copyright © 2016 apoes. All rights reserved.
//

import UIKit

// MARK: - UIScreen Macros

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
