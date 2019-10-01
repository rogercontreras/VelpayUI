//
//  VPCalculator.swift
//  VelpayUI_Example
//
//  Created by Rogelio Contreras Velázquez on 9/30/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

protocol CalculatorDelegate {
    func calculator(calculator:VPCalculator, didSelectItem value : Int) -> Void
}

@IBDesignable
class VPCalculator: NibView {
    
    @IBInspectable
    var itemBackgroundColour : UIColor = .lightGray {
        didSet {
            for view in self.itemViewsCollection {
                view.backgroundColor = self.itemBackgroundColour
            }
        }
    }
    
    @IBInspectable
    var itemCornerRadious : CGFloat = 1.0 {
        didSet {
            for view in self.itemViewsCollection {
                view.layer.cornerRadius = itemCornerRadious
            }
        }
    }
    
    @IBInspectable
    var itemBorderColour : UIColor = .clear {
        didSet {
            for view in self.itemViewsCollection {
                view.layer.borderColor = itemBorderColour.cgColor
            }
        }
    }
    
    @IBInspectable
    var itemBorderWidth : CGFloat = 0.0 {
        didSet {
            for view in self.itemViewsCollection {
                view.layer.borderWidth = itemBorderWidth
            }
        }
    }
    
    @IBInspectable
    var itemTextColour : UIColor = .black {
        didSet {
            for button in numbersCollection {
                button.setTitleColor(itemTextColour, for: .normal)
            }
        }
    }
    
    @IBInspectable
    var itemShadow : Bool = false {
        didSet {
            for view in self.itemViewsCollection {
                if itemShadow {
                    view.layer.addShadow()
                } else {
                    view.layer.removeShadow()
                }
            }
        }
    }
    
    @IBInspectable
    var spacing : CGFloat = 0 {
        didSet {
            for stack in stackCollection {
                stack.spacing = self.spacing
            }
        }
    }
    
    @IBOutlet var stackCollection: [UIStackView]!
    
    @IBOutlet var numbersCollection: [UIButton]!
    
    @IBOutlet var itemViewsCollection: [UIView]!
    

    @IBAction func didPressButton(_ sender: UIButton) {
        
    }
}


