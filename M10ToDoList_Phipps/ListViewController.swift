//
//  ViewController.swift
//  M10ToDoList_Phipps
//
//  Created by Makendra Phipps on 4/14/26.
//

import UIKit

//source, destination
class ListViewController: UIViewController {

    var toDoList = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let center = NotificationCenter.default
        center.addObserver(forName: .toDoDidInsert, object: nil, queue: .main) { noti in
            if let todo = noti.userInfo?[Key.todo] as? String{
                self.toDoList.append(todo)
                self.tableView.reloadData()
            }
        }
    }
    
    


}

enum Key{
    case todo
}

extension ListViewController: UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = toDoList[indexPath.row]
        return cell
    }
    
    
}

