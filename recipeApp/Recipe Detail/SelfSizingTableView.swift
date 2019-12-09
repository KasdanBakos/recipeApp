//
//  SelfSizedTableView.swift
//  recipeApp
//
//  Created by Maggie Williams on 12/8/19.
//  Copyright © 2019 CMU. All rights reserved.
//


import UIKit

class SelfSizingTableView: UITableView {
  override var contentSize:CGSize {
         didSet {
             self.invalidateIntrinsicContentSize()
         }
     }

     override var intrinsicContentSize: CGSize {
         self.layoutIfNeeded()
      return CGSize(width: UIView.noIntrinsicMetric, height: contentSize.height)
     }
  }
