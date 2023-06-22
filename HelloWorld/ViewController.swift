//
//  ViewController.swift
//  HelloWorld
//
//  Created by Aleksandr Bochkarev on 6/19/23.
//

import UIKit

class ViewController: UIViewController {
    
    private enum CurrentLight {
        case red, yellow, green
    }
    
    @IBOutlet var redCircle: UIView!
    @IBOutlet var yellowCircle: UIView!
    @IBOutlet var greenCircle: UIView!

    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red // Необходимо для захождения в switch
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        startButton.layer.cornerRadius = 10
        
        redCircle.alpha = lightIsOff
        yellowCircle.alpha = lightIsOff
        greenCircle.alpha = lightIsOff
    }
    
    override func viewWillLayoutSubviews() {
        redCircle.layer.cornerRadius = redCircle.frame.width/2
        yellowCircle.layer.cornerRadius = yellowCircle.frame.width/2
        greenCircle.layer.cornerRadius = greenCircle.frame.width/2
    }
    
    @IBAction func startButtonTapped() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            greenCircle.alpha = lightIsOff
            redCircle.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redCircle.alpha = lightIsOff
            yellowCircle.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenCircle.alpha = lightIsOn
            yellowCircle.alpha = lightIsOff
            currentLight = .red
        }
    }
}

  
