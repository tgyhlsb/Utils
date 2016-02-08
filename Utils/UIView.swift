//
//  UIView.swift
//
//
//  Created by Tanguy Helesbeux on 08/02/2016.
//
//

import UIKit


extension UIView {
    
    /**
     Allocate a UIView from the specified xib file.
     
     - parameter nibNamed: Name of of the xib used to load the view
     - returns: UIView
     */
    
    class func loadFromNibNamed(nibNamed: String, bundle : NSBundle? = nil) -> UIView? {
        return UINib(
            nibName: nibNamed,
            bundle: bundle
            ).instantiateWithOwner(nil, options: nil)[0] as? UIView
    }
    
    
    /**
     Loads a UIView from a xib named as the class.
     
     - returns: UIView
     */
    
    class func loadFromNib() -> UIView? {
        return UIView.loadFromNibNamed(NSStringFromClass(self.classForCoder().dynamicType))
    }
    
    /// Property shortcut for `self.frame.size.width`
    public var width: CGFloat { get { return self.frame.size.width } set { self.frame.size.width = newValue } }
    /// Property shortcut for `self.frame.size.height`
    public var height: CGFloat { get { return self.frame.size.width } set { self.frame.size.height = newValue } }
    /// Property shortcut for `self.frame.size`
    public var size: CGSize { get { return self.frame.size } set { self.frame.size = newValue } }
    /// Property shortcut for `self.frame.origin`
    public var orign: CGPoint { get { return self.frame.origin } set { self.frame.origin = newValue } }
}