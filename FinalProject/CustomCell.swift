import Foundation
import UIKit
public class CustomCell: UICollectionViewCell{
    
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var labelOutletTwo: UILabel!
    
    func configure(first: String, picture: UIImage, second: String){
        imageOutlet.layer.borderWidth = 0.5
        labelOutlet.layer.borderWidth = 0.5
        labelOutletTwo.layer.borderWidth = 0.5
        
        labelOutlet?.text = first
        imageOutlet?.image = picture
        labelOutletTwo?.text = second
    }
    
    func boughtCharacter(){
        labelOutletTwo.text = "Unlocked"
    }
}
