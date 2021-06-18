import UIKit

class LoginViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func loginButtonPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "MainTabBarController") as! UITabBarController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func recoverPasswordPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "RecoverPasswordViewController") as! RecoverPasswordViewController
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
