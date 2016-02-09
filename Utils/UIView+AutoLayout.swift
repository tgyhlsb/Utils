//
//  UIView+AutoLayout.swift
//  
//
//  Created by Tanguy Helesbeux on 08/02/2016.
//
//

import UIKit

extension UIView {
    
    internal func addConstraintsToFitInSuperview() {
        let topConstraint =         NSLayoutConstraint(item: self, attribute: .Top,         relatedBy: .Equal, toItem: self.superview, attribute: .Top,         multiplier: 1.0, constant: 0.0)
        let bottomConstraint =      NSLayoutConstraint(item: self, attribute: .Bottom,      relatedBy: .Equal, toItem: self.superview, attribute: .Bottom,      multiplier: 1.0, constant: 0.0)
        let leadingConstraint =     NSLayoutConstraint(item: self, attribute: .Leading,     relatedBy: .Equal, toItem: self.superview, attribute: .Leading,     multiplier: 1.0, constant: 0.0)
        let trailingConstraint =    NSLayoutConstraint(item: self, attribute: .Trailing,    relatedBy: .Equal, toItem: self.superview, attribute: .Trailing,    multiplier: 1.0, constant: 0.0)
        self.addConstraints([topConstraint, bottomConstraint, leadingConstraint, trailingConstraint])
    }
}