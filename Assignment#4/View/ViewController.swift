//
//  ViewController.swift
//  Assignment#4
//
//  Created by user230914 on 2/9/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var StoryLabel: UILabel!
    
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var Button1: UIButton!
    
    @IBOutlet weak var Button2: UIButton!
    
    @IBOutlet weak var Image: UIImageView!
    
    
    var promptlogic = PromptLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    func updateUI() {
        Image.image = UIImage(named: String(promptlogic.promptImage()))
        StoryLabel.text = promptlogic.promptText()
        Button1.setTitle(promptlogic.option1Text(), for: .normal)
        Button2.setTitle(promptlogic.option2Text(), for: .normal)
    }
    
    @IBAction func optionSelect(_ sender: UIButton) {
        promptlogic.nextPrompt(sel: sender.currentTitle!)
        updateUI()
    }
    
    
}
