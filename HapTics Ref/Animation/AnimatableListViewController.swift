//
//  AnimatableListViewController.swift
//  HapTics Ref
//
//  Created by Gerry Gao on 29/1/2022.
//

import UIKit

protocol AnimatableList {
    func reloadDataWithAnimation(completion: () -> Void)
}

class AnimatableListViewController: UITableViewController, AnimatableList {
    
    func reloadDataWithAnimation(completion: () -> Void) {
        
        tableView.reloadData()
        
        let cells = tableView.visibleCells
        
        let offset = tableView.bounds.size.height
        
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
