//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Student on 9/10/15.
//  Copyright (c) 2015 Charles Findlay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func recordAudio(sender: UIButton) {
        recordingInProgress.hidden = false
        stopButton.hidden =  false
        //TODO: record audio
    }
    
    
    
    @IBAction func stopAudio(sender: UIButton) {
        recordingInProgress.hidden = true
        stopButton.hidden = true
    }
}

