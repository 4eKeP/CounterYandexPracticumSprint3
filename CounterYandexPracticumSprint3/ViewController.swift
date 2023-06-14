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
}

