import UIKit

final class ViewController: UIViewController {
    @IBOutlet weak private var logsTextView: UITextView!
    @IBOutlet weak private var plusButton: UIButton!
    @IBOutlet weak private var minusButton: UIButton!
    @IBOutlet weak private var clearButton: UIButton!
    @IBOutlet weak private var         counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    private func setUpView() {
        logsTextView.text = "История изменений:\n"
        logsTextView.isScrollEnabled = true
        logsTextView.isEditable = false
                counterLabel.text = "0"
    }
    
    @IBAction private func plusButtonPressed(_ sender: Any) {
                counterLabel.text = String(Int(        counterLabel.text!)! + 1)
        logsTextView.text += "\(Date().dateTimeString): значение изменено на +1\n"
    }
    
    @IBAction private func minusButtonPressed(_ sender: Any) {
        if         counterLabel.text == "0" {
            logsTextView.text += "\(Date().dateTimeString): попытка уменьшить значение счетчика ниже 0\n"
            return
        }
                counterLabel.text = String(Int(        counterLabel.text!)! - 1)
        logsTextView.text += "\(Date().dateTimeString): значение изменено на -1\n"
    }
    
    @IBAction private func clearButtonPressed(_ sender: Any) {
                counterLabel.text = "0"
        logsTextView.text += "\(Date().dateTimeString): значение сброшено\n"
    }
}

