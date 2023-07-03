//
//  RedCoordinator.swift
//  Telas-Swift
//
//  Created by IFBIOTIC04 on 03/07/23.
//

import Foundation
import UIKit
class RedCoordinator: Coordinator {
    
    //faço com que todas as telas que usarem o LoginCoordinator impremente
    //o navigation controller. Senão todos todas as vezes teria que instãnciá-lo
    var navigationController: UINavigationController
    
    //cria um construtor para incializar meu navationCrontroller
    init (navigationController: UINavigationController ) {
        self.navigationController = navigationController
        
    }
    
    func start() {
        let viewController = RedViewController()
        //self.navigationController.pushViewController(viewController, animated: true)
        
        
        //viewController.onLoginTap = {
        //self.gotoLogin()
    }
    
    
    
    //função que chama a registerView
    func  gotoBlue() {
        let coordinator = BlueCoordinator(navigationController: navigationController)
        coordinator.start()
        
        func  goToGreen() {
            let coordinator = GreenCoordinator(navigationController: navigationController)
            coordinator.start()
        }
    }
}
