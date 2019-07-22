//
//  ViewController.swift
//  IOS-UISwitch
//
//  Created by GIS on 7/22/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var mainView: MainView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
        
    }
    
    override func viewDidLayoutSubviews() {
        
        setUpEvent()
        
    }
    
    func setUp() {
        
        setUpView()
        
    }
    
    func setUpView() {
        
        mainView = MainView()
        self.view = mainView
        
    }
    
    func setUpEvent() {
        
        // slider
        mainView.uiSwitch.addTarget(self, action: #selector(sliderWithStepValueChange(_:)), for: .valueChanged)
        
    }
    
    @objc func sliderValueChange(_ slider: UISlider) {
        
        print("Stepper Value: \(slider.value)")
        mainView.lbValue.text = "\(Int(slider.value))"
        
    }
    
    @objc func sliderWithStepValueChange(_ uiSwitch: UISwitch) {
        
        if uiSwitch.isOn {
            
            print("ON")
            mainView.lbValue.text = "ON"
            
        }
        else {
            
            print("OFF")
            mainView.lbValue.text = "OFF"
            
        }
        
    }
    
}
