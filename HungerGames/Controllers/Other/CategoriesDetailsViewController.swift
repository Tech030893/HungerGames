import UIKit

class CategoriesDetailsViewController: UIViewController
{
    @IBOutlet weak var categoriesDetailsTableView: UITableView!
    
    var categoriesSessionArray = ["Starters","Breakfast","Main","Alcoholic Beverages","Non-Alcoholic Beverages","Desserts","Fruit Juices","Fast Food","Seafood","International Cuisines"]
    
    var categoriesFoodArray = [["Egg Drop Soup","Sweet & Sour Chicken Balls","Spring Rolls","Chicken Chilli","Crispy Crab","Dumplings","Chilli Potatoes","Steamed Pork"],["Bread & Coffee","Eggs, Bacon & Toast","Gallo Pinato","Mandazi","Cappuccino & Cornetto","Ackee & Saltfish","Chilaquiles","Kanda Poha"],["Dal Tadka","Kung Pao Tofu","Peas Pulao","Palak Paneer Bhurji","Gajar Matar","Mix Vegitables","Arbi Ki Sabzi","Aloo Tamatar Ki Sabzi"],["Pisco Sour","Campari","Sake","Tequila","Mojito","Whisky","Vodka","Rum"],["White Tea","Green Tea","Black Tea","Yellow Tea","Espresso","Cafe Latte","Flat White Coffee","Cappuccino"],["Gulab Jamun","Churros - Deep Fried","Malva Sponge Pudding","Rum Cake","Alfajores","Brownies","Chocolate Chip Cookies","Doughnuts"],["Apple Juice","Orange Juice","Kiwi Juice","Cranberry Juice","Avocado Juice","Grape Juice","Pomegranate Juice","Watermelon Juice"],["McCurry Wurst","Hot Dog Stuffed Crust Pizza","Chili Cheeseburger","Dragon Twister Egg Rolls","Dry Pork & Seaweed Donut","Bacon Potato Pie","Chicken McDo","Shrimp & Broccoli Sandwich"],["Grilled Promfret","Fish Curry","Fish Stew","Seared Salmon","Lobster Butter Rice","Shrimp & Cilantro Ceviche","Goan Prawn Curry","Pesto Fish Kebabs"],["Indian Cuisines","Italian Cuisines","Japanese Cuisines","Chinese Cuisines","French Cuisines","Thai Cuisines","Turkish Cuisines","Mexican Cuisines"]]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func backPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "MainTabBarController") as! UITabBarController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}

extension CategoriesDetailsViewController: UITableViewDelegate, UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return categoriesSessionArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return categoriesFoodArray[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return categoriesSessionArray[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoriesDetailsTableViewCell") as! CategoriesDetailsTableViewCell
        cell.categoriesNameLabel.text = categoriesFoodArray[indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let vc = storyboard?.instantiateViewController(identifier: "FoodDetailsViewController") as! FoodDetailsViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
