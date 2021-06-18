import UIKit
import Lottie

class CartViewController: UIViewController
{
    @IBOutlet weak var emptyCartAnimationView: AnimationView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        emptyCartAnimationView.loopMode = .loop
        emptyCartAnimationView.play()
    }
    
    @IBAction func backPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "MainTabBarController") as! UITabBarController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func exploreMenuButton(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "MainTabBarController") as! UITabBarController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
