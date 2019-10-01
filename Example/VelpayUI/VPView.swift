//
//  VPView.swift
//  Pods-VelpayUI_Example
//
//  Created by Rogelio Contreras Velázquez on 9/26/19.
//

import UIKit

@IBDesignable
class VPView: UIView {

    @IBInspectable
    var shadow : Bool = false {
        didSet {
            if self.shadow {
                self.layer.addShadow()
            } else {
                self.layer.removeShadow()
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
    
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//    }

}

extension CALayer {
    /**
     Utilice esta función para agregar sombreado a un objeto.
     */
    func addShadow() -> Void {
        self.shadowColor = UIColor.lightGray.cgColor
        self.shadowRadius = 5
        self.shadowOpacity = 0.5
        self.shadowOffset = CGSize(width: 0, height: 3)
    }
    
    func removeShadow() -> Void {
        self.shadowColor = nil
        self.shadowRadius = 0
    }
}

extension UIView {
    
    @discardableResult 
    func fromNib<T : UIView>() -> T? {
        guard let contentView = Bundle(for: type(of: self)).loadNibNamed(String(describing: type(of: self)), owner: self, options: nil)?.first as? T else {
            return nil
        }
        self.addSubview(contentView)
        return contentView
    }
}

extension NSObject {
    var className: String {
        return String(describing: type(of: self))
    }
    
    class var className: String {
        return String(describing: self)
    }
}
