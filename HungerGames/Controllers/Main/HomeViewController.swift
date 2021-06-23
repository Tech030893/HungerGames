import UIKit

class HomeViewController: UIViewController
{
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    
    @IBOutlet weak var topFoodCollectionView: UICollectionView!
    
    @IBOutlet weak var recommendedCollectionView: UICollectionView!
    
    var categoriesArray = ["Categories Banner","Categories Banner","Categories Banner","Categories Banner","Categories Banner","Categories Banner","Categories Banner","Categories Banner","Categories Banner","Categories Banner"]
    
    var topFoodArray = ["Top Food Banner","Top Food Banner","Top Food Banner","Top Food Banner","Top Food Banner","Top Food Banner","Top Food Banner","Top Food Banner","Top Food Banner","Top Food Banner",]
    
    var recommendedArray = ["Resommended Banner","Resommended Banner","Resommended Banner","Resommended Banner","Resommended Banner","Resommended Banner","Resommended Banner","Resommended Banner","Resommended Banner","Resommended Banner",]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}

// MARK: - Collection View Code

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        if collectionView == categoriesCollectionView
        {
            return categoriesArray.count
        }
        if collectionView == topFoodCollectionView
        {
            return topFoodArray.count
        }
        return recommendedArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        if collectionView == categoriesCollectionView
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodCategoriesCollectionViewCell", for: indexPath) as! FoodCategoriesCollectionViewCell
            cell.categoriesImageView.image = UIImage(named: categoriesArray[indexPath.row])
            return cell
        }
        if collectionView == topFoodCollectionView
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopFoodCollectionViewCell", for: indexPath) as! TopFoodCollectionViewCell
            cell.topFoodImageVIew.image = UIImage(named: topFoodArray[indexPath.row])
            return cell
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendedCollectionViewCell", for: indexPath) as! RecommendedCollectionViewCell
        cell.recommendedImageView.image = UIImage(named: recommendedArray[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        if collectionView == categoriesCollectionView
        {
            let vc = storyboard?.instantiateViewController(identifier: "CategoriesDetailsViewController") as! CategoriesDetailsViewController
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        }
        if collectionView == topFoodCollectionView
        {
            let vc = storyboard?.instantiateViewController(identifier: "FoodDetailsViewController") as! FoodDetailsViewController
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        }
        let vc = storyboard?.instantiateViewController(identifier: "RecommendedDetailsViewController") as! RecommendedDetailsViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
