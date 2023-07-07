//
//  GreenView.swift
//  Telas-Swift
//
//  Created by IFBIOTIC04 on 03/07/23.
//

import Foundation
import UIKit

class GreenView: ViewDefault{
    
    var onBlueTap: (() -> Void)?
    var onRedTap: (()-> Void)?
    
    var blue = ButtonDefault(text: "Jump to BlueScreen")
    
    var red = ButtonDefault(text: "Jump to RedScreen")
    
    override  func setupVisualElements(){
        
        super.setupVisualElements()
        backgroundColor = .green
        self.addSubview(blue)
        self.addSubview(red)
        
        blue.addTarget(self, action: #selector(azulTap), for: .touchUpInside)
        red.addTarget(self, action: #selector(vermelhoTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            blue.widthAnchor.constraint(equalToConstant: 374),
            blue.heightAnchor.constraint(equalToConstant: 60),
            blue.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            blue.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            blue.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            red.widthAnchor.constraint(equalToConstant: 374),
            red.heightAnchor.constraint(equalToConstant: 60),
            red.topAnchor.constraint(equalTo: blue.bottomAnchor, constant: 23),
            red.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            red.trailingAnchor.constraint(equalTo: red.trailingAnchor, constant: -16),
                
        ])
    }
    
    @objc
    private func azulTap(){
        onBlueTap?()
    }
    
    @objc
    private func vermelhoTap(){
        onRedTap?()
    }
    
}
