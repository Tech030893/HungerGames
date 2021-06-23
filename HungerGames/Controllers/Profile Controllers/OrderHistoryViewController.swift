import UIKit
import Lottie

class OrderHistoryViewController: UIViewController
{
    @IBOutlet weak var orderNowAnimationView: AnimationView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        orderNowAnimationView.loopMode = .loop
        orderNowAnimationView.play()
    }
    
    @IBAction func backPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "MainTabBarController") as! UITabBarController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func exploreMenuPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "MainTabBarController") as! UITabBarController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
