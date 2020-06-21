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
    
    private var resultLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont(name: "Arial", size: 120)
        return label
        
    }()
    
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
        //for the zero button
        let zeroButton = UIButton(frame: CGRect(x: 0, y: holder.frame.size.height-buttonSize, width: buttonSize*3, height: buttonSize))
        zeroButton.setTitleColor(.black, for: .normal)
        zeroButton.backgroundColor = .white
        zeroButton.setTitle("0", for: .normal)
        holder.addSubview(zeroButton)
        
        //for the numbers 1,2,3
        for x in 0..<3 {
            let Button1 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x), y: holder.frame.size.height-(buttonSize * 2), width: buttonSize, height: buttonSize))
            Button1.setTitleColor(.black, for: .normal)
            Button1.backgroundColor = .white
            Button1.setTitle("\(x+1)", for: .normal)
            holder.addSubview(Button1)
        }
        //for the numbers 4,5,6
        for x in 0..<3 {
            let Button2 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x), y: holder.frame.size.height-(buttonSize * 3), width: buttonSize, height: buttonSize))
            Button2.setTitleColor(.black, for: .normal)
            Button2.backgroundColor = .white
            Button2.setTitle("\(x+4)", for: .normal)
            holder.addSubview(Button2)
        }
        //for the numbers 7,8,9
        for x in 0..<3 {
            let Button3 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x), y: holder.frame.size.height-(buttonSize * 4), width: buttonSize, height: buttonSize))
            Button3.setTitleColor(.black, for: .normal)
            Button3.backgroundColor = .white
            Button3.setTitle("\(x+7)", for: .normal)
            holder.addSubview(Button3)
        }
        //for clear button
        let clearButton = UIButton(frame: CGRect(x: 0, y: holder.frame.size.height-(buttonSize*5), width: view.frame.size.width, height: buttonSize))
        clearButton.setTitleColor(.black, for: .normal)
        clearButton.backgroundColor = .white
        clearButton.setTitle("CLEAR", for: .normal)
        holder.addSubview(clearButton)
        //operations
        let operations = ["+","-","*","/"]
        for x in 0..<4 {
            let Button4 = UIButton(frame: CGRect(x: buttonSize * 3, y: holder.frame.size.height-(buttonSize * CGFloat(x+1)), width: buttonSize, height: buttonSize))
            Button4.setTitleColor(.white, for: .normal)
            Button4.backgroundColor = .orange
            Button4.setTitle(operations[x], for: .normal)
            holder.addSubview(Button4)
        }
    
        
        resultLabel.frame = CGRect(x: 20, y: clearButton.frame.origin.y - 120.0, width: view.frame.size.width - 40, height: 100)
        holder.addSubview(resultLabel)
        
        
    
    
    }

}
