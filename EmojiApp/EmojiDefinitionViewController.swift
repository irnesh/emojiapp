//
//  EmojiDefinitionViewController.swift
//  EmojiApp
//
//  Created by Irene Bajan on 2016-12-03.
//  Copyright © 2016 Irene Bajan. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    var emoji = "NO EMOJI"
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😇" {
        
        definitionLabel.text = "Angel Face"
        
        }
        
        if emoji == "😡" {
            
            definitionLabel.text = "Angry Guy"
            
        }
        
        if emoji == "😎" {
            
            definitionLabel.text = "Cool Guy"
            
        }
        
        if emoji == "😻" {
            
            definitionLabel.text = "Happy Kitten"
            
        }
        
        if emoji == "👽" {
            
            definitionLabel.text = "Happy Alien"
            
        }
        
        if emoji == "💍" {
            
            definitionLabel.text = "Diamond Ring"
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   }
