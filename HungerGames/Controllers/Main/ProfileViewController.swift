import UIKit

class ProfileViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func myAddressesButton(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "MyAddressesViewController") as! MyAddressesViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func orderHistoryButton(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "OrderHistoryViewController") as! OrderHistoryViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func myCartButton(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "CartViewController") as! CartViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func myFavouritesButton(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "MyFavouritesViewController") as! MyFavouritesViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func notificationButton(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "NotificationCenterViewController") as! NotificationCenterViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func myWalletButton(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "HungerGamesWalletViewController") as! HungerGamesWalletViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func changePasswordButton(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "ChangePasswordViewController") as! ChangePasswordViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func needHelpButton(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "NeedHelpViewController") as! NeedHelpViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func termsOfServicesButton(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "TermsOfServicesViewController") as! TermsOfServicesViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func privacyPolicyButton(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "PrivacyPolicyViewController") as! PrivacyPolicyViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func logoutButton(_ sender: UIButton)
    {
        
    }
}
