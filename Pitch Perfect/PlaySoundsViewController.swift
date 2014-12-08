//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Anubhav Maity on 07/12/14.
//  Copyright (c) 2014 Anubhav Maity. All rights reserved.
//

import UIKit
import AVFoundation


class PlaySoundsViewController: UIViewController {

    var audioPlayer: AVAudioPlayer!
    var recievedAudio: RecordAudio!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3"){
//            var filePath_NSURL = NSURL.fileURLWithPath(filePath)
//            audioPlayer = AVAudioPlayer(contentsOfURL: filePath_NSURL, error: nil)
//            audioPlayer.enableRate = true
        }
        else{
            println("file path is empty")
        }
        
        audioPlayer = AVAudioPlayer(contentsOfURL: recievedAudio.filePathUrl, error: nil)
        audioPlayer.enableRate = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playWithRate(rateX:Float){
        audioPlayer.stop()
        audioPlayer.rate = rateX
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }
    
    @IBAction func playSoundFast(sender: AnyObject) {
        playWithRate(1.5)
    }
    
    @IBAction func playSlowSound(sender: AnyObject) {
        //play sound slowlyyy
        playWithRate(0.5)
    }

    @IBAction func stopSound(sender: AnyObject) {
        audioPlayer.stop()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
