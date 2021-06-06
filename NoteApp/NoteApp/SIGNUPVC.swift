
import UIKit
import Alamofire
import SwiftyJSON


class SIGNUPVC: UIViewController {
    
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
//    @IBOutlet weak var passwordAgainTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func registerPressed(_ sender: UIButton) {
        guard let nameTF = nameTF.text, !nameTF.isEmpty else { return }
        guard let emailTF = emailTF.text, !emailTF.isEmpty else { return }
        guard let password = passwordTF.text, !password.isEmpty else { return }
        
        let Id_Iug = "210461851"
        let Department = "Engineering"
        let Specialization = "Computer engineering"
        
        
        
        API.register(name: nameTF, email: emailTF, Id_Iug: Id_Iug , Department: Department, Specialization: Specialization, password: password) { (error: Error?, success: Bool) in
            if success {
                print("Reigster succeed !! welcome to our small app :)")
            }
        }

        
    }
    
}

