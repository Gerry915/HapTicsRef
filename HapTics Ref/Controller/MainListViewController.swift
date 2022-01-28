//
//  MainListViewController.swift
//  HapTics Ref
//
//  Created by Gerry Gao on 29/1/2022.
//

import UIKit

class MainListViewController: AnimatableListViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.reuseId)
        tableView.separatorStyle = .none
        title = "HapTics Ref"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        reloadDataWithAnimation {
            UINotificationFeedbackGenerator().notificationOccurred(.success)
        }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.reuseId, for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        content.text = "feedback"
        content.secondaryText = "detail"
        
        cell.contentConfiguration = content
        
        return cell
    }
}

