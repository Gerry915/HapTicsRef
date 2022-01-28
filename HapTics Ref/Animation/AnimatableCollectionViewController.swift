//
//  AnimatableCollectionViewController.swift
//  HapTics Ref
//
//  Created by Gerry Gao on 29/1/2022.
//

import UIKit

class AnimatableCollectionViewController: UICollectionViewController, AnimatableList {
    func reloadDataWithAnimation(completion: () -> Void) {
        
        collectionView.reloadData()
        
        let cells = collectionView.visibleCells
        
        let offset = collectionView.bounds.size.height
        
        var delay: Double = 0
        
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: 0, y: offset)
        }
        
        for cell in cells {
            UIView.animate(withDuration: 0.8, delay: delay * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [.curveEaseInOut]) {
                
                cell.transform = .identity
                
            }
            delay += 1
        }
        completion()
    }
    
    
}
