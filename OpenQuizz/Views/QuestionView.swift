//
//  QuestionView.swift
//  OpenQuizz
//
//  Created by Froehlicher Axel on 24/12/2017.
//  Copyright © 2017 Froehlicher Axel. All rights reserved.
//

import UIKit

class QuestionView: UIView {

    @IBOutlet private var label: UILabel!
    @IBOutlet private var icon: UIImageView!
    
    var title = "" {
        didSet {
            label.text = title
        }
    }
    
    enum Style {
        case correct, incorrect, standard
    }
    
    var style: Style = .standard {
        didSet {
            setStyle(style)
        }
    }
    
    private func setStyle(_ style: Style) {
        switch style {
        case .correct:
            icon.image = #imageLiteral(resourceName: "Icon Correct")
            icon.isHidden = false
            backgroundColor = UIColor(red: 200.0/255.0, green: 236.0/255.0, blue: 160.0/255.0, alpha: 1) // Vert
        case .incorrect:
            icon.image = #imageLiteral(resourceName: "Icon Error")
            icon.isHidden = false
            backgroundColor = UIColor(red: 243.0/255.0, green: 135.0/255.0, blue: 148.0/255.0, alpha: 1) // Rouge
        case .standard:
            icon.isHidden = true
            backgroundColor = UIColor(red: 191.0/255.0, green: 196.0/255.0, blue: 201.0/255.0, alpha: 1) // Gris
        }
    }

}
