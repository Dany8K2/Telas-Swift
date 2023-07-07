//
//  RedViewControlller.swift
//  Telas-Swift
//
//  Created by IFBIOTIC04 on 03/07/23.
//

import Foundation
import UIKit

class RedViewController: ViewControllerDefault{
    
    var onBlueTap: (() -> Void)?
    var onGreenTap: (() -> Void)?
    
    lazy var redView: RedView = {
        
        let redView = RedView()
        redView.onBlueTap = {
            self.onBlueTap?()
        }
        
        redView.onGreenTap = {
            self.onGreenTap?()
        }
        
        return redView
    }()
    
    override func loadView() {
        self.view = redView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Red"
    }
}
