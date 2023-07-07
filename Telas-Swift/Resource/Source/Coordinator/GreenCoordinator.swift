//
//  GreenCoordinator.swift
//  Telas-Swift
//
//  Created by IFBIOTIC04 on 03/07/23.
//

import Foundation
import UIKit
class GreenCoordinator : Coordinator{
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = GreenViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onBlueTap = {
            self.gotoBlue()
        }
        viewController.onRedTap = {
            self.gotoRed()
        }
    }
    
    func gotoBlue(){
        self.navigationController.popToRootViewController(animated: true)
    }
    
    func gotoRed(){
        //self.navigationController.popViewController(animated: true)
        let coordinator_Red = RedCoordinator(navigationController: navigationController)
        coordinator_Red.start()
    }

}
