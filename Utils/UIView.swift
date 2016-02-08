//
//  UIView.swift
//  UtilsDemo
//
//  Created by Tanguy Helesbeux on 08/02/2016.
//  Copyright © 2016 Tanguy Helesbeux. All rights reserved.
//

import UIKit

extension UIView {
    
    class func loadFromNibNamed(nibNamed: String, bundle : NSBundle? = nil) -> UIView? {
        return UINib(
            nibName: nibNamed,
            bundle: bundle
            ).instantiateWithOwner(nil, options: nil)[0] as? UIView
    }
    
    public var width: CGFloat { get { return self.frame.size.width } set { self.frame.size.width = newValue } }
    public var height: CGFloat { get { return self.frame.size.width } set { self.frame.size.height = newValue } }
    public var size: CGSize { get { return self.frame.size } set { self.frame.size = newValue } }
    public var orign: CGPoint { get { return self.frame.origin } set { self.frame.origin = newValue } }
}