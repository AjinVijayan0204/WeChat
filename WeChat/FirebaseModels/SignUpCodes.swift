//
//  SignUpCodes.swift
//  WeChat
//
//  Created by Ajin on 29/07/22.
//

import Foundation
import FirebaseAuth
import GoogleSignIn
import FirebaseCore

class SignUpCodes{
    
    //SignUp firebase
    func createUser(email:String, password:String) {
        Auth.auth().createUser(withEmail: email, password: password){ authResult,error in
            if let user = authResult?.user{
                print("True")
            }else{
                print("False")
            }
            
            if let err = error{
                print(err)
            }
        }
    }
    
    //SignUp
    
    func googleSignUp(context: UIViewController){
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }
        
        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)

        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(with: config, presenting: context) { [unowned self] user, error in

          if let error = error {
              print(error)
            // ...
            return
          }

          guard
            let authentication = user?.authentication,
            let idToken = authentication.idToken
          else {
            return
          }

          let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                         accessToken: authentication.accessToken)
            
            Auth.auth().signIn(with: credential) { authResult, error in
                if let error = error {
                  let authError = error as NSError
                   
                  // ...
                    print("Error in authetication")
                  return
                }
                // User is signed in
                // ...
                
            }
        }
    }
        
    
}
