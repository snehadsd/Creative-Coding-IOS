//
//  ViewController.swift
//  EmojiTableHomework
//
//  Created by Sneha Deepika Dantuluri on 10/12/16.
//  Copyright © 2016 Sneha Deepika Dantuluri. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return smileysEmoji.count
            
        } else if section == 1 {
            return foodEmoji.count
        }
        else if section == 2 {
            return animalEmoji.count
        }
        else if section == 3 {
            return drinkEmoji.count
        }
        else if section == 4 {
            return self.peopleEmoji.count
        }
        else if section == 5{
            return self.natureEmoji.count
        }
        else if section == 6{
            return activityEmoji.count
        }
        else{
            return travelEmoji.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if indexPath.section == 0{
            let myCell = tableView.dequeueReusableCell(withIdentifier:"myCell1")
            myCell?.textLabel?.text = smileysEmoji[indexPath.row].0
            myCell?.detailTextLabel?.text = smileysEmoji[indexPath.row].1
            return myCell!
        }
        else if indexPath.section == 1{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell2")
            myCell?.textLabel?.text = foodEmoji[indexPath.row].0
            myCell?.detailTextLabel?.text = foodEmoji[indexPath.row].1
            return myCell!
            
            
        }
        else if indexPath.section == 2{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell3")
            myCell?.textLabel?.text = animalEmoji[indexPath.row].0
            myCell?.detailTextLabel?.text = animalEmoji[indexPath.row].1
            return myCell!
            
        }
        else if indexPath.section == 3{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell4")
            myCell?.textLabel?.text = drinkEmoji[indexPath.row].0
            myCell?.detailTextLabel?.text = drinkEmoji[indexPath.row].1
            return myCell!
            
        }
        else if indexPath.section == 4{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell5")
            myCell?.textLabel?.text = peopleEmoji[indexPath.row].0
            myCell?.detailTextLabel?.text = peopleEmoji[indexPath.row].1
            return myCell!
            
        }
        else if indexPath.section == 5{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell6")
            myCell?.textLabel?.text = natureEmoji[indexPath.row].0
            myCell?.detailTextLabel?.text = natureEmoji[indexPath.row].1
            return myCell!
            
        }
        else if indexPath.section == 6{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell7")
            myCell?.textLabel?.text = activityEmoji[indexPath.row].0
            myCell?.detailTextLabel?.text = activityEmoji[indexPath.row].1
            return myCell!
            
        }
        else{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell8")
            myCell?.textLabel?.text = travelEmoji[indexPath.row].0
            myCell?.detailTextLabel?.text = travelEmoji[indexPath.row].1
            return myCell!
            
        }


    }
    
    
    
    func  tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       
        let myCGFloat1 = CGFloat(50)
        if (indexPath.section == 7){
            let myCGFloat = CGFloat(100)
            return myCGFloat
        }
        
        else {
            return myCGFloat1
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        let myCGFloat = CGFloat(30)
        return myCGFloat

    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "SMILEYS"
        } else if section  == 1{
            return "FOOD"
            
        } else if section  == 2{
            return "CUTE ANIMALS"
        } else if section  == 3{
            return "DRINKS"
        }  else if section  == 4{
            return "PEOPLE"
        }  else if section == 5{
            return "NATURE"
        } else if section == 6 {
            return "ACTIVITY"
        }
            
        else{
            return "TRAVEL"
        }

    }
    
    let smileysEmoji = [("😀","Grinning Face"),("😁","grining face with smiley eyes"),("😂","face with tears of joy"),("😆","griining face with tightly closed eyes"),("😇","smiling face with halo")]
    
    let foodEmoji = [("🍎","apple"),("🍕","pizza"),("🍗","chicken"),("🍩","doughnut"),("🍪","cookie"),("🍫","chocolate")]
    
    let animalEmoji = [("🐯","tiger face"),("🐰","rabbit face"),("🐈","cat"),("🐱","cat face"),("🐴","horse head"),("🐥","standing chick")]
    
    let drinkEmoji = [("☕️","hot beverage"),("🍷","wine glass"),("🍸","cocktail glass"),("🍹","tropical drink"),("🍺","beer mug")]
    
    let peopleEmoji = [("👶🏻","baby"),("👦🏻","boy"),("👧🏼","girl"),("👩🏻","women"),("👪","family")]
    
    let natureEmoji = [("🌲","evergreen tree"),("🌷","tulip"),("🌹","rose"),("🌺","hibiscus"),("🌻","sunflower")]
    
    let activityEmoji = [("⚽️","soccer ball"),("⛳️","golf"),("🎹","musical keyboard"),("🎸","guitar"),("🎷","saxophone")]
    
    let travelEmoji = [("🚕","car"),("🚚","delivery truck"),("🚜","tractor"),("🚲","bicycle"),("✈️","aeroplane")]
}

