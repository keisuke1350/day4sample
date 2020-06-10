//
//  DetailViewController.swift
//  tableview
//
//  Created by 葛西　佳祐 on 2020/06/06.
//  Copyright © 2020 葛西　佳祐. All rights reserved.
//
import UIKit
class DetailViewController: UIViewController {

    @IBOutlet weak var DetailImage: UIImageView!
    @IBOutlet weak var DetailTitle: UILabel!
    @IBOutlet weak var DetailDesc: UILabel!
    
    var kameinfo: KameInfo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        guard let kameInfo = kameinfo else { return }
        
        DetailImage.image = UIImage(named: kameInfo.iconName)
        DetailTitle.text = kameInfo.title
        DetailDesc.text = kameInfo.description
        
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
