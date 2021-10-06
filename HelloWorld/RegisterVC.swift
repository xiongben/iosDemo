//
//  RegisterVC.swift
//  HelloWorld
//
//  Created by Xiong Ben on 5/10/21.
//

import UIKit

class RegisterVC: UIViewController {
    
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(errorLabel.text)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "success",
           let destination = segue.destination as? SuccessVC {
            destination.text = "hi！注册成功"
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print(identifier)
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

    @IBAction func clickLoginBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
