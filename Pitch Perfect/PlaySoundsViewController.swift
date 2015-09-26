//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Student on 9/24/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    var audioPlayer: AVAudioPlayer!
    var receivedAudio:RecordedAudio!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        if let filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
//            let filePathUrl = NSURL.fileURLWithPath(filePath)
//            
//            
//        } else {   }
        
        audioPlayer = try? AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl)
        audioPlayer.enableRate = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSlow(sender: AnyObject) {
        //code to play audio slowly here....
        stopAudioPlayback()
        audioPlayer.rate = 0.5
        audioPlayer.play()
    }
    
    @IBAction func playFast(sender: AnyObject) {
        stopAudioPlayback()
        audioPlayer.rate = 1.5
        audioPlayer.play()

    }
    
    
    @IBAction func stopAudio(sender: AnyObject) {
        stopAudioPlayback()
        audioPlayer.currentTime = 0
    }
    
    func stopAudioPlayback() {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
    }

    

}
