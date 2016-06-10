//
//  RootViewController.swift
//  OFWNutella
//
//  Created by apoes on 6/9/16.
//  Copyright © 2016 apoes. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
  convenience init() {
    self.init(nibName: nil, bundle: nil)
  }

  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: - View Setup

  override func viewDidLoad() {
    super.viewDidLoad()

    var b: APLoopingScrollView = APLoopingScrollView()

    self.view.backgroundColor = UIColor.magentaColor()

    let c:CGFloat = Pop
    let a: CGRect = UIScreenBounds
  }

  override func prefersStatusBarHidden() -> Bool {
    return true
  }
}
