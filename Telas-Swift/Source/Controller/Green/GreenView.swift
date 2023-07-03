//
//  GreenView.swift
//  Telas-Swift
//
//  Created by IFBIOTIC04 on 03/07/23.
//

import Foundation
import UIKit

class GreenView: UIView {
    
    //MARK: - Initialize
        //override init(frame: CGRect) {
            //chama o frame da superclasse
            //super.init(frame: frame)
            // muda a cor de fundo do app para branco
            //self.backgroundColor = .viewBackGroundColor
            //setupVisualElements()
            
        
    
    //MARK: - Initialize
    var onRedTap: (()->Void)?
    
    var buttonBlue = ButtonDefault(botao: "voltar para a tela Azul")
    
    var onBlueTap: (()->Void)?

    var buttonRed = ButtonDefault(botao: "Ir para a tela vermerlha")
    
    
}
