import UIKit
import Lottie

class HungerGamesWalletViewController: UIViewController
{
    @IBOutlet weak var walletAnimationView: AnimationView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        walletAnimationView.loopMode = .loop
        walletAnimationView.play()
    }
    
    @IBAction func backPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "MainTabBarController") as! UITabBarController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func clickHerePress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "NeedHelpViewController") as! NeedHelpViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
