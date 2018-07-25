//
//  MainVC.swift
//  party rock
//
//  Created by Araz Sinjary on 7/25/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "<#T##String#>", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ouKANRi0Fyo\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Assubhu Bada")
        
        partyRocks.append(p1)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
}

