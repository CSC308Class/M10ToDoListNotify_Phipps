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
        listVC?.toDoList.append(text) //Optional chaining
        
        listVC?.tableView.reloadData()
        
        self.dismiss(animated: true)
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
