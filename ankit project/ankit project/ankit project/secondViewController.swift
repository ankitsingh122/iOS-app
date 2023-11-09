//
//  secondViewController.swift
//  ankit project
//
//  Created by Ankit Singh on 28/10/23.
//

import UIKit
class secondViewController: UIViewController {
    var strName: String!
   
    

    override func viewDidLoad() {
        super.viewDidLoad()

        lbl.text = "Welcome \(strName!)!"
    }
    @IBOutlet weak var seg0: UISegmentedControl!
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    @IBAction func seg(_ sender: Any) {
        let x = seg0.selectedSegmentIndex
        switch x {
        case 0:
            performSegue(withIdentifier: "3rd", sender: nil)
            img.image = UIImage(named: "veg")
        case 1:
            performSegue(withIdentifier: "4th", sender: nil)
            img.image = UIImage(named: "nonveg")
        default :
            img.image = UIImage(named: "foodie")
            
        }
    }
    
    
    
    @IBAction func ratingBtn(_ sender: Any) {
        performSegue(withIdentifier: "5th", sender: nil)
    }
    
    
    
    

}
