//
//  RecipeCell.swift
//  recipeApp
//
//  Created by Maggie Williams on 12/4/19.
//  Copyright © 2019 CMU. All rights reserved.
//

import UIKit

class CuisineCell: UICollectionViewCell {

  static let cellID = "CuisineCellID"
  
  static let cellHeight: CGFloat = 370.0
  static let cellWidth: CGFloat = 200.0

  static let cellPadding: CGFloat = 10.0

  
  
  @IBOutlet var titleLabel: UILabel!

  var cuisine: Cuisine? {
    didSet {
      guard let cuisine = cuisine else {
        return
      }
      
      titleLabel.text = cuisine.title
    }
  }

  override func awakeFromNib() {
    super.awakeFromNib()
  }

  override func prepareForReuse() {
    super.prepareForReuse()
    titleLabel.text = nil
  }

}
