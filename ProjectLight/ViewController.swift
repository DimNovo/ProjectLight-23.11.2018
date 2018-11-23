//
//  ViewController.swift
//  ProjectLight
//
//  Created by Dim on 23/11/2018.
//  Copyright © 2018 Dmitry Novosyolov. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var isOn = true {
        didSet {
            updateUI()
        }
    }

    @IBAction func buttonPressed() {
        
        isOn = !isOn
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        
        view.backgroundColor = isOn ? .white : .black
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }


}

