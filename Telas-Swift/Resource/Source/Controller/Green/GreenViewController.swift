//
//  GreenViewController.swift
//  Telas-Swift
//
//  Created by IFBIOTIC04 on 03/07/23.
//

import Foundation
import UIKit

class GreenViewController: ViewControllerDefault{
    
    var onBlueTap: (() -> Void)?
    var onRedTap: (() -> Void)?
    
    lazy var greenView: GreenView = {
        let greenView = GreenView()
        
        greenView.onBlueTap = {
            self.onBlueTap?()
        }
        greenView.onRedTap = {
            self.onRedTap?()
        }
        return greenView
    }()
    
    override func loadView() {
        self.view = greenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Green"
    }
}

    
