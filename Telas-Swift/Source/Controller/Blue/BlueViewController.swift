//
//  BlueViewController.swift
//  Telas-Swift
//
//  Created by IFBIOTIC04 on 03/07/23.
//

import Foundation
import UIKit
class BlueViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue

        let goToGreenButton = UIButton(type: .system)
        goToGreenButton.setTitle("Ir para a tela verde", for: .normal)
        goToGreenButton.addTarget(self, action: #selector(goToGreen), for: .touchUpInside)
        goToGreenButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(goToGreenButton)

        NSLayoutConstraint.activate([
            goToGreenButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToGreenButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func goToGreen() {
        let greenViewController = GreenViewController()
        navigationController?.pushViewController(greenViewController, animated: true)
    }
}
