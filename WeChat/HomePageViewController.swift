//
//  HomePageViewController.swift
//  WeChat
//
//  Created by Ajin on 30/07/22.
//

import UIKit
import FirebaseAuth

class HomePageViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func logIn(_ sender: UIButton) {
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { [weak self] authResult, error in
          guard let strongSelf = self else { return }
          // ...
            if let result = authResult{
//                print(result.user.email)
//                print(result.user.displayName)
                let strybrd = UIStoryboard(name: "Main", bundle: nil)
                var chatScreeen = strybrd.instantiateViewController(withIdentifier: "chatView") as! ChatsViewController
                chatScreeen.user = result
                chatScreeen.modalPresentationStyle = .fullScreen
                self?.present(chatScreeen, animated: true, completion: nil)
                
            }else{
                self!.createAlert(title: "Login Failed", message: "User Credentials not found", handler: nil)
            }
        }
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
    
    func createAlert(title:String, message:String,handler: ((UIAlertAction)->Void)?){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: handler)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }

}
