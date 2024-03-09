import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var logs: UITextView!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var counter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logs.text = "История изменений:\n"
        logs.isScrollEnabled = true
        logs.isEditable = false
        counter.text = "0"
    }

    @IBAction func plusButtonPressed(_ sender: Any) {
        counter.text = String(Int(counter.text ?? "0")! + 1)
        logs.text += "\(Date().dateTimeString): значение изменено на +1\n"
    }
    
    @IBAction func minusButtonPressed(_ sender: Any) {
        if counter.text == "0" {
            logs.text += "\(Date().dateTimeString): попытка уменьшить значение счетчика ниже 0\n"
            return
        }
        counter.text = String(Int(counter.text ?? "0")! - 1)
        logs.text += "\(Date().dateTimeString): значение изменено на -1\n"
    }
    
    @IBAction func clearButtonPressed(_ sender: Any) {
        counter.text = "0"
        logs.text += "\(Date().dateTimeString): значение сброшено\n"
    }
}

