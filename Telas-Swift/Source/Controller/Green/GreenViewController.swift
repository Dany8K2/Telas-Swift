//
//  GreenViewController.swift
//  Telas-Swift
//
//  Created by IFBIOTIC04 on 03/07/23.
//

import Foundation
import UIKit

class GreenViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        let goToBlueButton = UIButton(type: .system)
        goToBlueButton.setTitle("Ir para a tela azul", for: .normal)
        goToBlueButton.addTarget(self, action: #selector(goToBlue), for: .touchUpInside)
        goToBlueButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(goToBlueButton)
        
        let goToRedButton = UIButton(type: .system)
        goToRedButton.setTitle("Ir para a tela vermelha", for: .normal)
        goToRedButton.addTarget(self, action: #selector(goToRed), for: .touchUpInside)
        goToRedButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(goToRedButton)
        
        NSLayoutConstraint.activate([
            goToBlueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToBlueButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
            goToRedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
        
    }
    
}
    
