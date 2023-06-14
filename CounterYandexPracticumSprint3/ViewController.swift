//
//  ViewController.swift
//  CounterYandexPracticumSprint3
//
//  Created by admin on 13.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var decreaseButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var counterLable: UILabel!
    @IBOutlet weak var counterTitleLable: UILabel!
    
    var counterValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterTitleLable.text = "Значение счётчика:"
        counterLable.text = counterValue.description
        addButtonStyle()
        decreaseButtonStyle()
    }

    @IBAction func decreaseButtonPressed(_ sender: Any) {
        if counterValue <= 0 {
            counterValue = 0
            counterLable.text = counterValue.description
        }else{
            counterValue -= 1
            counterLable.text = counterValue.description
        }
    }
    
    @IBAction func addButtonPressed(_ sender: Any) {
        counterValue += 1
        counterLable.text = counterValue.description
    }
    
    func decreaseButtonStyle(){
        decreaseButton.setImage(UIImage(systemName: "minus"), for: .normal)
        decreaseButton.backgroundColor = .blue
        decreaseButton.layer.cornerRadius = 5
        decreaseButton.layer.borderWidth = 1
        decreaseButton.layer.borderColor = UIColor.black.cgColor
    }
    
    func addButtonStyle(){
        addButton.setImage(UIImage(systemName: "plus"), for: .normal)
        addButton.backgroundColor = .red
        addButton.layer.cornerRadius = 5
        addButton.layer.borderWidth = 1
        addButton.layer.borderColor = UIColor.black.cgColor
    }
}

