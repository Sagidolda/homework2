//
//  ViewController.swift
//  Home Work 2
//
//  Created by Olzhas Sagidolda on 1/10/24.
//

import UIKit

class ViewController: UIViewController {
    
  
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelSurname: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var labelPlace: UILabel!
   
    @IBOutlet weak var labelInform: UILabel!
    
    /*var name = ""
    var surname = ""
    var imagename = ""*/
    var person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelName.text = person.name
        labelSurname.text = person.surename
        imageView.image = UIImage(named: person.imagename)
        labelPlace.text = person.place
        labelInform.text = person.inform
        
    }
    
}

