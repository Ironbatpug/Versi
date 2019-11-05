//
//  Repo.swift
//  Versi
//
//  Created by Molnár Csaba on 2019. 11. 05..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import UIKit

class Repo {
    public private(set) var name: String
    public private(set) var description: String
    public private(set) var numberOfForks: Int
    public private(set) var language: String
    public private(set) var numberOfContributers: Int
    public private(set) var repoUrl: String
    public private(set) var image: UIImage
    
    init (name: String,description: String,numberOfForks: Int,language: String,numberOfContributers: Int,repoUrl: String,image: UIImage) {
        self.name = name
        self.description = description
        self.numberOfForks = numberOfForks
        self.language = language
        self.numberOfContributers = numberOfContributers
        self.repoUrl = repoUrl
        self.image = image
    }
}
