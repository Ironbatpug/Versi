//
//  TrendingTableViewCell.swift
//  Versi
//
//  Created by Molnár Csaba on 2019. 11. 05..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class TrendingTableViewCell: UITableViewCell {
    @IBOutlet weak var repoImageView: UIImageView!
    @IBOutlet weak var repoNameLbl: UILabel!
    @IBOutlet weak var repoDescLbl: UILabel!
    @IBOutlet weak var numberOfForksLbl: UILabel!
    @IBOutlet weak var languageLbl: UILabel!
    @IBOutlet weak var numberofContributorsLbl: UILabel!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var viewReadMeBtn: RoundedButton!
    
    var disposebag = DisposeBag()
    
    private var repoUrl: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        backView.layer.cornerRadius = 15
        backView.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        backView.layer.shadowOpacity = 0.25
        backView.layer.shadowRadius = 5.0
        backView.layer.shadowOffset = CGSize(width: 0, height: 0)
    }
    
    func configureCell(repo: Repo){
        
        self.repoImageView.image = repo.image
        self.repoNameLbl.text = repo.name
        self.repoDescLbl.text = repo.description
        self.numberOfForksLbl.text = String.init(describing: repo.numberOfForks)
        self.languageLbl.text = String.init(describing: repo.language)
        self.numberofContributorsLbl.text = String.init(describing: repo.numberOfContributors)
        
        self.repoUrl = repo.repoUrl
        
        viewReadMeBtn.rx.tap.subscribe({_ in
            self.window?.rootViewController?.presentSFSafariVCFor(url: self.repoUrl!)
            }).disposed(by: disposebag)
    }
    
}
