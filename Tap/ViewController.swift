import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var endScene: UIButton!
    @IBOutlet weak var endTopLabel: UILabel!
    @IBOutlet weak var endBottomLabel: UILabel!
    @IBOutlet weak var startAgain: UIButton!
    @IBOutlet weak var startGameScene: UIButton!
    @IBOutlet weak var startGameSceneButton: UIButton!
    @IBOutlet weak var countTaps: UILabel!
    @IBOutlet weak var showTapsLabel: UIButton!
    
    var score = 0
    var taps = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startGameScene.hidden = false
        startGameSceneButton.hidden = false
        countTaps.hidden = true
        countTaps.text = "Taps: " + "\(taps)"
        showTapsLabel.hidden = true
        
        score = 0
        topLabel.text = "\(score)"
        bottomLabel.text = "\(score)"
        
        topLabel.transform = CGAffineTransformMakeRotation(3.14)
        endTopLabel.transform = CGAffineTransformMakeRotation(3.14)
        endScene.hidden = true
        endTopLabel.hidden = true
        endBottomLabel.hidden = true
        startAgain.hidden = true
        //timer = NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector: ("updateTimer"), userInfo: nil, repeats: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func startGameButtonPressed(sender: AnyObject) {
        startGameSceneButton.hidden = true
        countTaps.hidden = true
        startGameScene.hidden = true
        
    }
    
        
    @IBAction func endScenePressed(sender: AnyObject) {
    }
    
    @IBAction func startAgain(sender: AnyObject) {
        endScene.hidden = true
        showTapsLabel.hidden = true
        endTopLabel.hidden = true
        endBottomLabel.hidden = true
        startAgain.hidden = true
        score = 0
        topLabel.text = "\(score)"
        bottomLabel.text = "\(score)"
        taps = 0
        countTaps.text = "\(taps)"
        countTaps.hidden = true
    }
    
    func checkScore() {
        if score >= 10 {
            endScene.hidden = false
            showTapsLabel.hidden = false
            endTopLabel.hidden = false
            endBottomLabel.hidden = false
            startAgain.hidden = false
            endTopLabel.text = "Winner"
            endBottomLabel.text = "Loser"
        }
        else if score <= -10 {
            endScene.hidden = false
            showTapsLabel.hidden = false
            endTopLabel.hidden = false
            endBottomLabel.hidden = false
            startAgain.hidden = false
            endTopLabel.text = "Loser"
            endBottomLabel.text = "Winner"
        }
    }
    
    @IBAction func topButtonPressed(sender: AnyObject) {
        score++
        topLabel.text = "\(score)"
        bottomLabel.text = "\(score)"
        checkScore()
        taps++
        countTaps.text = "\(taps)"
        countTaps.hidden = true
    }
    
    @IBAction func bottomButtonPressed(sender: AnyObject) {
        score--
        topLabel.text = "\(score)"
        bottomLabel.text = "\(score)"
        checkScore()
        taps++
        countTaps.text = "\(taps)"
        countTaps.hidden = true
        
    }
    
    
    @IBAction func showTaps(sender: AnyObject) {
        countTaps.hidden = false
        
    }
    
    
    }

