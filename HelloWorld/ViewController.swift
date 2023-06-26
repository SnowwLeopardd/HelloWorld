//
//  ViewController.swift
//  HelloWorld
//
//  Created by Aleksandr Bochkarev on 6/19/23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Otlets

    @IBOutlet var viewColorRed: UIView!
    @IBOutlet var viewColorGreen: UIView!
    @IBOutlet var viewColorBlue: UIView!
    
    @IBOutlet var labelRedSlider: UILabel!
    @IBOutlet var labelGreenSlider: UILabel!
    @IBOutlet var labelBlueSlider: UILabel!
    
    @IBOutlet var textRed: UITextField!
    @IBOutlet var textGreen: UITextField!
    @IBOutlet var textBlue: UITextField!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewColor()
        
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
    }

    // MARK: - Action methods
    @IBAction func redSliderAction() {
        viewColorRed.backgroundColor = viewColorRed.backgroundColor?.withAlphaComponent(CGFloat(redSlider.value))
        
        labelRedSlider.text = String(format: "%.2f", redSlider.value)
        
    }
    
    @IBAction func greenSliderAction() {
        viewColorGreen.backgroundColor = viewColorGreen.backgroundColor?.withAlphaComponent(CGFloat(greenSlider.value))
        labelGreenSlider.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueSliderAction() {
        viewColorBlue.backgroundColor = viewColorBlue.backgroundColor?.withAlphaComponent((CGFloat(blueSlider.value)))
        labelBlueSlider.text = String(format: "%.2f",blueSlider.value)
    }
    
    // MARK: - Private Methods
    private func setupRedSlider() {
        redSlider.minimumValue = 0.00
        redSlider.maximumValue = 1.00
        
        redSlider.minimumTrackTintColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        redSlider.maximumTrackTintColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.5)
    }
    
    private func setupGreenSlider() {
        greenSlider.minimumValue = 0.00
        greenSlider.maximumValue = 1.00
  
        greenSlider.minimumTrackTintColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        greenSlider.maximumTrackTintColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.5)
    }
    
    private func setupBlueSlider() {
        blueSlider.minimumValue = 0.00
        blueSlider.maximumValue = 1.00
        
        blueSlider.minimumTrackTintColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        blueSlider.maximumTrackTintColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.5)
    }
    
    private func setupViewColor() {
        viewColorRed.layer.cornerRadius = 10
        viewColorGreen.layer.cornerRadius = 10
        viewColorBlue.layer.cornerRadius = 10
        
        viewColorRed.backgroundColor = .red
        viewColorGreen.backgroundColor = .green
        viewColorBlue.backgroundColor = .blue
    }
}

