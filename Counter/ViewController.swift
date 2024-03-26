//
//  ViewController.swift
//  Counter
//
//  Created by Алиса  Грищенкова on 24.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    // Свойства класса
    
    private var counter = 0
    
    @IBOutlet private weak var mainCounter: UILabel!
    
    @IBOutlet private weak var minusOneButton: UIButton!
    
    @IBOutlet private weak var plusOneButton: UIButton!
    
    @IBOutlet private weak var restartButton: UIButton!
    
    @IBOutlet private weak var infoTextView: UITextView!
    
    // Методы класса
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoTextView.text = "История изменений:"
    }
    
    // IBAction на кнопки "+1", "-1", "сбросить счетчик"
    
    @IBAction private func plusOne(_ sender: Any) {
        counter += 1
        mainCounter.text = "\(counter)"
        infoTextView.text.append("\n[\(Date().formatted())]: значение изменено на +1")
    }
    
    @IBAction private func minusOne(_ sender: Any) {
        if counter >= 1{
            counter -= 1
            mainCounter.text = "\(counter)"
            infoTextView.text.append("\n[\(Date().formatted())]: значение изменено на -1")
        } else {
            infoTextView.text.append("\n[\(Date().formatted())]: попытка уменьшить значение счётчика ниже 0")
        }
    }
    
    @IBAction private func restart(_ sender: Any) {
        counter = 0
        mainCounter.text = "0"
        infoTextView.text.append("\n[\(Date().formatted())]: значение сброшено")
   }
    
    
    


}

