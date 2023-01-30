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
    
    let lightOn: CGFloat = 1
    let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2

        redLight.alpha = lightOff
        yellowLight.alpha = lightOff
        greenLight.alpha = lightOff
        
        switchButton.layer.cornerRadius = 10
    }

    @IBAction func switchButtonDidTapped() {
        
        if switchButton.currentTitle == "Start" {
            switchButton.setTitle("NEXT", for: .normal)
        }
        
        switch burningLight {
        case .red:
            yellowLight.alpha = lightOn
            redLight.alpha = lightOff
            burningLight = .yellow
        case .yellow:
            greenLight.alpha = lightOn
            yellowLight.alpha = lightOff
            burningLight = .green
        case .green:
            redLight.alpha = lightOn
            greenLight.alpha = lightOff
            burningLight = .red
        }
    }
}

