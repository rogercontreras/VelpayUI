//
//  VPCheckBox.swift
//  VelpayUI_Example
//
//  Created by Rogelio Contreras Velázquez on 9/30/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

protocol VPCheckBoxDelegate {
    func checkbox(checkbox:VPCheckBox, didSelectBox value : Bool) -> Void
    func checkbox(checkbox:VPCheckBox, didSelectText : String) -> Void
}

@IBDesignable
class VPCheckBox: NibView {

    @IBOutlet weak var holderCheck: UIView!
    @IBOutlet weak var checkMarkButton: UIButton!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    var delegate : VPCheckBoxDelegate?
    var checked : Bool = false
    
    @IBInspectable
    var message : String = "" {
        didSet {
            self.text.text = message
        }
    }
    
    @IBAction func didClickBox(_ sender: Any) {
        checked = !checked
        if #available(iOS 13.0, *) {
            
            self.checkMarkButton.setBackgroundImage(checked ? UIImage(systemName: "checkmark.square.fill") : UIImage(systemName: "checkmark.square"), for: .normal)
        } else {
            // Fallback on earlier versions
        }
    }
    
    @IBAction func didSelectText(_ sender: Any) {
    }
    
//    init() {
//        super.init()
//    }
    
//    override convenience init(frame: CGRect) {
//        self.init(frame: frame)
//    }
//
//    required convenience init?(coder: NSCoder) {
////        fatalError("init(coder:) has not been implemented")
//        self.init(coder: coder)
//    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
