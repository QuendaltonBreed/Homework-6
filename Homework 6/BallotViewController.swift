//
//  BallotViewController.swift
//  Homework 6
//
//  Created by Brendan Reed on 4/4/20.
//  Copyright © 2020 Brendan Reed. All rights reserved.
//

import UIKit

class BallotViewController: UIViewController {

    
    
    
    @IBAction func voteMinecraft(_ sender: Any) {
        (parent as! TabbarViewController).minecraftVote+=1
        
    
    }
    
    @IBAction func voteHearthstone(_ sender: Any) {
        
        (parent as! TabbarViewController).hearthstoneVote+=1
    }
    
    
    @IBAction func voteHalo(_ sender: Any) {
    (parent as! TabbarViewController).haloVote+=1
    
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
