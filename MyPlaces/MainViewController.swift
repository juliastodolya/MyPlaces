//
//  ViewController.swift
//  MyPlaces
//
//  Created by Юлия on 02.12.2020.
//  Copyright © 2020 Julia Stodolya. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var placesTableView: UITableView!
    
    let restaurantNames = ["Кансинь", "Фишка", "Корова", "Онегин" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        placesTableView.delegate = self
        placesTableView.dataSource = self
    }


}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        cell.nameLabel.text = restaurantNames[indexPath.row]
        cell.imageOfPlace.image = UIImage(named: restaurantNames[indexPath.row])
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        85
    }
    
}
