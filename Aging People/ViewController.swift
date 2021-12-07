//
//  ViewController.swift
//  Aging People
//
//  Created by administrator on 07/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let names=["Latifa","Amal","Sara","Thunyan","Mohammad","Nasser"
               ,"Noura","Shrifah","Mona","Muneera","Somaya","Turki"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }


}


extension ViewController: UITableViewDataSource {
    //Datasource
    // How many cells are we going to need?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return an integer that indicates how many rows (cells) to draw
        return names.count
    }
    
    // How should I create each cell?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        cell.detailTextLabel?.text = "\(Int.random(in: 5...95)) years old"
    
        return cell
    }
    
    
    
}
