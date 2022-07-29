//
//  ViewController.swift
//  WiseQuotesGenerator
//
//  Created by 김원기 on 2022/07/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다.", name: "벤다이크"),
        Quote(contents: "나는 나 자신을 빼 놓고는 모두 안다.", name: "비용"),
        Quote(contents: "편견이란 실효성이 없는 의견이다.", name: "암브로스 빌"),
        Quote(contents: "지금 공부 안하면 더울 때 더운데서 일하고, 추울 때 추운데서 일한다.", name: "박명수"),
        Quote(contents: "늦었다고 생각할 때가 진짜 늦었다.", name: "박명수")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func quoteGeneratorButton(_ sender: Any) {
        //랜덤으로 명언을 생성하기 위한 난수 생성
        let random = Int(arc4random_uniform(5)) // 0~4 사이의 난수를 생성
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}

