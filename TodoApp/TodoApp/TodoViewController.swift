//
//  TodoViewController.swift
//  TodoApp
//
//  Created by Shubham Lekhak on 03/02/2023.
//

import UIKit

protocol TodoViewControllerDelegate: AnyObject {
    func todoViewController(_ vc: TodoViewController, didSaveTodo: Todo)
}

class TodoViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var todo: Todo?
    
    weak var delegate: TodoViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        UserDefaults.standard.value(forKey: textField.text ?? "")
        
        textField.text = todo?.title

    }
    
    @IBAction func save(_ sender: Any) {
        let todo = Todo(title: textField.text!)
        delegate?.todoViewController(self, didSaveTodo: todo)
    }
    

}
