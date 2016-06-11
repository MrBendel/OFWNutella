//
//  RootViewController.swift
//  OFWNutella
//
//  Created by apoes on 6/9/16.
//  Copyright © 2016 apoes. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, APLoopingScrollViewDataSource, APLoopingScrollViewDelegate {

  lazy var loopingScrollview: APLoopingScrollView = {
    let loopingScrollView = APLoopingScrollView(frame: UIScreenBounds, scrollDirection: .Horizontal)
    return loopingScrollView
  }()

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

    self.view.backgroundColor = UIColor.magentaColor()

    self.loopingScrollview.dataSource = self
    self.loopingScrollview.delegate = self
    self.loopingScrollview.itemSize = CGSizeMake(150, 150)
    self.loopingScrollview.itemSpacing = 10.0
    self.loopingScrollview.pagingEnabled = true
    self.view.addSubview(self.loopingScrollview)
  }

  override func prefersStatusBarHidden() -> Bool {
    return true
  }

  // MARK: - APLoopingScrollViewDataSource

  func loopingScrollViewTotalItems(scrollView: APLoopingScrollView) -> Int {
    return 15
  }

  func loopingScrollView(scrollView: APLoopingScrollView, viewForIndex index: Int) -> UIView {
    let image = UIImage(named: "basket")
    let imageView = UIImageView(image: image)
    imageView.contentMode = .ScaleAspectFill
    let label = UILabel(frame: imageView.bounds)
    imageView.addSubview(label)
    label.autoresizingMask = [ .FlexibleWidth, .FlexibleHeight ]
    label.font = UIFont.systemFontOfSize(72.0)
    label.textColor = UIColor.whiteColor()
    label.textAlignment = .Center
    return imageView
  }

  // MARK: - APLoopingScrollViewDelegate

  func loopingScrollView(scrollView: APLoopingScrollView, willDisplayView view: UIView, forItemAtIndex index: Int) {
    if let label = view.subviews[safe: 0] as? UILabel {
      let attribtues: [String: AnyObject] = [
        NSStrokeColorAttributeName : UIColor.blackColor(),
        NSForegroundColorAttributeName : UIColor.whiteColor(),
        NSStrokeWidthAttributeName : -3.0,
      ]

      label.attributedText = NSAttributedString(string: "\(index)", attributes: attribtues)
    }
  }
}
