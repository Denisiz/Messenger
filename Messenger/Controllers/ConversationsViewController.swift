//
//  ViewController.swift
//  Messenger
//
//  Created by Денис on 19.01.2022.
//

import UIKit
import FirebaseAuth

class ConverationsViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
       
      validateAuth()
        
    }
    
    private func validateAuth (){
    //let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        if FirebaseAuth.Auth.auth().currentUser == nil {
            let vc = LoginViewController ()
            let nav = UINavigationController (rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
    }
    }

}

