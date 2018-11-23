//
//  ViewController.swift
//  ProjectLight
//
//  Created by Dim on 23/11/2018.
//  Copyright © 2018 Dmitry Novosyolov. All rights reserved.
//
import AVFoundation
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
        
        let device = AVCaptureDevice.default(for: .video)
        
        if let device = device, device.hasTorch {
            
            view.backgroundColor = .black
            do {
                try device.lockForConfiguration()
                device.torchMode = isOn ? .on : .off
                device.unlockForConfiguration()
            } catch {
                print(#function, error)
            }
            
        } else {
            view.backgroundColor = isOn ? .white : .black
        }
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }


}

