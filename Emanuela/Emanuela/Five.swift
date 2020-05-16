//
//  Five.swift
//  Emanuela
//
//  Created by Mihail Gospodinov on 14/05/2020.
//  Copyright © 2020 Mihail Gospodinov. All rights reserved.
//
import AVKit
import UIKit

class Five: UIViewController {

    @IBOutlet weak var finalPlay: UIButton!
    
    @IBOutlet weak var numberOne: UILabel!
    
    @IBOutlet weak var sing: UILabel!
    
    @IBOutlet weak var numberTwo: UILabel!
    
    @IBOutlet weak var EmaResult: UITextField!
    
    @IBOutlet weak var truResult: UILabel!
    
    @IBOutlet weak var countTru: UILabel!
    
    @IBOutlet weak var countFalse: UILabel!
    
    @IBOutlet weak var proverka: UIButton!
    
    @IBOutlet weak var ok: UIImageView!
    
    @IBOutlet weak var no: UIImageView!
    
        var emaLabel = ""
        var emaNumber = ""
        var tillNumber: Int = 0
        var math: Int = 0
        var znak: Int = 0
        
        var nextView = UIViewController(nibName: "Five", bundle: nil)
        var currentView = UIViewController(nibName: "Six", bundle: nil)
        
        var dobarresult = 0
        var loshresult = 0
        var result = 0
        var random1 = 0
        var random2 = 0
        var random3 = 0
        
        var videoAV = AVPlayer()
        var videoPlayer = AVPlayerViewController()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            customizeButtonC(buttonName: finalPlay)
            customizeButtonC(buttonName: proverka)
            customizeLabel(labelName: sing)
            customizeLabel(labelName: numberOne)
            customizeLabel(labelName: numberTwo)
            customizeLabel(labelName: truResult)
            customizeLabel(labelName: countTru)
            customizeLabel(labelName: countFalse)
            cistomizeTextField(textFieldName: EmaResult)
            
            if emaNumber == "0 - 20" {
               
                finalPlay.setTitle(emaLabel + " " + "TILL 20", for: .normal)
                self.tillNumber = 20
            } else if emaNumber == "0 - 50" {
               
                finalPlay.setTitle(emaLabel + " " + "TILL 50", for: .normal)
                self.tillNumber = 50
            } else if emaNumber == "0 - 100" {
               
                finalPlay.setTitle(emaLabel + " " + "TILL 100", for: .normal)
                self.tillNumber = 100
            }
            
            if emaLabel == "ADD" {
                self.math = 1
            } else if emaLabel == "SUBSTRACT" {
                self.math = 2
            } else if emaLabel == "BOTH" {
                self.math = 3
            }
              
        }
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            EmaResult.resignFirstResponder()
        }
        
        
        func customizeButtonC(buttonName: UIButton) {
                        buttonName.layer.cornerRadius = 25
                        buttonName.layer.borderColor = UIColor.red.cgColor
                        buttonName.layer.borderWidth = 5
                        buttonName.layer.backgroundColor = UIColor.yellow.cgColor
                    }
        func customizeLabel(labelName: UILabel) {
                        labelName.layer.cornerRadius = 25
                        labelName.layer.borderColor = UIColor.yellow.cgColor
                        labelName.layer.borderWidth = 5
        }
        
        func cistomizeTextField(textFieldName: UITextField) {
            textFieldName.layer.cornerRadius = 25
            textFieldName.layer.borderColor = UIColor.yellow.cgColor
            textFieldName.layer.borderWidth = 5
            textFieldName.background = UIImage(named: "blue")
        }

    @IBAction func randomNumber(_ sender: Any) {
    
            truResult.text = String("0")
            EmaResult.text = nil
            
            UIView.animate(withDuration: 0.0) {
                                   self.ok.transform = CGAffineTransform(scaleX: 1, y: 1)
                               }
            UIView.animate(withDuration: 0.0) {
                                   self.no.transform = CGAffineTransform(scaleX: 1, y: 1)
                               }
            
            if math == 1 {
                sing.text = "+"
                sing.textColor = UIColor.red
            } else if math == 2 {
                sing.text = "-"
                sing.textColor = UIColor.red
            } else if math == 3 {
                 random3 = Int(arc4random_uniform(100) + 1)
                if random3 % 2 == 0 {
                    sing.text = "+"
                    sing.textColor = UIColor.red
                    self.znak = 1
                } else {
                    sing.text = "-"
                    sing.textColor = UIColor.red
                    self.znak = 2
                }
            }
            
            if tillNumber == 20 {
                random1 = Int(arc4random_uniform(20) + 1)
                random2 = Int(arc4random_uniform(20) + 1)
                if random1 >= random2 {
                    numberOne.text = String(random1)
                    numberTwo.text = String(random2)
                } else {
                    numberOne.text = String(random2)
                    numberTwo.text = String(random1)
                }
            } else if tillNumber == 50 {
                random1 = Int(arc4random_uniform(50) + 1)
                random2 = Int(arc4random_uniform(50) + 1)
                if random1 >= random2 {
                    numberOne.text = String(random1)
                    numberTwo.text = String(random2)
                } else {
                    numberOne.text = String(random2)
                    numberTwo.text = String(random1)
                }
            } else if tillNumber == 100 {
                random1 = Int(arc4random_uniform(100) + 1)
                random2 = Int(arc4random_uniform(100) + 1)
                if random1 >= random2 {
                    numberOne.text = String(random1)
                    numberTwo.text = String(random2)
                } else {
                    numberOne.text = String(random2)
                    numberTwo.text = String(random1)
                }
            }

        }
        
    @IBAction func proverkaResult(_ sender: Any) {
    
            let numberEma = Int(EmaResult.text!)
            if math == 1 {
                result = random1 + random2
            } else if math == 2 {
                if random1 >= random2 {
                    result = random1 - random2
                } else {
                    result = random2 - random1
                }
            } else if math == 3 {
                if znak == 1 {
                    result = random1 + random2
                } else {
                    if random1 >= random2 {
                        result = random1 - random2
                    } else {
                        result = random2 - random1
                    }
                }
            }
            
                    if result == numberEma
                    {
                        dobarresult += 1
                        UIView.animate(withDuration: 1.0) {
                            self.ok.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                        }
                        
                        if self.dobarresult == 5 {
                            
                            //this showed my video after one but not transfer to view
                            if let path = Bundle.main.path(forResource: "fiveOk", ofType: "mp4"){
                                       videoAV = AVPlayer(url: URL(fileURLWithPath: path))
                                       
                                       videoPlayer.player = videoAV
                                       
                                NotificationCenter.default.addObserver(self, selector: #selector(checkedSecond), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: videoPlayer.player?.currentItem)
                                       
                                       present(videoPlayer, animated: true, completion: {
                                           self.videoAV.play()
                                       })
                                       
                                   }
                            
                            
                        }
                        else if self.dobarresult == 10 {
                            //this showed second video i transfer to next view
                            if let path = Bundle.main.path(forResource: "ok", ofType: "mp4"){
                                                              videoAV = AVPlayer(url: URL(fileURLWithPath: path))
                                                              
                                                              videoPlayer.player = videoAV
                                                              
                                                       NotificationCenter.default.addObserver(self, selector: #selector(finish), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: videoPlayer.player?.currentItem)
                                                              
                                                              present(videoPlayer, animated: true, completion: {
                                                                  self.videoAV.play()
                                                              })
                                                              
                                                          }
                        }
                    }
                    else {
                        loshresult += 1
                        UIView.animate(withDuration: 1.0) {
                            self.no.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                        }
                        
                        if self.loshresult == 5 {
                            //this showed my video after one but not transfer to view
                            if let path = Bundle.main.path(forResource: "fiveNo", ofType: "mp4"){
                                       videoAV = AVPlayer(url: URL(fileURLWithPath: path))
                                       
                                       videoPlayer.player = videoAV
                                       
                                NotificationCenter.default.addObserver(self, selector: #selector(checkedSecond), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: videoPlayer.player?.currentItem)
                                       
                                       present(videoPlayer, animated: true, completion: {
                                           self.videoAV.play()
                                       })
                                       
                                   }
                        }
                        else if self.loshresult == 10 {
                            //this showed second video i transfer to next view
                            if let path = Bundle.main.path(forResource: "no", ofType: "mp4"){
                                                              videoAV = AVPlayer(url: URL(fileURLWithPath: path))
                                                              
                                                              videoPlayer.player = videoAV
                                                              
                                                       NotificationCenter.default.addObserver(self, selector: #selector(finish), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: videoPlayer.player?.currentItem)
                                                              
                                                              present(videoPlayer, animated: true, completion: {
                                                                  self.videoAV.play()
                                                              })
                                                              
                                                          }
                        }
                        
                    }
            
            countTru.text = String(dobarresult)
            countFalse.text = String(loshresult)
            truResult.text = String(result)
            
             
        }
        
        //this function sttoped video and showed to next viewcontroller
     @objc func finish(note:NSNotification) {
            self.dobarresult = 0
            self.loshresult = 0
            videoPlayer.dismiss(animated: true, completion: nil)
            performSegue(withIdentifier: "goToSix", sender: self)
            
        }
        
        @objc func checkedSecond(note:NSNotification) {
            videoPlayer.dismiss(animated: true, completion: nil)
        }
        
    }


    extension First: UITextFieldDelegate {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }
    }


