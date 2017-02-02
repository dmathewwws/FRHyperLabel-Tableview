//
//  ViewController.swift
//  FRHyperLabel-Tableview
//
//  Created by Daniel Mathews on 2017-02-01.
//  Copyright © 2017 Daniel Mathews. All rights reserved.
//

import UIKit
import FRHyperLabel

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    let handler = {
        (hyperLabel: FRHyperLabel?, substring: String?) -> Void in
        
        print("clicked link is \(substring)")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        
        let text = "Person X has started following you"
        let attributes = [NSForegroundColorAttributeName: UIColor.black]
        
        cell.label.attributedText = NSAttributedString(string: text, attributes: attributes)
        
        cell.label.setLinkForSubstring("Person X", withLinkHandler: handler)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell is selected")
    }


}

