//
//  RedView.swift
//  Telas-Swift
//
//  Created by IFBIOTIC04 on 03/07/23.
//

import Foundation
import UIKit

class RedView: ViewDefault{
    
    var onBlueTap: (() -> Void)?
    var onGreenTap: (() -> Void)?
    
    var blue = ButtonDefault(text: "Jump to BlueScreen")
    
    var green = ButtonDefault(text: "Jump to GreenScreen")
    
    override func setupVisualElements(){
    
        super.setupVisualElements()
        backgroundColor = .red
        self.addSubview(blue)
        self.addSubview(green)
        
        blue.addTarget(self, action: #selector(azulTap), for: .touchUpInside)
        green.addTarget(self, action: #selector(verdeTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            blue.widthAnchor.constraint(equalToConstant: 374),
            blue.heightAnchor.constraint(equalToConstant: 60),
            blue.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            blue.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            blue.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            green.widthAnchor.constraint(equalToConstant: 374),
            green.heightAnchor.constraint(equalToConstant: 60),
            green.topAnchor.constraint(equalTo: blue.bottomAnchor, constant: 23),
            green.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            green.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
        ])
    }
    
    @objc
    private func azulTap(){
        onBlueTap?()
    }
    
    @objc
    private func verdeTap(){
        onGreenTap?()
    }
    
}
