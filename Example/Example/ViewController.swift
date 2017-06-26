//
//  ViewController.swift
//  Example
//
//  Created by James Beattie on 26/06/2017.
//  Copyright © 2017 James Beattie. All rights reserved.
//

import UIKit
import FontFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let font = UIFont.montserratBoldFont(withSize: 20)
        let image = FontFramework.Icons.getCameraIcon()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

