
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
            highScores.append(PlayerScore.init(player: GameController.people[x], time: GameController.scores[x]))
            x = x + 1
            
        }
        

        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        tableViewOutlet.reloadData()
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //tableView.reloadData()
        return highScores.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = highScores[indexPath.row].player
        cell.detailTextLabel?.text = String(highScores[indexPath.row].time)
        
        //tableView.reloadData()
        return cell
        
        
    }
    
    
    
    
    
    
    
    
    }
