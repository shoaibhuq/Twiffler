//
//  LoginViewController.swift
//  Twitter
//
//  Created by Shoaib Huq on 3/11/22.
//  Copyright © 2022 Dan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if (UserDefaults.standard.bool(forKey: "userLoggedIn")){
            self.performSegue(withIdentifier: "LoginToHome", sender: self)
        }
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        
        let requestUrl = "https://api.twitter.com/oauth/request_token"
        TwitterAPICaller.client?.login(url: requestUrl, success: {
            UserDefaults.standard.set(true, forKey: "userLoggedIn")
            self.performSegue(withIdentifier: "LoginToHome", sender: self)
        }, failure: { Error in
            print("Could not login")
        })
    }

    /*
    // MARK: - Navigation

    // In a storyboard-base
     d application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
