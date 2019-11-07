//
//  TrendingFeedVC.swift
//  Versi
//
//  Created by Molnár Csaba on 2019. 11. 05..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class TrendingFeedVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
   let refreshControl = UIRefreshControl()
        
        var dataSource = PublishSubject<[Repo]>()
        var disposeBag = DisposeBag()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.refreshControl = refreshControl
            refreshControl.tintColor = #colorLiteral(red: 0.2784313725, green: 0.462745098, blue: 0.9019607843, alpha: 1)
            refreshControl.attributedTitle = NSAttributedString(string: "Fetching Hot Github Repos 🔥", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.2784313725, green: 0.462745098, blue: 0.9019607843, alpha: 1), NSAttributedString.Key.font: UIFont(name: "AvenirNext-DemiBold", size: 16.0)!])
            refreshControl.addTarget(self, action: #selector(fetchData), for: .valueChanged)
            
            fetchData()
            dataSource.bind(to: tableView.rx.items(cellIdentifier: "TrendingTableViewCell")) { (row, repo: Repo, cell: TrendingTableViewCell) in
                cell.configureCell(repo: repo)
            }.disposed(by: disposeBag)
        }
        
        @objc func fetchData() {
            DownloadService.instance.downloadTrendingRepos { (trendingRepoArray) in
                self.dataSource.onNext(trendingRepoArray)
                self.refreshControl.endRefreshing()
            }
        }
        
    }

