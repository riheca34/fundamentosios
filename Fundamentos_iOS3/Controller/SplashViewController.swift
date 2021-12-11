//
//  ViewController.swift
//  Fundamentos_iOS3
//
//  Created by Ricardo Hernandez on 13/12/20.
//prueba

import UIKit

class SplashViewController: UIViewController {
    
    //private let SEGUE_TO_MAIN = "SEGUE_FROM_LAUNCH_TO_MAIN"
    
    // View Properties
    @IBOutlet var activityIndicator: UIActivityIndicatorView?

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // iniciamos la animación
        activityIndicator?.startAnimating()
        
        //performSegue(withIdentifier: SEGUE_TO_MAIN, sender: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //ocultar navigation bar
        navigationController?.isNavigationBarHidden = true
    }


}

