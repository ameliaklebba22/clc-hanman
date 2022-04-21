
import UIKit

class PersonalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    
    @IBOutlet weak var personalTableViewOutlet: UITableView!
    var userHighScore : [PlayerScore] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        personalTableViewOutlet.delegate = self
        personalTableViewOutlet.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       return userHighScore.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = personalTableViewOutlet.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        
        
        return cell
    }
 
}

