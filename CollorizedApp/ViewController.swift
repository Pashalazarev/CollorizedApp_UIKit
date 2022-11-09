//
//  ViewController.swift
//  CollorizedApp
//
//  Created by Pavel Lazarev Macbook on 09.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redColorLabel: UILabel!
    @IBOutlet var greenColorLabel: UILabel!
    @IBOutlet var blueColorLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        colorView.layer.cornerRadius = 20
        
        setupSliderValue()
        setupSliderColor()
        

        
        
    }
    
    // MARK: - IBActions
    
    @IBAction func redSliderAction() {
        redColorLabel.text = String(format: "%.2f", redSlider.value)
        rgbColorSlider()
    }
    
    @IBAction func greenSliderAction() {
        greenColorLabel.text = String(format: "%.2f", greenSlider.value)
        rgbColorSlider()
    }
    
    @IBAction func blueSliderAction() {
        blueColorLabel.text = String(format: "%.2f", blueSlider.value)
        rgbColorSlider()
    }
    
    // MARK: - Private Methods
    
    private func setupSliderValue() {
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = 0.8
        
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = 0.2
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = 0.3
    }
    private func setupSliderColor() {
        redSlider.thumbTintColor = .systemRed
        redSlider.minimumTrackTintColor = .systemRed
        
        greenSlider.thumbTintColor = .systemGreen
        greenSlider.minimumTrackTintColor = .systemGreen
        
        blueSlider.thumbTintColor = .systemBlue
        blueSlider.minimumTrackTintColor = .systemBlue
        
    }
    
    private func rgbColorSlider() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1)
    }
}


