//
//  ViewController.swift
//  HW 2.2
//
//  Created by Игорь Солодянкин on 29.01.2023.
//

import UIKit

enum Light {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var switchButton: UIButton!
    
    private var burningLight = Light.green
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2

        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        switchButton.layer.cornerRadius = 12
    }

    @IBAction func switchButtonDidTapped() {
        
        switchButton.setTitle("NEXT", for: .normal)
        
        switch burningLight {
        case .red:
            yellowLight.alpha = 1
            redLight.alpha = 0.3
            burningLight = .yellow
        case .yellow:
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
            burningLight = .green
        case .green:
            redLight.alpha = 1
            greenLight.alpha = 0.3
            burningLight = .red
        }
    }
}

