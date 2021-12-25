//
//  ViewController.swift
//  Fundamentos_iOS3
//
//  Created by Ricardo Hernandez on 13/12/20.
//prueba

import UIKit

class SplashViewController: UIViewController {
    
    private let SEGUE_TO_MAIN = "SEGUE_FROM_LAUNCH_TO_MAIN"
    
    // View Properties
    @IBOutlet var activityIndicator: UIActivityIndicatorView?

   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // MARK - iniciamos la animación del loading
        activityIndicator?.startAnimating()
        
        
        //extractedFunc()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //ocultar navigation bar
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        //Mostrar el navigation bar
        navigationController?.isNavigationBarHidden = false
    }
    
    private func navigateNext() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) { [weak self] in
            
            //Opcion 1.- ejecutamos la navegación del Segue
            if let segueIdentifier = self?.SEGUE_TO_MAIN{
                
                self?.performSegue(withIdentifier: segueIdentifier,
                                   sender: nil)
            }
            
            //Opcion 2.- creamos navegación a mano al ViewController inicial del
            //storyboard del Home. Además hacemos un setViewControllers
            // para borrar la pila y añadir 'destination' como rooViewController
            
            // let storyBoardHome = UIStoryboard(name: "Home", bundle: nil)
            
            //if let destination = storyBoardHome.instantiateInitialViewController() as? HomeViewController   {
            //    self?.navigationController?.setViewControllers([destination], animated: true)
            
            //}
        }
    }
    

    }


