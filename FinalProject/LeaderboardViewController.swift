
import UIKit

class LeaderboardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableViewOutlet: UITableView!
    var highScores : [PlayerScore] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        var x = 0
        while x < GameController.people.count{
        highScores.append(PlayerScore.init(player: GameController.people[x], time: 1))
            x = x + 1
            
        }
        
        
        
    }
    
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return highScores.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = highScores[indexPath.row].player
        cell.detailTextLabel?.text = String(highScores[indexPath.row].time)
        
        return cell
        
        
    }
    
    
    
    
    
    
    
    
    }
