//
//  BlueView.swift
//  Telas-Swift
//
//  Created by IFBIOTIC04 on 03/07/23.
//

import Foundation
import UIKit

class BlueView: ViewDefault{
    
    var onGreenTap: (() -> Void)?
    
    var Green = ButtonDefault(text: "Jump to GreenScreen")
    
    override func setupVisualElements(){
        
        self.addSubview(Green)
        backgroundColor = .blue
        
        Green.addTarget(self, action: #selector(GreenTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            Green.widthAnchor.constraint(equalToConstant: 374),
            Green.heightAnchor.constraint(equalToConstant: 60),
            Green.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            Green.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            Green.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
        ])
    }
    
    @objc
    private func GreenTap(){
        onGreenTap?()
    }
}

