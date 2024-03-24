//
//  ViewController.swift
//  Counter
//
//  Created by Алиса  Грищенкова on 24.03.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainCounter: UILabel!
    
    @IBOutlet weak var minusOneButton: UIButton!
    
    @IBOutlet weak var plusOneButton: UIButton!
    
    @IBOutlet weak var restartButton: UIButton!
    
    @IBOutlet weak var infoCounter: UITextView!
    
    private var counter = 0

    @IBAction func minusOne(_ sender: Any) {
        if counter >= 1{
            counter -= 1
            mainCounter.text = "\(counter)"
            infoCounter.text.append("\n[\(Date().formatted())]: значение изменено на -1")
        } else {
            infoCounter.text.append("\n[\(Date().formatted())]: попытка уменьшить значение счётчика ниже 0")
        }
    }
    
    @IBAction func restart(_ sender: Any) {
        mainCounter.text = "0"
        infoCounter.text.append("\n[\(Date().formatted())]: значение сброшено")
    }
    
    @IBAction func plusOne(_ sender: Any) {
        counter += 1
        mainCounter.text = "\(counter)"
        infoCounter.text.append("\n[\(Date().formatted())]: значение изменено на +1")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        infoCounter.text = "История изменений:"
    }

    
    
   
}

