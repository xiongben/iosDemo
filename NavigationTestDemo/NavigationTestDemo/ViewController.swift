//
//  ViewController.swift
//  NavigationTestDemo
//
//  Created by admin on 2022/8/27.
//

import UIKit

class ViewController: UIViewController {
    
    var fullSize = UIScreen.main.bounds.size
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let textView = UITextView(frame: CGRect(x: 0, y: 0, width: fullSize.width, height: fullSize.height))
        textView.text = "test demo"
        self.view.addSubview(textView)
        
        let menuButtonBar = UIBarButtonItem(title: "🎾", style: .plain, target: self, action: #selector(triggerMenu))
        self.navigationItem.leftBarButtonItem = menuButtonBar
        
    }
    
    @objc func triggerMenu() {
        print("click the menu")
    }


}

