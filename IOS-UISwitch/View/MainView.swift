//
//  MainView.swift
//  IOS-UISwitch
//
//  Created by GIS on 7/22/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    var uiSwitch: UISwitch!
    var lbValue: UILabel!
    
    override func layoutSubviews() {
        
        setUp()
        
    }
    
    func setUp() {
        
        backgroundColor = .white
        setUpView()
        setUpLayout()
        
    }
    
    func setUpView() {
        
        // slider
        uiSwitch = UISwitch()
        
        // lbValue
        lbValue = UILabel()
        lbValue.text = "OFF"
        lbValue.font = UIFont.boldSystemFont(ofSize: 35)
        lbValue.textAlignment = .center
        
        // add sub view
        self.addSubview(uiSwitch)
        self.addSubview(lbValue)
        
    }
    
    func setUpLayout() {
        
        // slider
        uiSwitch.frame = CGRect(x: 0, y: 0, width: self.frame.width - 100, height: 50)
        uiSwitch.center = self.center
        
        // lbValue
        lbValue.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        lbValue.center.x = self.center.x
        lbValue.center.y = self.center.y - 100
        
    }
    
}


