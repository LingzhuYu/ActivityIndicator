//
//  ViewController.swift
//  ActivityIndicator2
//
//  Created by Lydia Yu on 2016-10-21.
//  Copyright © 2016 Lydia Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var stop: UIButton!
    @IBOutlet weak var ai: UIActivityIndicatorView!
    @IBOutlet weak var segment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeAi(_ sender: AnyObject) {
        if(sender.selectedSegmentIndex == 1){
            label.textColor = UIColor.white
            ai.hidesWhenStopped = false
            self.view.backgroundColor = UIColor.black
            ai.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.white
        }else if(sender.selectedSegmentIndex == 2){
            label.textColor = UIColor.white
            ai.hidesWhenStopped = false
            self.view.backgroundColor = UIColor.black
            ai.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.whiteLarge
        }else if(sender.selectedSegmentIndex == 3){
            label.textColor = UIColor.black
            ai.hidesWhenStopped = false
            self.view.backgroundColor = UIColor.white
            ai.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.whiteLarge
            ai.color = UIColor.blue
        }else if(sender.selectedSegmentIndex == 4){
            label.textColor = UIColor.black
            ai.hidesWhenStopped = false
            self.view.backgroundColor = UIColor.white
            ai.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.whiteLarge
            ai.color = UIColor.red
        }else if(sender.selectedSegmentIndex == 5){
            label.textColor = UIColor.black
            self.view.backgroundColor = UIColor.white
            ai.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.whiteLarge
            ai.color = UIColor.green
            ai.hidesWhenStopped = true
        }else{
            label.textColor = UIColor.black
            self.view.backgroundColor = UIColor.white
            ai.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
            ai.hidesWhenStopped = false
        }
    }
    @IBAction func startAi(_ sender: AnyObject) {
        ai.startAnimating()
    }

    @IBAction func stopAi(_ sender: AnyObject) {
        ai.stopAnimating()
    }
}

