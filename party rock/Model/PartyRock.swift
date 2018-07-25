//
//  PartyRock.swift
//  party rock
//
//  Created by Araz Sinjary on 7/25/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import Foundation


class PartyRock {
    
    private var _imageUR: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageUR: String {
        return _videoURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    
    init(imageURL: String, videoURL: String, videoTitle: String)  {
        self._imageUR = imageURL
        self._videoURL = videoURL
        self._videoTitle = videoTitle
    }
}
