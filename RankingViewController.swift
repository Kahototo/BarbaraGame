//
//  RankingViewController.swift
//  BarabaraGame
//
//  Created by 小西夏穂 on 2016/06/07.
//  Copyright © 2016年 小西夏穂. All rights reserved.
//

import UIKit

class RankingViewController: UIViewController {
    
    @IBOutlet var rankingLabel1: UILabel! //１位のスコアを表示するラベル
    @IBOutlet var rankingLabel2: UILabel! //２位のスコアを表示するラベル
    @IBOutlet var rankingLabel3: UILabel! //３位のスコアを表示するラベル
    
    let defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults() //スコアの保存をするための変数
    

    override func viewDidLoad() {
        super.viewDidLoad()
        rankingLabel1.text = String(defaults.integerForKey("score1")) //"score1"というキーの値を取得して表示
        rankingLabel2.text = String(defaults.integerForKey("score2")) //"score2"というキーの値を取得して表示
        rankingLabel3.text = String(defaults.integerForKey("score3")) //"score3"というキーの値を取得して表示
    }


    @IBAction func toTop() {
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    


  }

