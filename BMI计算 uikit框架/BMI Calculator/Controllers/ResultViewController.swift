
import UIKit

class ResultViewController: UIViewController {

    var bmivalue: String?
    var advice: String?
    var color: UIColor?
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmivalue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    

    @IBAction func recalculatepressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
