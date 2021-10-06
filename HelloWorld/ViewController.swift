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
    
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        updateUI()
        print(errorLabel.text)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "success",
           let destination = segue.destination as? SuccessVC {
            destination.text = "hi！登陆成功"
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if identifier == "success" {
            let userName = userNameTextField.text ?? ""
            if userName.isEmpty {
                errorLabel.text = "请输入用户名"
                return false
            }
            let passNum = passwordTextField.text ?? ""
            if passNum.isEmpty {
                errorLabel.text = "请输入密码"
                return false
            }
            errorLabel.text = nil
        }
        return true
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

