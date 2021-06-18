import UIKit

class DealsOffersViewController: UIViewController
{
    @IBOutlet weak var everydayOfferCollectionView: UICollectionView!
    
    @IBOutlet weak var paymentOfferCollectionView: UICollectionView!
    
    var everydayOfferArray = ["Banners1","Banners2","Banners3"]
    
    var paymentOfferArray = ["Banner1","Banner2","Banner3","Banner4","Banner5","Banner6","Banner7","Banner8"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}

extension DealsOffersViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        if collectionView.tag == 0
        {
            return everydayOfferArray.count
        }
        return paymentOfferArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        if collectionView.tag == 0
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EverydayOfferCollectionViewCell", for: indexPath) as! EverydayOfferCollectionViewCell
            cell.everydayOfferImageView.image = UIImage(named: everydayOfferArray[indexPath.row])
            return cell
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PaymentOfferCollectionViewCell", for: indexPath) as! PaymentOfferCollectionViewCell
        cell.paymentOfferImageView.image = UIImage(named: paymentOfferArray[indexPath.row])
        return cell
    }
}
