import UIKit
import Lottie

class WelcomeViewController: UIViewController
{
    @IBOutlet weak var welcomeAnimationView: AnimationView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        welcomeAnimationView.loopMode = .loop
        welcomeAnimationView.play()
    }
    
    @IBAction func loginButtonPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func registerButtonPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "RegisterViewController") as! RegisterViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
