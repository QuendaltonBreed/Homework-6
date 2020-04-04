//
//  ViewController.swift
//  Homework 6
//
//  Created by Brendan Reed on 4/4/20.
//  Copyright © 2020 Brendan Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mcVoteCounter: UILabel!
    
    @IBOutlet weak var hsVoteCounter: UILabel!
    
    @IBOutlet weak var haloVoteCounter: UILabel!
    
    @IBOutlet weak var winner: UILabel!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        // Declare labels in ViewController as the vote counters in Tabbarcontroller
        mcVoteCounter.text = String((parent as! TabbarViewController).minecraftVote)
        hsVoteCounter.text = String((parent as! TabbarViewController).hearthstoneVote)
        haloVoteCounter.text = String((parent as! TabbarViewController).haloVote)
        
        // Comparator statements for winner calculation
        // Compares Hearthstone against the other two results, and must fulfill both results to
        // be declared the winner. Do this again for Minecraft and Halo
        if (((parent as! TabbarViewController).hearthstoneVote > (parent as! TabbarViewController).haloVote) && ((parent as! TabbarViewController).hearthstoneVote > (parent as! TabbarViewController).minecraftVote))
        {
            winner.text = "Hearthstone"
        }
            
        else if (((parent as! TabbarViewController).haloVote > (parent as! TabbarViewController).hearthstoneVote) && ((parent as! TabbarViewController).haloVote > (parent as! TabbarViewController).minecraftVote))
        {
            winner.text = "Halo"
        }
        
        else if (((parent as! TabbarViewController).minecraftVote > (parent as! TabbarViewController).haloVote) && ((parent as! TabbarViewController).minecraftVote > (parent as! TabbarViewController).haloVote))
        {
            winner.text = "Minecraft"
        }
    
        // If none of the conditions have been fulfilled, there is a tie.
        else
        {
            winner.text = "Tie"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

