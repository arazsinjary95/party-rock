//
//  PartyCell.swift
//  party rock
//
//  Created by Araz Sinjary on 7/25/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
    }

}
