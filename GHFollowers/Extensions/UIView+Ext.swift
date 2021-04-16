//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Alexander Thompson on 16/4/21.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
    
}
