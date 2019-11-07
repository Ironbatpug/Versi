//
//  SearchTableViewCell.swift
//  Versi
//
//  Created by Molnár Csaba on 2019. 11. 07..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    
    @IBOutlet weak var repoNameLbl: UILabel!
    @IBOutlet weak var repoDescLbl: UILabel!
    @IBOutlet weak var forkCountLbl: UILabel!
    @IBOutlet weak var languageLbl: UILabel!
    @IBOutlet weak var backView: UIView!
    
    public private(set) var repoUrl: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.layer.cornerRadius = 15
    }
    
    func configureCell(repo: Repo) {
        self.repoNameLbl.text = repo.name
        self.repoDescLbl.text = repo.description
        self.forkCountLbl.text = String(describing: repo.numberOfForks)
        self.languageLbl.text = repo.language
        repoUrl = repo.repoUrl

    }



}
