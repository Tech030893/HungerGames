import UIKit

class NeedHelpViewController: UIViewController
{
    @IBOutlet weak var needHelpTableView: UITableView!
    
    private var sections = [Section]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        sections = [
            Section(title: "F.A.Q. Question 1", options: ["F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer"].compactMap({ return "\($0)" })),
            
            Section(title: "F.A.Q. Question 2", options: ["F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer"].compactMap({ return "\($0)" })),
            
            Section(title: "F.A.Q. Question 3", options: ["F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer"].compactMap({ return "\($0)" })),
            
            Section(title: "F.A.Q. Question 4", options: ["F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer"].compactMap({ return "\($0)" })),
            
            Section(title: "F.A.Q. Question 5", options: ["F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer"].compactMap({ return "\($0)" })),
            
            Section(title: "F.A.Q. Question 6", options: ["F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer "].compactMap({ return "\($0)" })),
            
            Section(title: "F.A.Q. Question 7", options: ["F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer "].compactMap({ return "\($0)" })),
            
            Section(title: "F.A.Q. Question 8", options: ["F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer "].compactMap({ return "\($0)" })),
            
            Section(title: "F.A.Q. Question 9", options: ["F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer "].compactMap({ return "\($0)" })),
            
            Section(title: "F.A.Q. Question 10", options: ["F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer F.A.Q. Answer "].compactMap({ return "\($0)" })),
        ]
    }
    
    @IBAction func backPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "MainTabBarController") as! UITabBarController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}

extension NeedHelpViewController: UITableViewDelegate, UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        let section = sections[section]
        
        if section.isOpened
        {
            return section.options.count + 1
        }
        else
        {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NeedHelpTableViewCell") as! NeedHelpTableViewCell
        
        if indexPath.row == 0
        {
            cell.helpDataLabel.text = sections[indexPath.section].title
        }
        else
        {
            cell.helpDataLabel.text = sections[indexPath.section].options[indexPath.row - 1]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0
        {
            sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
            tableView.reloadSections([indexPath.section], with: .none)
        }
        else
        {
            return
        }
    }
}
