// Created on: Sept 27
// Created by: Mark Ison
// Created for: ICS3CR
// This program is solves the area and perimeter 



import PlaygroundSupport

import UIKit

class ViewController : UIViewController {
    
    //properties
    let instructionLabel = UILabel()
    let lenghtLabel = UILabel()
    let widthLabel = UILabel()
    let lenghtTextField = UITextField()
    let widthTextField = UITextField()
    let calculateButton = UIButton()
    let areaLabel = UILabel()
    let perimeterLabel = UILabel()
    
    override func viewDidLoad() {
        //UI
        
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "Calculate the area and perimeter of a rectangle"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false 
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        lenghtLabel.text = "Enter lenght"
        view.addSubview(lenghtLabel)
        lenghtLabel.translatesAutoresizingMaskIntoConstraints = false
        lenghtLabel.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        lenghtLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20).isActive = true
        
        lenghtTextField.borderStyle = UITextBorderStyle.roundedRect
        lenghtTextField.placeholder = "In cm      "
        view.addSubview(lenghtTextField)
        lenghtTextField.translatesAutoresizingMaskIntoConstraints = false
        lenghtTextField.bottomAnchor.constraint(equalTo: lenghtLabel.topAnchor, constant: 20).isActive = true
        lenghtTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 150).isActive = true
        
        
        widthLabel.text = "Enter width"
        view.addSubview(widthLabel)
        widthLabel.translatesAutoresizingMaskIntoConstraints = false
        widthLabel.topAnchor.constraint(equalTo: lenghtLabel.bottomAnchor, constant: 20).isActive = true
        widthLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20).isActive = true
        
        widthTextField.borderStyle = UITextBorderStyle.roundedRect
        widthTextField.placeholder = "In cm      "
        view.addSubview(widthTextField)
        widthTextField.translatesAutoresizingMaskIntoConstraints = false
        widthTextField.topAnchor.constraint(equalTo: lenghtTextField.bottomAnchor, constant: 20).isActive = true
        widthTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 150).isActive = true
        
        calculateButton.setTitle("Calculate", for: UIControlState.normal)
        calculateButton.setTitleColor(.blue, for: .normal)
        calculateButton.addTarget(self, action: #selector(areaAndPerimeter), for: .touchUpInside)
        view.addSubview(calculateButton)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.topAnchor.constraint(equalTo: widthLabel.bottomAnchor, constant: 20).isActive = true
        calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        
        areaLabel.text = nil
        view.addSubview(areaLabel)
        areaLabel.translatesAutoresizingMaskIntoConstraints = false
        areaLabel.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 20).isActive = true
        areaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        perimeterLabel.text = nil
        view.addSubview(perimeterLabel)
        perimeterLabel.translatesAutoresizingMaskIntoConstraints = false
        perimeterLabel.topAnchor.constraint(equalTo: areaLabel.bottomAnchor, constant: 20).isActive = true
        perimeterLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func areaAndPerimeter() {
        
        let lenght : Int = Int(lenghtTextField.text!)!
        let width : Int = Int(widthTextField.text!)!
        
        let area = lenght * width
        let perimeter = 2 * (lenght + width)
        
        areaLabel.text = "The area is: \(area) cm^2"
        perimeterLabel.text = "the perimeter is: \(perimeter) cm"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}

//Xcode
PlaygroundPage.current.liveView = ViewController()
