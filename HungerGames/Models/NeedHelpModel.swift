import Foundation

struct Section
{
    let title: String
    let options: [String]
    var isOpened: Bool = false
    
    init(title: String, options: [String], isOpened: Bool = false)
    {
        self.title = title
        self.options = options
        self.isOpened = isOpened
    }
}
