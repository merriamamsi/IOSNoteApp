

import UIKit
import Alamofire
import SwiftyJSON


class LoginVC: UIViewController {
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func loginPressed(_ sender: UIButton) {
        guard let email = emailTF.text, !email.isEmpty else { return }
        guard let password = passwordTF.text, !password.isEmpty else { return }
        
        API.login(idIug: email, password: password) { (error: Error?, success: Bool) in
            if success {
                // say welcome to user
                print("ayman success")
            } else {
                // say sorry to user and try again
                
                print("ayman try again")
            }
        }
    }
}
