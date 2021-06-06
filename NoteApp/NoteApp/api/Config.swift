
import Foundation


struct URLs {

    static let main = "http://iug0project.herokuapp.com/api/user/"
    static let file_root = ""
    
    // MARK:- AUTH
    
    /// POST {email, password}
    static let login = main + "login"
    /// POST {name, email, password, password_confirmation}
    static let register = main + "signup"
    
    
    // MARK:- TASKS
    /// GET {api_token, page, per_page}
    static let tasks = main + "tasks"
    
    /// POST {api_token, task}
    static let new_task = main + "task/create"
    
    /// POST {api_token, task_id, task(optional), completed(optional)}
    static let edit_task = main + "task/edit"
    
    /// POST {api_token, task_id}
    static let delete_task = main + "task/delete"
    
    
    // MARK:- PHOTOS
    
    /// GET {api_token}
    static let photos = main + "photos"
    
    /// POST {api_token} and file {photo}
    static let create_photo = main + "photo/create"
}




