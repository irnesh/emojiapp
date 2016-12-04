//
//  EmojiDefinitionViewController.swift
//  EmojiApp
//
//  Created by Irene Bajan on 2016-12-03.
//  Copyright © 2016 Irene Bajan. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    var emoji = Emoji()
    
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       emojiLabel.text = emoji.stringEmoji
       birthYearLabel.text = "Origination Date: \(emoji.birthYear)"
       definitionLabel.text = emoji.definition
       categoryLabel.text = emoji.category
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   }
