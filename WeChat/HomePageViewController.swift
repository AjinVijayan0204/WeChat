//
//  HomePageViewController.swift
//  WeChat
//
//  Created by Ajin on 28/07/22.
//

import UIKit
import GoogleSignIn

class HomePageViewController: UIViewController {
    
    @IBOutlet weak var mail: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var signUp = SignUpCodes()
    
    @IBAction func signUpFireBase(_ sender: UIButton) {
        signUp.createUser(email: mail.text!, password: password.text!)
    }
    
    @IBAction func signUpGoogle(_ sender: GIDSignInButton) {
        signUp.googleSignUp(context: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
