//
//  RedViewControlller.swift
//  Telas-Swift
//
//  Created by IFBIOTIC04 on 03/07/23.
//

import UIKit

class RedViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red

        let goToBlueButton = UIButton(type: .system)
        goToBlueButton.setTitle("Ir para a tela azul", for: .normal)
        goToBlueButton.addTarget(self, action: #selector(goToBlue), for: .touchUpInside)
        goToBlueButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(goToBlueButton)

        let goToGreenButton = UIButton(type: .system)
        goToGreenButton.setTitle("Voltar para a tela verde", for: .normal)
        goToGreenButton.addTarget(self, action: #selector(goToGreen), for: .touchUpInside)
        goToGreenButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(goToGreenButton)

        NSLayoutConstraint.activate([
            goToBlueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToBlueButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
            goToGreenButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToGreenButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 40)
        ])
    }

    @objc func goToBlue() {
        navigationController?.popToRootViewController(animated: true)
    }

    @objc func goToGreen() {
        let greenViewController = GreenViewController()
        navigationController?.pushViewController(greenViewController, animated: true)
    }
}

