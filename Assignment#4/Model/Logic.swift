//
//  Logic.swift
//  Assignment#4
//
//  Created by user230914 on 2/10/23.
//
import Foundation

struct PromptLogic {
    
    var promptIndex = 0
    
    let prompts = [
            //0
            Prompt(
                text: "You wake up alone in the woods. You not sure how you got here, but you hear a noise in the distance.",
                option1: "Walk toward the noise", option1Result: 1,
                option2: "That can't be good. Walk the other way", option2Result: 2,
                image: 0
            ),
            //1
            Prompt(
                text: "You keep walking until you reach a tree in the middle of the forest. The tree looks kind of creepy, but it has some kind of fruit growing from it.",
                option1: "Eat the Fruit", option1Result: 3,
                option2: "Are you crazy. I'm not eating that. Keep walking", option2Result: 4,
                image: 1
            ),
            //2
            Prompt(
                text: "You keep walking until you reach a cliff. It's a pretty steep drop and you aren't so sure how stable the edge is, but you swear you see smoke in the distance.",
                option1: "Walk closer to the edge", option1Result: 5,
                option2: "Head further down and see if you can get a better view.", option2Result: 6,
                image: 2
            ),
            //3
            Prompt(
                text: "You eat the fruit and immediately regret it. The world starts to spin and the tree that once looked harmless suddenly looks much more sinister. The world goes dark.",
                option1: "Wake up", option1Result: 0,
                option2: "Wake up", option2Result: 0,
                image: 3
            ),
            //4
            Prompt(
                text: "You keep walking until you find a trail. Part of you celebrates, but you've decided that nothing is at it seems in this forest.",
                option1: "Take the trail.", option1Result: 7,
                option2: "Keep walking.", option2Result: 8,
                image: 4
            ),
            //5
            Prompt(
                text: "You fall. That wasn't a smart move. Right before you hit the ground you ......",
                option1: "Wake up", option1Result: 0,
                option2: "Wake up", option2Result: 0,
                image: 5
            ),
            //6
            Prompt(
                text: "You can see much better from your new spot. From here it looks like the smoke from a village. You find an old rope ladder that would get you down faster.",
                option1: "Try the rope ladder", option1Result: 5,
                option2: "Keep walking", option2Result: 4,
                image: 6
            ),
            //7
            Prompt(
                text: "You knew it was too good to be true. The trail led you straight to Bigfoot and he looks awfully happy to see you.",
                option1: "Run!!!!", option1Result: 9,
                option2: "Try talking to him", option2Result: 10,
                image: 7
            ),
            //8
            Prompt(
                text: "You keep walking and eventually find some old train tracks. They must lead somewhere",
                option1: "Follow the train tracks", option1Result: 11,
                option2: "Keep walking", option2Result: 12,
                image: 8
            ),
            //9
            Prompt(
                text: "You never even see the cliff and you fall. Right before you hit the ground you.......",
                option1: "Wake up", option1Result: 0,
                option2: "Wake up", option2Result: 0,
                image: 5
            ),
            //10
            Prompt(
                text: "He was happy to see you, but that's just because he was hungry.",
                option1: "You", option1Result: 0,
                option2: "Died", option2Result: 0,
                image: 10
            ),
            //11
            Prompt(
                text: "You found a village. Finally you are out of that forest. An innkeeper offers you a place to stay. After dinner you go to your room and immediately fall straight to sleep.",
                option1: "Wake up", option1Result: 0,
                option2: "Wake up", option2Result: 0,
                image: 11
            ),
            //12
            Prompt(
                text: "You walk and walk. You're pretty sure you're lost. You've passed the same rock 10 times. You sit down a minute and you fall asleep up against the rock.",
                option1: "Wake up", option1Result: 0,
                option2: "Wake up", option2Result: 0,
                image: 12
            ),
            
            
        ]

    
    mutating func nextPrompt(sel : String) {
        
        if sel == prompts[promptIndex].option1 {
            promptIndex = prompts[promptIndex].option1Result
        } else {
            promptIndex = prompts[promptIndex].option2Result
        }
    }
    
    func promptText() -> String {
        
        return prompts[promptIndex].text
    }
    func promptImage() -> Int{
        return prompts[promptIndex].image
    }
    func option1Text() -> String {
        return prompts[promptIndex].option1
    }
    
    func option2Text() -> String {
        return prompts[promptIndex].option2
    }
}
