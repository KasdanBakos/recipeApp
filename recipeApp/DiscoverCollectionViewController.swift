//
//  DiscoverCollectionViewController.swift
//  recipeApp
//
//  Created by Maggie Williams on 11/9/19.
//  Copyright © 2019 CMU. All rights reserved.
//

import Foundation

import UIKit

class DiscoverCollectionViewController: HorizontalPeekingPagesCollectionViewController {
  
  var dataSource = [0, 1, 2, 3, 4, 5, 6] {
    didSet {
      collectionView?.reloadData()
    }
  }
  
  override func calculateSectionInset() -> CGFloat {
    return 40
  }
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return dataSource.count
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    return collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
  }
}
