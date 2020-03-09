//
//  ViewController.swift
//  NanoChallange
//
//  Created by Dorojatun Kuncoro Yekti Raharjo on 04/03/20.
//  Copyright © 2020 Dorojatun Kuncoro Yekti Raharjo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ViewQuestion: UIView!
    @IBOutlet weak var GreenScore: UILabel!
    @IBOutlet weak var RedScore: UILabel!
    @IBOutlet weak var YellowScore: UILabel!
    @IBOutlet weak var PurpleScore: UILabel!
    @IBOutlet weak var TimerGo: UILabel!
    @IBOutlet weak var GoButton: UIButton!
    @IBOutlet weak var NameTag: UILabel!
    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var DoneButton: UIButton!
    @IBOutlet weak var RulesImage: UIImageView!
    @IBOutlet weak var NameImage: UIImageView!
    @IBOutlet weak var Name1: UITextField!
    @IBOutlet weak var Name2: UITextField!
    @IBOutlet weak var Name3: UITextField!
    @IBOutlet weak var Name4: UITextField!
    @IBOutlet weak var green: UILabel!
    @IBOutlet weak var red: UILabel!
    @IBOutlet weak var yellow: UILabel!
    @IBOutlet weak var purple: UILabel!
    @IBOutlet weak var Done2Button: UIButton!
    
//image
    @IBOutlet weak var green2: UIImageView!
    @IBOutlet weak var green4: UIImageView!
    @IBOutlet weak var green3: UIImageView!
    @IBOutlet weak var green1: UIImageView!
    
    @IBOutlet weak var red3: UIImageView!
    @IBOutlet weak var red4: UIImageView!
    @IBOutlet weak var red1: UIImageView!
    @IBOutlet weak var red2: UIImageView!
    
    @IBOutlet weak var yellow4: UIImageView!
    @IBOutlet weak var yellow3: UIImageView!
    @IBOutlet weak var yellow2: UIImageView!
    @IBOutlet weak var yellow1: UIImageView!
    
    @IBOutlet weak var purple4: UIImageView!
    @IBOutlet weak var purple1: UIImageView!
    @IBOutlet weak var purple3: UIImageView!
    @IBOutlet weak var purple2: UIImageView!
    
    @IBOutlet weak var StartAgain: UIButton!
    var greenname = ""
    var redname = ""
    var yellowname = ""
    var purplename = ""
    var seconds = 5
    var timer = Timer()
    var scoregreen = 0
    var scorered = 0
    var scoreyellow = 0
    var scorepurple = 0
    var names : [String] = []
    var question = ["Siapa yang suka begadang?","Siapa yang suka bermain bola?","Siapa yang pendiam ?","Siapa yang suka makan Coklat?"]
    var no = 0
    var noq = 0
             
    override func viewDidLoad() {
        super.viewDidLoad()
        Question.text = "Question ?"
        ViewQuestion.isHidden = true
        NameImage.isHidden = true
        Name1.isHidden = true
        Name2.isHidden = true
        Name3.isHidden = true
        Name4.isHidden = true
        RulesImage.isHidden = false
        Done2Button.isHidden = true
        DoneButton.isHidden = false
        green.isHidden = true
        red.isHidden = true
        yellow.isHidden = true
        purple.isHidden = true
        green1.isHidden = true
        green2.isHidden = true
        green3.isHidden = true
        green4.isHidden = true
        
        red1.isHidden = true
        red2.isHidden = true
        red3.isHidden = true
        red4.isHidden = true
        
        yellow1.isHidden = true
        yellow2.isHidden = true
        yellow3.isHidden = true
        yellow4.isHidden = true
        
        purple1.isHidden = true
        purple2.isHidden = true
        purple3.isHidden = true
        purple4.isHidden = true
        
        GreenScore.isHidden = true
        RedScore.isHidden = true
        YellowScore.isHidden = true
        PurpleScore.isHidden = true
        
        StartAgain.isHidden = true
        // Do any additional setup after loading the view.
    }
    @IBAction func Done(_ sender: Any) {
        RulesImage.isHidden = true
        NameImage.isHidden = false
        Name1.isHidden = false
        Name2.isHidden = false
        Name3.isHidden = false
        Name4.isHidden = false
        DoneButton.isHidden = true
        Done2Button.isHidden = false
        
        
    }
    @IBAction func Done2(_ sender: Any) {
        ViewQuestion.isHidden = false
            NameImage.isHidden = true
               Name1.isHidden = true
               Name2.isHidden = true
               Name3.isHidden = true
                Name4.isHidden = true
        Done2Button.isHidden = true
        
               
        greenname = Name1.text ?? "";
        redname = Name2.text ?? "";
        yellowname = Name3.text ?? "";
        purplename = Name4.text ?? "";
        
        green.text = greenname
        red.text = redname
        yellow.text = yellowname
        purple.text = purplename
        
        green.isHidden = false
               red.isHidden = false
               yellow.isHidden = false
               purple.isHidden = false
        
        names = [ greenname,redname,yellowname,purplename]
        
        
    }
    
    @IBAction func GreenButton(_ sender: Any) {
        
        scoregreen = scoregreen + 1
      //  GreenScore.text = "\(scoregreen)"
       
    }
    @IBAction func RedButton(_ sender: Any) {
        scorered = scorered + 1
      //  RedScore.text = "\(scorered)"
    }
    @IBAction func YellowButton(_ sender: Any) {
        scoreyellow = scoreyellow + 1
       // YellowScore.text = "\(scoreyellow)"
    }
    @IBAction func PurpleButton(_ sender: Any) {
        scorepurple = scorepurple + 1
       //PurpleScore.text = "\(scorepurple)"
    }
    @IBAction func GoTimer(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.counter), userInfo: nil, repeats: true)
        GoButton.isHidden = true
        
    
        
    }
    
    @IBAction func RepeatStart(_ sender: Any) {
        scoregreen = 0
        scorered = 0
        scoreyellow = 0
        scorepurple = 0
        GoButton.isHidden = false
        StartAgain.isHidden = true
        TimerGo.isHidden = false
        NameTag.isHidden = false
        
        green1.isHidden = true
        green2.isHidden = true
        green3.isHidden = true
        green4.isHidden = true
        
        red1.isHidden = true
        red2.isHidden = true
        red3.isHidden = true
        red4.isHidden = true
        
        yellow1.isHidden = true
        yellow2.isHidden = true
        yellow3.isHidden = true
        yellow4.isHidden = true
        
        purple1.isHidden = true
        purple2.isHidden = true
        purple3.isHidden = true
        purple4.isHidden = true
       
        
    }
    
    @objc func counter()  {
        seconds -= 1
        TimerGo.text = String(seconds)
        
        
        if (seconds == 0)
        {
            timer.invalidate()
            GoButton.isHidden = false
            TimerGo.isHidden = false
            seconds = 5
            TimerGo.text = String(seconds)
           
            //NameTag.text = names[no]
            NameTag.textColor = #colorLiteral(red: 0.9607843137, green: 0.5529411765, blue: 0.7137254902, alpha: 1)
            no = no + 1
            GreenScore.text = "\(scoregreen)"
            RedScore.text = "\(scorered)"
            YellowScore.text = "\(scoreyellow)"
            PurpleScore.text = "\(scorepurple)"
            
            GreenScore.isHidden = false
            RedScore.isHidden = false
            YellowScore.isHidden = false
            PurpleScore.isHidden = false
            
            
            if ( no >= names.count )
            {
                no = 0
                noq = noq + 1
                StartAgain.isHidden = false
                TimerGo.isHidden = true
                GoButton.isHidden = true
                NameTag.isHidden = true
                
                //score GREEN
                if scoregreen == 1
                {
                    green1.isHidden = false
                }
                
                else if scoregreen == 2
                {
                    green2.isHidden = false
                }
               else if scoregreen == 3
               {
                   green3.isHidden = false
               }else if scoregreen == 4
               {
                   green4.isHidden = false
               }
                
               //SCORE RED
                if scorered == 1
                 {
                     red1.isHidden = false
                 }
                 
                 else if scorered == 2
                 {
                     red2.isHidden = false
                 }
                else if scorered == 3
                {
                    red3.isHidden = false
                }else if scorered >= 4
                {
                    red4.isHidden = false
                }
                
                //SCORE YELLOW
                               if scoreyellow == 1
                                {
                                    yellow1.isHidden = false
                                }
                                
                                else if scoreyellow == 2
                                {
                                    yellow2.isHidden = false
                                }
                               else if scoreyellow == 3
                               {
                                   yellow3.isHidden = false
                               }else if scoreyellow >= 4
                               {
                                   yellow4.isHidden = false
                               }
                //SCORE PURPLE
                               if scorepurple == 1
                                {
                                    purple1.isHidden = false
                                }
                                
                                else if scorepurple == 2
                                {
                                    purple2.isHidden = false
                                }
                               else if scorered == 3
                               {
                                   purple3.isHidden = false
                               }else if scorepurple >= 4
                               {
                                   purple4.isHidden = false
                               }
    
                if(noq >= question.count)
                {
                    noq = 0
                }
                Question.text = question[noq]
            }
            NameTag.text = names[no]
            
            
            }
        
        }
}

