//
//  ViewController.swift
//  Traffic Light
//
//  Created by D K on 10.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = true
    var lightState: LightState = .off
    
    enum LightState {
        case off
        case lightRed
        case lightYellow
        case lightGreen
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    fileprivate func updateUI() {
        switch lightState {
        case .off:
            view.backgroundColor = .black
        case .lightRed:
            view.backgroundColor = .red
        case  .lightYellow:
            view.backgroundColor = .yellow
        case .lightGreen:
            view.backgroundColor = .green
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        toggle()
        updateUI()
    }
    
    fileprivate func toggle() {
        switch lightState {
        case .off:
            lightState = .lightRed
        case .lightRed:
            lightState = .lightYellow
        case  .lightYellow:
            lightState = .lightGreen
        case .lightGreen:
            lightState = .off
        }
    }
    
    

}


