
import UIKit
import Alamofire
import SwiftyJSON


class API: NSObject {
    
    
    
    

    class func login(idIug: String, password: String, completion: @escaping (_ error: Error?, _ success: Bool)->Void) {
        let url = URLs.login
        
        let parameters = [
            "idIug": idIug,
            "password": password
        ]
        
        
       
        
        
        AF.request(url, method: .post, parameters: parameters , encoding: JSONEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .responseJSON { response in

                switch response.result
                {
                case .failure(let error):
                    completion(error, false)
                    print("ayman :\(error)")

                case .success(let value):
                    let json = JSON(value)
//                    print("ayman success api :\(json )")
                    
                    
                    if let api_token = json["token"].string {
//                        print("api_token: \(api_token)")
                        
                        // save api token to UserDefaults
                        helper.saveApiToken(token: api_token)
                        
                        completion(nil, true)
                    }
        
                    }
            }
    }
    
    class func register(name: String, email: String , Id_Iug : String, Department :String, Specialization :String , password: String , completion: @escaping (_ error: Error?, _ success: Bool)->Void) {
        let url = URLs.register
        
        let parameters = [
            "name": name,
            "email": email,
            "idIug": Id_Iug,
            "department": Department,
            "specialization": Specialization,
            "password": password
        ]
        
        AF.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .responseJSON { response in

                switch response.result
                {
                case .failure(let error):
                    completion(error, false)
                    print(error)

                case .success(let value):
                    let json = JSON(value)

                    if let api_token = json["token"].string {
                        print("api_token: \(api_token)")

                        // save api token to UserDefaults
                        
                        helper.saveApiToken(token: api_token)


                        completion(nil, true)
                    }
                }

        }
    }
    
    

}
