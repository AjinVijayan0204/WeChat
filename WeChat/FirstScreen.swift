//
//  FirstScreen.swift
//  WeChat
//
//  Created by Ajin on 31/07/22.
//

import UIKit
import FirebaseAuth

class FirstScreen: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let user = Auth.auth().currentUser{
            print(Auth.auth().currentUser?.displayName)
        }else{
            print(Auth.auth().currentUser?.displayName)
        }
        
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
