//  Created by Jordan on 27/05/2019.


import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var selectedSoundFileName: String = ""
    var audioPlayer: AVAudioPlayer!
    var arrayAudio: Array = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        selectedSoundFileName = arrayAudio[sender.tag - 1]
        print(selectedSoundFileName)
        playSound()
    }
    
    
    func playSound() {
        let soundUrl = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        do {
             audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
    }
    
  

}

