//
//  VPButton.swift
//  Pods-VelpayUI_Example
//
//  Created by Rogelio Contreras Velázquez on 9/26/19.
//

import UIKit

@IBDesignable
class VPButton: UIButton {
    
    @IBInspectable
    var isOn : Bool = true {
        didSet {
            self.setTitleColor(.white, for: .normal)
            if self.isOn {
                self.backgroundColor = .lightGray
                self.isEnabled = true
            } else {
                self.backgroundColor = .systemGreen
                self.isEnabled = false
            }
        }
    }
    
    @IBInspectable
    var cornerRadius : CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = self.cornerRadius
            self.layer.masksToBounds = true
        }
    }
    
    
    @IBInspectable
    var rounded : Bool = false {
        didSet {
            if rounded {
                self.layer.cornerRadius = self.layer.frame.height/2
                self.layer.masksToBounds = true
            }
        }
    }
    
    @IBInspectable
    var shadow : Bool = false {
        didSet {
            if shadow {
                self.layer.addShadow()
            } else {
                self.layer.removeShadow()
            }
        }
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override public func draw(_ rect: CGRect) {
        // Drawing code
        super.draw(rect)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}
