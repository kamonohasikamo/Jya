//
//  ViewController.swift
//  Jya
//
//  Created by suke on 2018/06/12.
//  Copyright © 2018年 suke. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    @IBOutlet weak var jankenLabel: UILabel!
    @IBOutlet weak var cHand: UIImageView!
    @IBOutlet weak var username: UITextField!
    override func viewDidLoad() {//アプリ実行時の処理を書く
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pGu(_ sender: UIButton) {
        jankenComputer(label:0)
    }
    
    @IBAction func pChoki(_ sender: UIButton) {
        jankenComputer(label:1)
    }
    @IBAction func pPa(_ sender: UIButton) {
        jankenComputer(label:2)
    }
    func jankenComputer(label player:Int){
        let comp = arc4random_uniform(3)
        var msg = ""
        switch comp {
        case 0:
            cHand.image = UIImage(named: "janken_gu.png")
            switch player{
            case 0:
                msg = "あいこ"
            case 1:
                msg = "あなたの負け"
            case 2:
                msg = "あなたの勝ち"
            default:
                break
            }
        case 1:
            cHand.image = UIImage(named: "janken_choki.png")
            switch player {
            case 0:
                msg = "あなたの勝ち"
            case 1:
                msg = "あいこ"
            case 2:
                msg = "あなたの負け"
            default:
                break
            }
        case 2:
            cHand.image = UIImage(named: "janken_pa.png")
            switch player{
            case 0:
                msg = "あなたの負け"
            case 1:
                msg = "あなたの勝ち"
            case 2:
                msg = "あいこ"
            default:
                break
            }
        default:
            break
        }
        jankenLabel.text = msg
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

