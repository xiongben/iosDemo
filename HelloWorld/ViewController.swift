//
//  ViewController.swift
//  HelloWorld
//
//  Created by Xiong Ben on 5/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    var intNumber: Int = 0
    var doubleNumber: Double = 0
    var step: Int = 1
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }


    @IBAction func clickButton(_ sender: UIButton) {
        intNumber += step
        doubleNumber += Double(step)
        if intNumber >= 10 || intNumber <= 0 {
            step *= -1
        }
        updateUI()
        
    }
    
    func updateUI() {
        label.text = "Int: \(intNumber) \nDouble: \(doubleNumber)"
        
        
        if step > 0 {
            button.setTitle("+\(step)", for: .normal)
        } else {
            button.setTitle("\(step)", for: .normal)
        }
    }
}

