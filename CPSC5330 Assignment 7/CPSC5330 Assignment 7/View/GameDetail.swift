//
//  GameDetail.swift
//  CPSC5330 Assignment 7
//
//  Created by Christian Polka on 7/6/24.
//

import UIKit

class GameDetail: UIViewController {

    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    var gameName = ""
    var gameDetail = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameLabel.text = gameName
        detailLabel.text = gameDetail

        // Do any additional setup after loading the view.
    }
    
    @IBAction func returnButton(_ sender: UIButton) {
        dismiss(animated: true)
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
