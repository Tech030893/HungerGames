import UIKit
import Lottie

class RecoverPasswordViewController: UIViewController
{
    @IBOutlet weak var forgotpasswordAnimationView: AnimationView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        forgotpasswordAnimationView.loopMode = .loop
        forgotpasswordAnimationView.play()
    }
    
    @IBAction func sendCodePress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
