//
//  ViewController+Style.swift
//  CounterYandexPracticumSprint3
//
//  Created by admin on 14.06.2023.
//

import UIKit

extension ViewController{
    func historyTextViewStyle(){
        historyTextView.layer.cornerRadius = 5
        historyTextView.layer.borderWidth = 1
        historyTextView.layer.borderColor = UIColor.black.cgColor
        historyTextView.isEditable = false
        historyTextView.text = "История изменений:\n"
        historyTextView.textColor = .white
        historyTextView.font?.withSize(17)
    }
    
    func removeButtonStyle(){
        removeButton.setImage(UIImage(systemName: "clear"), for: .normal)
        removeButton.tintColor = .white
    }
    
    func decreaseButtonStyle(){
        decreaseButton.setImage(UIImage(systemName: "minus"), for: .normal)
        decreaseButton.backgroundColor = .blue
        decreaseButton.tintColor = .white
        decreaseButton.layer.cornerRadius = 5
        decreaseButton.layer.borderWidth = 1
        decreaseButton.layer.borderColor = UIColor.black.cgColor
    }
    
    func addButtonStyle(){
        addButton.setImage(UIImage(systemName: "plus"), for: .normal)
        addButton.backgroundColor = .red
        addButton.tintColor = .white
        addButton.layer.cornerRadius = 5
        addButton.layer.borderWidth = 1
        addButton.layer.borderColor = UIColor.black.cgColor
    }
    
    func counterTitleLableStyle(){
        counterTitleLable.text = "Значение счётчика:"
    }
}

