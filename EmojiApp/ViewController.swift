//
//  ViewController.swift
//  EmojiApp
//
//  Created by Irene Bajan on 2016-12-03.
//  Copyright © 2016 Irene Bajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var thatTableView: UITableView!
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        thatTableView.dataSource = self
        thatTableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! EmojiDefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😇"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "angel face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😡"
        emoji2.birthYear = 2011
        emoji2.category = "Smiley"
        emoji2.definition = "angry face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😎"
        emoji3.birthYear = 2009
        emoji3.category = "Smiley"
        emoji3.definition = "cool guy"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😻"
        emoji4.birthYear = 2007
        emoji4.category = "Animal"
        emoji4.definition = "happy kitten"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "👽"
        emoji5.birthYear = 2013
        emoji5.category = "Alien"
        emoji5.definition = "happy alien"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "💍"
        emoji6.birthYear = 2015
        emoji6.category = "Thing"
        emoji6.definition = "diamond ring"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
    }


}

