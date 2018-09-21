//
//  ParentViewController.swift
//  ProtocalTest
//
//  Created by Audrey Wang on 2018-09-21.
//  Copyright © 2018 Audrey Wang. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController, UpdateParentDelegate{
    func updateParent(data: String) {
        display.text = data
    }
    

    var dataInParent = "Parent"
    
    @IBOutlet weak var display: UITextView!
    
    func updateParentDisplay(data: String) {
        display.text = data
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
       

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func goToChild(_ sender: UIButton) {
        
        
        dataInParent = sender.currentTitle!
        performSegue(withIdentifier: "gotochild", sender: self)
        // get child, something like child.dataFromParent = sender.currentTitle
    }
    // if no data needed to be passing into child, use action segue
    // if data needed to be passeduse manu
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotochild" {
            let childVC = segue.destination as! ChildViewController
            
            childVC.dataFromParent = dataInParent
            //childVC.updateParentDisplay = updateParentDisplay
            childVC.delegate = self
            // the above line passes self into delegate, so that childVC can access the functions
            
        }
    }
    
}
