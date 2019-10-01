//
//  VPTextField.swift
//  VelpayUI_Example
//
//  Created by Rogelio Contreras Velázquez on 9/30/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit


@IBDesignable
class VPTextField: UITextField {

    @IBInspectable
    var rounded : Bool = true {
        didSet {
            if rounded {
                self.layer.cornerRadius = 5
            } else {
                self.layer.cornerRadius = 1
            }
        }
    }
    
    @IBInspectable
    var borderWidth : CGFloat = 3.0  {
        didSet {
            self.layer.borderWidth = self.borderWidth
        }
    }
    
    @IBInspectable
    var borderColor : UIColor = UIColor(red: 0.65, green: 0.69, blue: 0.78, alpha: 0.52) {
        didSet {
            self.layer.borderColor = self.borderColor.cgColor
        }
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
