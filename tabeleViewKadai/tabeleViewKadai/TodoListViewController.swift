//
//  ViewController.swift
//  tabeleViewKadai
//
//  Created by 葛西　佳祐 on 2020/06/08.
//  Copyright © 2020 葛西　佳祐. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    //アイテムの型
    class Item {
        var title : String
        var done: Bool = false
        
        init(title: String){
            self.title = title
        }
    }

    //この配列に作ったアイテムを追加していく
    var itemArray: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //あらかじめ3つアイテムを作っておく
        let item1: Item = Item(title: "宿題をする")
        let item2: Item = Item(title: "牛乳を買う")
        let item3: Item = Item(title: "手紙を書く")
        
        //配列に追加
        itemArray.append(item1)
        itemArray.append(item2)
        itemArray.append(item3)
        
        //MARK - セルの数を指定
        ovverride func (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell do {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            let item = itemArray[indexPath.row]
            cell.textLabel?.text = item.titlecell.accessoryType = item.done ? .checkmark : .none
            return cell
            
        }
        
        
    }


}

