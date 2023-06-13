//
//  ViewController.swift
//  CounterYandexPracticumSprint3
//
//  Created by admin on 13.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var counterLable: UILabel!
    @IBOutlet weak var counterTitleLable: UILabel!
    
    var counterValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterTitleLable.text = "Значение счётчика:"
        counterLable.text = counterValue.description
        addButtonStyle()
    }

    @IBAction func addButtonPressed(_ sender: Any) {
        counterValue += 1
        counterLable.text = counterValue.description
    }
    
    func addButtonStyle(){
        addButton.setImage(UIImage(systemName: "plus"), for: .normal)
        addButton.backgroundColor = .clear
        addButton.layer.cornerRadius = 5
        addButton.layer.borderWidth = 1
        addButton.layer.borderColor = UIColor.black.cgColor
    }
}

