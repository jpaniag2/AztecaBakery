//
//  ViewController.swift
//  AztecaBakery
//
//  Created by Julio Paniagua on 10/11/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var storeOneLabel: UILabel!
    @IBOutlet weak var storeTwoLabel: UILabel!
    
    
    let tipoDeOrden = ["Pasteles", "Pan Mexicano"]
    let storeManager = Manager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storeOneLabel.text = storeManager.getStoreInfo(0)
        storeTwoLabel.text = storeManager.getStoreInfo(1)
        // Do any additional setup after loading the view.
    }
        
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func beginButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToMenu", sender: self)
    }
    
    @objc func updateUI(){

        
        //if user pressed pan dulce make pasteles image alpha = 0.5
        
    }
}
