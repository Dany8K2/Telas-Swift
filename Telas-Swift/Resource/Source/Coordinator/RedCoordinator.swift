//
//  RedCoordinator.swift
//  Telas-Swift
//
//  Created by IFBIOTIC04 on 03/07/23.
//

import Foundation
import UIKit

class RedCoordinator : Coordinator{
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = RedViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onBlueTap = {
            self.gotoBlue()
        }
        
        viewController.onGreenTap = {
            self.gotoGreen()
        }
    }
    
    func gotoBlue(){
        self.navigationController.popToRootViewController(animated: true)
        
    }
    
    func gotoGreen(){
        self.navigationController.popViewController(animated: true)
       
    }
}
