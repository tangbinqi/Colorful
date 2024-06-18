//
//  ViewController.swift
//  Colorful
//
//  Created by tangbinqi on 06/18/2024.
//  Copyright (c) 2024 tangbinqi. All rights reserved.
//

import UIKit
import Colorful

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let vc = AppUtils.curViewController() else {
            return
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

