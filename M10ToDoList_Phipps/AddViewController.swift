//
//  AddViewController.swift
//  M10ToDoList_Phipps
//
//  Created by Makendra Phipps on 4/14/26.
//

import UIKit

class AddViewController: UIViewController {
    
    var listVC: ListViewController?
    
    @IBOutlet weak var inputField: UITextField!
    
    
    @IBAction func cancelButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        
        guard let text = inputField.text else{
            return
        }
        let center = NotificationCenter.default
        center.post(name: .toDoDidInsert, object: nil, userInfo: [Key.todo: text])
        self.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}

extension NSNotification.Name{
    static let toDoDidInsert = NSNotification.Name("toDoDidInsert")
}
