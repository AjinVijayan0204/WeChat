//
//  ChatsViewController.swift
//  WeChat
//
//  Created by Ajin on 30/07/22.
//

import UIKit
import FirebaseAuth

class ChatsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UINavigationBarDelegate {
    
    
    @IBOutlet weak var navigBar: UINavigationBar!
    
    var user : AuthDataResult?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //navigation bar title
        self.navigBar.topItem?.title = user?.user.displayName
    }
    
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        do{
            try Auth.auth().signOut()
            self.dismiss(animated: true)
        }catch{
            print("No logged users")
        }
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }

}
