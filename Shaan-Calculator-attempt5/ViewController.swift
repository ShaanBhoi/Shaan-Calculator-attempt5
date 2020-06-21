//
//  ViewController.swift
//  Shaan-Calculator-attempt5
//
//  Created by Shaan Bhoi on 2020-06-21.
//  Copyright © 2020 Shaan Bhoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var holder: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        setupNumberPad()
    }
    
    private func setupNumberPad(){
        let buttonSize: CGFloat = view.frame.size.width / 4
        
        let zeroButton = UIButton(frame: CGRect(x: 0, y: holder.frame.size.height-buttonSize, width: buttonSize*3, height: buttonSize))
        zeroButton.setTitleColor(.black, for: .normal)
        zeroButton.backgroundColor = .white
        zeroButton.setTitle("0", for: .normal)
        holder.addSubview(zeroButton)
        
        for x in 0..<3 {
            let Button1 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x), y: holder.frame.size.height-(buttonSize * 2), width: buttonSize, height: buttonSize))
            Button1.setTitleColor(.black, for: .normal)
            Button1.backgroundColor = .white
            Button1.setTitle("\(x+1)", for: .normal)
            holder.addSubview(Button1)
        }
        
        for x in 0..<3 {
            let Button2 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x), y: holder.frame.size.height-(buttonSize * 2), width: buttonSize, height: buttonSize))
            Button2.setTitleColor(.black, for: .normal)
            Button2.backgroundColor = .white
            Button2.setTitle("\(x+4)", for: .normal)
            holder.addSubview(Button2)
        }
        
        for x in 0..<3 {
            let Button3 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x), y: holder.frame.size.height-(buttonSize * 2), width: buttonSize, height: buttonSize))
            Button3.setTitleColor(.black, for: .normal)
            Button3.backgroundColor = .white
            Button3.setTitle("\(x+7)", for: .normal)
            holder.addSubview(Button3)
        }
    }

}

