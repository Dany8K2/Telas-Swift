//
//  BlueViewController.swift
//  Telas-Swift
//
//  Created by IFBIOTIC04 on 03/07/23.
//

import Foundation
import UIKit

class BlueViewController: ViewControllerDefault{
    
    //var onRegisterTap: (() -> Void)?
    var onGreenTap: (() -> Void)?
    
    lazy var blueView: BlueView = {
        
        let azulView = BlueView()
        blueView.onGreenTap = {
            self.onGreenTap?()
        }
        
        return blueView
    }()
    
    override func loadView() {
        self.view = blueView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Blue"
    }
}
