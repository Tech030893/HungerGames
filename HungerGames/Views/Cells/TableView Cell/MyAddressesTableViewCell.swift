import UIKit

class MyAddressesTableViewCell: UITableViewCell
{
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var flatBuildingLabel: UILabel!
    @IBOutlet weak var addressLine1Label: UILabel!
    @IBOutlet weak var addressLine2Label: UILabel!
    @IBOutlet weak var postalCodeLabel: UILabel!
    @IBOutlet weak var cityStateCountryLabel: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func updateButtonPress(_ sender: UIButton)
    {
        
    }
    
    @IBAction func deleteButtonPress(_ sender: UIButton)
    {
        
    }
}
