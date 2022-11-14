//
// TaskTableViewCell.swift
// W2-D3_Task
//


import UIKit

protocol TaskCompletionDelegate: AnyObject {
    func taskCellButtonTapped(_ sender: TaskTableViewCell)
}

class TaskTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    
    @IBOutlet weak var taskNameLabel: UILabel!
    @IBOutlet weak var completionButton: UIButton!
    
    // MARK: - Properties
    
    var task: Task? {
        didSet {  // didSet is triggered anytime task is assigned a value
            updateViews() // when the task is set, updateViews with the information
        }
    }
    
    weak var delegate: TaskCompletionDelegate?

    // MARK: - Actions
    
    @IBAction func completionButtonTapped(_ sender: Any) {
        if let delegate = delegate {
            delegate.taskCellButtonTapped(self)
        }
    }
    
    // MARK: - Helper Functions
    
    func updateViews() {
        guard let task = task else { return }
        taskNameLabel.text = task.name
        
        if task.isComplete {
            completionButton.setBackgroundImage(UIImage(named: "complete"), for: .normal)
            
        } else {
            completionButton.setBackgroundImage(UIImage(named: "incomplete"), for: .normal)
        }
    }
}

