import UIKit

class ViewController: UIViewController {
    
    override
    func viewDidLoad() {
        super.viewDidLoad();
        BallImage.image = UIImage(named: "ball5");
    }
    
    @IBOutlet weak var BallImage: UIImageView!
    
    @IBAction func handleAskBall(_ sender: Any) {
        let randomNumber = [1,2,3,4,5].randomElement();
        BallImage.image = UIImage(named: "ball\(randomNumber!)");
    }
}
