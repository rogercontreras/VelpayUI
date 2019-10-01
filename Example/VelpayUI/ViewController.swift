//
//  ViewController.swift
//  VelpayUI
//
//  Created by Rogelio Contreras on 09/26/2019.
//  Copyright (c) 2019 Rogelio Contreras. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customView: VPCalculator!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let customView = VPCalculator().loadNib()
//        customView.frame = holderView.frame
//
//
//        view.addSubview(customView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

