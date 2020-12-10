//
//  CardView.swift
//  UrgiDoctor
//
//  Created by Yuvraj Bharat Kale on 10/12/20.
//

import UIKit

@IBDesignable
class CardView: UIView {
    
    @IBInspectable var _cornerRadius: CGFloat = 2
    
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 1
    @IBInspectable var _shadowColor: UIColor? = UIColor.black
    @IBInspectable var _shadowOpacity: Float = 0.3
    
    override func layoutSubviews() {
        layer.cornerRadius = _cornerRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: _cornerRadius)
        
        layer.masksToBounds = false
        layer.shadowColor = _shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight)
        layer.shadowOpacity = _shadowOpacity
        layer.shadowPath = shadowPath.cgPath
    }
}

