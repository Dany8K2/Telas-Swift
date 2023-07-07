//
//  BlueCoordinator.swift
//  Telas-Swift
//
//  Created by IFBIOTIC04 on 03/07/23.
//

import Foundation
import UIKit

class BlueCoordinator : Coordinator{
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = BlueViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onGreenTap = {
            self.goToGreen()
        }
    }
    
    func goToGreen(){
        let coordinator = GreenCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
