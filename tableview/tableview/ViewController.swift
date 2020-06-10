//
//  ViewController.swift
//  tableview
//
//  Created by 葛西　佳祐 on 2020/06/06.
//  Copyright © 2020 葛西　佳祐. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    let infoLists: [KameInfo] = [
        KameInfo(iconName: "02", title: "もでーん", description: "おなかいっぱいなかめくん"),
        KameInfo(iconName: "12", title: "ぐしゅん", description: "泣き虫かめくん"),
        KameInfo(iconName: "14", title: "いまいくの", description: "いくフリしておっくうになってるかめくん"),
        KameInfo(iconName: "19", title: "むりなの", description: "拒否するかめくん"),
        KameInfo(iconName: "22", title: "きゅうけい", description: "さぼってるかめくん"),
        KameInfo(iconName: "28", title: "にゃーっっ", description: "驚いてへんな声だしてるかめくん"),
        KameInfo(iconName: "32", title: "にしー", description: "ほめてもらったかめくん"),
        KameInfo(iconName: "29", title: "わほーい", description: "テンションアゲアゲなかめくん"),
        KameInfo(iconName: "35", title: "にひひ", description: "わるだくみしているかめくん"),
        KameInfo(iconName: "38", title: "もうだめだ・・・", description: "ギブアップしたかめくん"),
        KameInfo(iconName: "avatar", title: "ふつう", description: "やさしげなかめくん")
    ]
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.delegate = self
        tableview.dataSource = self
        
        configureTableViewCell()
        tableview.rowHeight = 100
    }
    
    //tableVieCellを読み込む関数
    func configureTableViewCell(){
        let nib = UINib(nibName: "kameTableViewCell", bundle: nil)
        //nibに設定したidentifer
        let cellID = "KameTableViewCell"
        
        tableview.register(nib, forCellReuseIdentifier: cellID)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infoLists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "KameTableViewCell", for: indexPath) as! kameTableViewCell
        
        cell.iconView.image = UIImage(named: infoLists[indexPath.row].iconName)
        
        cell.titleLabel.text = infoLists[indexPath.row].title
        
        cell.descriptionLabel.text = infoLists[indexPath.row].description
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didSelectRowAt:", indexPath)
        let vc = DetailViewController()
        vc.kameinfo = infoLists[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
        
    }
 
}

