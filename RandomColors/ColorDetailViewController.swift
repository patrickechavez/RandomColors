//
//  ColorDetailViewController.swift
//  RandomColors
//
//  Created by John Patrick Echavez on 12/24/23.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = color ?? UIColor.systemBackground
        // Do any additional setup after loading the view.
    }
    

}
