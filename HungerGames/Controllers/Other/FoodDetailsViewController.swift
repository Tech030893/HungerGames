import UIKit

class FoodDetailsViewController: UIViewController
{
    @IBOutlet weak var sliderViewHeight: NSLayoutConstraint!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func panGesturePreformed(_ sender: UIPanGestureRecognizer)
    {
        let translation = sender.translation(in: self.view).y
        
        if sender.state == .began || sender.state == .changed
        {
            if translation < 0
            {
                if sliderViewHeight.constant >= 150 && sliderViewHeight.constant < 380
                {
                    UIView.animate(withDuration: 0.2)
                    {
                        self.sliderViewHeight.constant -= translation/20
                        self.view.layoutIfNeeded()
                    }
                }
            }
            else
            {
                if sliderViewHeight.constant >= 150 && sliderViewHeight.constant <= 380
                {
                    UIView.animate(withDuration: 0.2)
                    {
                        self.sliderViewHeight.constant -= translation/20
                        self.view.layoutIfNeeded()
                    }
                }
            }
        }
        
        if sender.state == .ended
        {
            if translation < 0
            {
                UIView.animate(withDuration: 0.2) {
                    self.sliderViewHeight.constant = 380
                    self.view.layoutIfNeeded()
                }
            }
            else
            {
                UIView.animate(withDuration: 0.2) {
                    self.sliderViewHeight.constant = 150
                    self.view.layoutIfNeeded()
                }
            }
            
            if sliderViewHeight.constant < 150
            {
                sliderViewHeight.constant = 150
            }
            else if sliderViewHeight.constant > 380
            {
                sliderViewHeight.constant = 380
            }
        }
    }
    
    @IBAction func tapGesturePerformed(_ sender: UITapGestureRecognizer)
    {
        UIView.animate(withDuration: 0.2) {
            self.sliderViewHeight.constant = 150
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func backPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "MainTabBarController") as! UITabBarController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func addToCartPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "CartViewController") as! CartViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
