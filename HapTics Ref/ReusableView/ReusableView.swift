//
//  ReusableView.swift
//  HapTics Ref
//
//  Created by Gerry Gao on 29/1/2022.
//

import UIKit

protocol ReusableView {
    static var reuseId: String { get }
}

extension ReusableView {
    static var reuseId: String {
        String(describing: self)
    }
}

extension UITableViewCell: ReusableView {}
