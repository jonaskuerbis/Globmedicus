//
//  ViewController.swift
//  Globmedicus
//
//  Created by Jonas Stefan Kürbis on 12/8/18.
//  Copyright © 2018 Jonas Stefan Kürbis. All rights reserved.
//

import UIKit
import FirebaseUI
import FirebaseAuth




class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
    
        
    }

    @IBAction func LoginButtonTapped(_ sender: UIButton) {
        
        let authUI = FUIAuth.defaultAuthUI()
        guard authUI != nil else {
            return
        }
        
        authUI?.delegate = self
        
        let authViewController = authUI!.authViewController()
        
        present(authViewController, animated: true, completion: nil)
        
    }
    
}

extension ViewController: FUIAuthDelegate{
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        guard error == nil else {
            return
        }
        
        // authDataResult?.user.uid
        performSegue(withIdentifier: "LoginSegue", sender: self)
        
    }
}
