//
//  ChildViewController.swift
//  ProtocalTest
//
//  Created by Audrey Wang on 2018-09-21.
//  Copyright © 2018 Audrey Wang. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {
    
    
    var dataFromParent: String? = nil
    var updateParentDisplay: ((String) -> Void)?
    
    var delegate: UpdateParentDelegate?

    @IBOutlet weak var display: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display.text = dataFromParent
         print(dataFromParent)
        // Do any additional setup after loading the view.
    }
    

  
    @IBAction func goBackToParent(_ sender: UIButton) {
     //   updateParentDisplay!(sender.currentTitle!)
        
        if delegate != nil {
            delegate?.updateParent(data: sender.currentTitle!)
        }
        dismiss(animated: true, completion: nil)
        // dismiss current view, go back to parent instrad of creating new instance
    }
}
