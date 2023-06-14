//
//  ViewController.swift
//  CounterYandexPracticumSprint3
//
//  Created by admin on 13.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var removeButton: UIButton!
    @IBOutlet weak var historyTextView: UITextView!
    @IBOutlet weak var decreaseButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var counterLable: UILabel!
    @IBOutlet weak var counterTitleLable: UILabel!
    
    var counterValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLable.text = counterValue.description
        counterTitleLableStyle()
        addButtonStyle()
        decreaseButtonStyle()
        removeButtonStyle()
        historyTextViewStyle()
    }

    @IBAction func removeButtonPressed(_ sender: Any) {
        counterValue = 0
        counterLable.text = counterValue.description
        addTextToTextView(text: "значение сброшено")
    }
    @IBAction func decreaseButtonPressed(_ sender: Any) {
        if counterValue <= 0 {
            counterValue = 0
            counterLable.text = counterValue.description
            addTextToTextView(text: "попытка уменьшить значение счётчика ниже 0")
        }else{
            counterValue -= 1
            counterLable.text = counterValue.description
            addTextToTextView(text: "значение изменено на -1")
        }
    }
    
    @IBAction func addButtonPressed(_ sender: Any) {
        counterValue += 1
        counterLable.text = counterValue.description
        addTextToTextView(text: "значение изменено на +1")
    }
    
    func addTextToTextView(text: String){
        let timeStamp = DateFormatter()
        let range = NSMakeRange(historyTextView.text.count, 0)
        timeStamp.dateFormat = "dd/MM/yyyy HH:mm"
        historyTextView.text += "\(timeStamp.string(from: .now)): \(text).\n"
        historyTextView.scrollRangeToVisible(range)
    }
    
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
    
    func counterTitleLableStyle(){
        counterTitleLable.text = "Значение счётчика:"
    }
}

