//
//  AudioPlayer.swift
//  Restart
//
//  Created by Tornelius Broadwater, Jr on 6/28/22.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Error Playing Sound")
        }
    }
}
 
