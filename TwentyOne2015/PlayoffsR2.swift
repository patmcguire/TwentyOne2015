//
//  PlayoffsR2.swift
//  TwentyOne2015
//
//  Created by Pat McGuire on 3/2/15.
//  Copyright (c) 2015 brilliant. All rights reserved.
//

import Foundation
import UIKit

class PlayoffsR2: UIViewController {
    
    var r1PlayoffRecord: [Int] = []
    var r2PlayoffRecord: [Int] = []
    var teamRankArray: [String] = []
    var teamNameArray: [String] = ["","","","","","","",""]
    var teamsLeftArray: [String] = []
    
    var team1 = ""
    var team2 = ""
    var team3 = ""
    var team4 = ""
    var team5 = ""
    var team6 = ""
    var team7 = ""
    var team8 = ""
    
    var admin = false
    
    
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var team1Btn: UIButton!
    @IBOutlet weak var team2Btn: UIButton!
    @IBOutlet weak var team3Btn: UIButton!
    @IBOutlet weak var team4Btn: UIButton!
    @IBOutlet weak var team5Btn: UIButton!
    @IBOutlet weak var team6Btn: UIButton!
    @IBOutlet weak var team7Btn: UIButton!
    @IBOutlet weak var team8Btn: UIButton!
    
    @IBAction func team1BtnTap(sender: AnyObject) {
        if admin == true{
            team2Btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
            team1Btn.selected = true
            team2Btn.selected = false
            
            var query = PFQuery(className: "Team")
            query.whereKey("teamName", equalTo: team1)
            var team = query.getFirstObject()
            var playoffRecord: [Int] = team["PlayoffArray"] as Array!
            
            playoffRecord[1] = 1
            
            team["PlayoffArray"] = playoffRecord
            
            team.save()
            
            
            var query2 = PFQuery(className: "Team")
            query2.whereKey("teamName", equalTo: team2)
            var teamTwo = query2.getFirstObject()
            var playoffRecord2: [Int] = teamTwo["PlayoffArray"] as Array!
            
            playoffRecord2[1] = 0
            
            teamTwo["PlayoffArray"] = playoffRecord2
            
            teamTwo.save()
            
        }
    }
    
    @IBAction func team2BtnTap(sender: AnyObject) {
        if admin == true{
            team1Btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
            team2Btn.selected = true
            team1Btn.selected = false
            
            var query = PFQuery(className: "Team")
            query.whereKey("teamName", equalTo: team2)
            var team = query.getFirstObject()
            var playoffRecord: [Int] = team["PlayoffArray"] as Array!
            
            playoffRecord[1] = 1
            
            team["PlayoffArray"] = playoffRecord
            
            team.save()
            
            
            var query2 = PFQuery(className: "Team")
            query2.whereKey("teamName", equalTo: team1)
            var teamTwo = query2.getFirstObject()
            var playoffRecord2: [Int] = teamTwo["PlayoffArray"] as Array!
            
            playoffRecord2[1] = 0
            
            teamTwo["PlayoffArray"] = playoffRecord2
            
            teamTwo.save()
        }
    }
    
    @IBAction func team3BtnTap(sender: AnyObject) {
        if admin == true{
            team4Btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
            team3Btn.selected = true
            team4Btn.selected = false
            
            var query = PFQuery(className: "Team")
            query.whereKey("teamName", equalTo: team3)
            var team = query.getFirstObject()
            var playoffRecord: [Int] = team["PlayoffArray"] as Array!
            
            playoffRecord[1] = 1
            
            team["PlayoffArray"] = playoffRecord
            
            team.save()
            
            
            var query2 = PFQuery(className: "Team")
            query2.whereKey("teamName", equalTo: team4)
            var teamTwo = query2.getFirstObject()
            var playoffRecord2: [Int] = teamTwo["PlayoffArray"] as Array!
            
            playoffRecord2[1] = 0
            
            teamTwo["PlayoffArray"] = playoffRecord2
            
            teamTwo.save()
        }
    }
    
    @IBAction func team4BtnTap(sender: AnyObject) {
        if admin == true{
            team3Btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
            team4Btn.selected = true
            team3Btn.selected = false
            
            var query = PFQuery(className: "Team")
            query.whereKey("teamName", equalTo: team4)
            var team = query.getFirstObject()
            var playoffRecord: [Int] = team["PlayoffArray"] as Array!
            
            playoffRecord[1] = 1
            
            team["PlayoffArray"] = playoffRecord
            
            team.save()
            
            
            var query2 = PFQuery(className: "Team")
            query2.whereKey("teamName", equalTo: team3)
            var teamTwo = query2.getFirstObject()
            var playoffRecord2: [Int] = teamTwo["PlayoffArray"] as Array!
            
            playoffRecord2[1] = 0
            
            teamTwo["PlayoffArray"] = playoffRecord2
            
            teamTwo.save()
        }
    }
    
    @IBAction func team5BtnTap(sender: AnyObject) {
        if admin == true{
            team6Btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
            team5Btn.selected = true
            team6Btn.selected = false
            
            var query = PFQuery(className: "Team")
            query.whereKey("teamName", equalTo: team5)
            var team = query.getFirstObject()
            var playoffRecord: [Int] = team["PlayoffArray"] as Array!
            
            playoffRecord[1] = 1
            
            team["PlayoffArray"] = playoffRecord
            
            team.save()
            
            
            var query2 = PFQuery(className: "Team")
            query2.whereKey("teamName", equalTo: team6)
            var teamTwo = query2.getFirstObject()
            var playoffRecord2: [Int] = teamTwo["PlayoffArray"] as Array!
            
            playoffRecord2[1] = 0
            
            teamTwo["PlayoffArray"] = playoffRecord2
            
            teamTwo.save()
        }

    }
    
    @IBAction func team6BtnTap(sender: AnyObject) {
        if admin == true{
            team5Btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
            team6Btn.selected = true
            team5Btn.selected = false
            
            var query = PFQuery(className: "Team")
            query.whereKey("teamName", equalTo: team6)
            var team = query.getFirstObject()
            var playoffRecord: [Int] = team["PlayoffArray"] as Array!
            
            playoffRecord[1] = 1
            
            team["PlayoffArray"] = playoffRecord
            
            team.save()
            
            
            var query2 = PFQuery(className: "Team")
            query2.whereKey("teamName", equalTo: team5)
            var teamTwo = query2.getFirstObject()
            var playoffRecord2: [Int] = teamTwo["PlayoffArray"] as Array!
            
            playoffRecord2[1] = 0
            
            teamTwo["PlayoffArray"] = playoffRecord2
            
            teamTwo.save()
        }
    }
    
    @IBAction func team7BtnTap(sender: AnyObject) {
        if admin == true{
            team8Btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
            team7Btn.selected = true
            team8Btn.selected = false
            
            var query = PFQuery(className: "Team")
            query.whereKey("teamName", equalTo: team7)
            var team = query.getFirstObject()
            var playoffRecord: [Int] = team["PlayoffArray"] as Array!
            
            playoffRecord[1] = 1
            
            team["PlayoffArray"] = playoffRecord
            
            team.save()
            
            
            var query2 = PFQuery(className: "Team")
            query2.whereKey("teamName", equalTo: team8)
            var teamTwo = query2.getFirstObject()
            var playoffRecord2: [Int] = teamTwo["PlayoffArray"] as Array!
            
            playoffRecord2[1] = 0
            
            teamTwo["PlayoffArray"] = playoffRecord2
            
            teamTwo.save()
        }

    }

    @IBAction func team8BtnTap(sender: AnyObject) {
        if admin == true{
            team7Btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
            team8Btn.selected = true
            team7Btn.selected = false
            
            var query = PFQuery(className: "Team")
            query.whereKey("teamName", equalTo: team8)
            var team = query.getFirstObject()
            var playoffRecord: [Int] = team["PlayoffArray"] as Array!
            
            playoffRecord[1] = 1
            
            team["PlayoffArray"] = playoffRecord
            
            team.save()
            
            
            var query2 = PFQuery(className: "Team")
            query2.whereKey("teamName", equalTo: team7)
            var teamTwo = query2.getFirstObject()
            var playoffRecord2: [Int] = teamTwo["PlayoffArray"] as Array!
            
            playoffRecord2[1] = 0
            
            teamTwo["PlayoffArray"] = playoffRecord2
            
            teamTwo.save()
        }

    }
    
    
    
    override func viewDidLoad() {
        activityIndicator.startAnimating()
        team1Btn.setTitle("", forState: .Normal)
        team2Btn.setTitle("", forState: .Normal)
        team3Btn.setTitle("", forState: .Normal)
        team4Btn.setTitle("", forState: .Normal)
        team5Btn.setTitle("", forState: .Normal)
        team6Btn.setTitle("", forState: .Normal)
        team7Btn.setTitle("", forState: .Normal)
        team8Btn.setTitle("", forState: .Normal)
    }
    
    override func viewDidAppear(animated: Bool) {
        //Get playoff records and set matchups
        
//        for i in 0...15{
//            var query = PFQuery(className: "Team")
//            query.whereKey("teamName", equalTo: teamRankArray[i])
//            var team = query.getFirstObject()
//            
//            var playoffRec: [Int] = team["PlayoffArray"] as Array!
//            
//            if playoffRec[1] == 1{
//                teamsLeftArray.append(team["teamName"] as String!)
//                teamLeftRankArray.append(team["rank"] as Int!)
//            }
//            r2PlayoffRecord.append(playoffRec[2])
//            
//        }
        
        for i in 0...15{
            var query = PFQuery(className: "Team")
            query.whereKey("teamName", equalTo: teamRankArray[i])
            var team = query.getFirstObject()
            
            var playoffRec: [Int] = team["PlayoffArray"] as Array!
            r1PlayoffRecord.append(playoffRec[0])
        }
        
        if r1PlayoffRecord[0] == 1 {
            team1Btn.setTitle("#1 \(teamRankArray[0])", forState: .Normal)
            team1 = teamRankArray[0]
            teamNameArray[0] = teamRankArray[0]
        }else{
            team1Btn.setTitle("#16 \(teamRankArray[15])", forState: .Normal)
            team1 = teamRankArray[15]
            teamNameArray[0] = teamRankArray[15]
        }
        if r1PlayoffRecord[7] == 1 {
            team2Btn.setTitle("#8 \(teamRankArray[7])", forState: .Normal)
            team2 = teamRankArray[7]
            teamNameArray[1] = teamRankArray[7]
        }else{
            team2Btn.setTitle("#9 \(teamRankArray[8])", forState: .Normal)
            team2 = teamRankArray[8]
            teamNameArray[1] = teamRankArray[8]
        }
        if r1PlayoffRecord[3] == 1 {
            team3Btn.setTitle("#4 \(teamRankArray[3])", forState: .Normal)
            team3 = teamRankArray[3]
            teamNameArray[2] = teamRankArray[3]
        }else{
            team3Btn.setTitle("#13 \(teamRankArray[12])", forState: .Normal)
            team3 = teamRankArray[12]
            teamNameArray[2] = teamRankArray[3]
        }
        if r1PlayoffRecord[4] == 1 {
            team4Btn.setTitle("#5 \(teamRankArray[4])", forState: .Normal)
            team4 = teamRankArray[4]
            teamNameArray[3] = teamRankArray[4]
        }else{
            team4Btn.setTitle("#12 \(teamRankArray[11])", forState: .Normal)
            team4 = teamRankArray[11]
            teamNameArray[3] = teamRankArray[11]
        }
        if r1PlayoffRecord[1] == 1 {
            team5Btn.setTitle("#2 \(teamRankArray[1])", forState: .Normal)
            team5 = teamRankArray[1]
            teamNameArray[4] = teamRankArray[1]
        }else{
            team5Btn.setTitle("#15 \(teamRankArray[14])", forState: .Normal)
            team5 = teamRankArray[14]
            teamNameArray[4] = teamRankArray[14]
        }
        if r1PlayoffRecord[6] == 1 {
            team6Btn.setTitle("#7 \(teamRankArray[6])", forState: .Normal)
            team6 = teamRankArray[6]
            teamNameArray[5] = teamRankArray[6]
        }else{
            team6Btn.setTitle("#10 \(teamRankArray[9])", forState: .Normal)
            team6 = teamRankArray[9]
            teamNameArray[5] = teamRankArray[9]
        }
        if r1PlayoffRecord[2] == 1 {
            team7Btn.setTitle("#3 \(teamRankArray[2])", forState: .Normal)
            team7 = teamRankArray[2]
            teamNameArray[6] = teamRankArray[2]
        }else{
            team7Btn.setTitle("#14 \(teamRankArray[13])", forState: .Normal)
            team7 = teamRankArray[13]
            teamNameArray[6] = teamRankArray[13]
        }
        if r1PlayoffRecord[5] == 1 {
            team8Btn.setTitle("#6 \(teamRankArray[5])", forState: .Normal)
            team8 = teamRankArray[5]
            teamNameArray[7] = teamRankArray[5]
        }else{
            team8Btn.setTitle("#11 \(teamRankArray[10])", forState: .Normal)
            team8 = teamRankArray[10]
            teamNameArray[7] = teamRankArray[10]
        }
        
        
        for i in 0...7{
            var secondRoundQuery = PFQuery(className: "Team")
            secondRoundQuery.whereKey("teamName", equalTo: teamNameArray[i])
            var team = secondRoundQuery.getFirstObject()
            var r2PlayoffRec: [Int] = team["PlayoffArray"] as Array!
            r2PlayoffRecord.append(r2PlayoffRec[1])
        }
        
        
        if r2PlayoffRecord[0] == 1{
            team2Btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
            team1Btn.selected = true
            team2Btn.selected = false
        }else if r2PlayoffRecord[1] == 1{
            team1Btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
            team2Btn.selected = true
            team1Btn.selected = false
        }
        if r2PlayoffRecord[2] == 1{
            team4Btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
            team3Btn.selected = true
            team4Btn.selected = false
        }else if r2PlayoffRecord[3] == 1{
            team3Btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
            team4Btn.selected = true
            team3Btn.selected = false
        }
        if r2PlayoffRecord[4] == 1{
            team6Btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
            team5Btn.selected = true
            team6Btn.selected = false
        }else if r2PlayoffRecord[5] == 1{
            team5Btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
            team6Btn.selected = true
            team5Btn.selected = false
        }
        if r2PlayoffRecord[6] == 1{
            team8Btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
            team7Btn.selected = true
            team8Btn.selected = false
        }else if r2PlayoffRecord[7] == 1{
            team7Btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
            team8Btn.selected = true
            team7Btn.selected = false
        }
        
        
        activityIndicator.stopAnimating()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToR3"
        {
            if let destinationVC = segue.destinationViewController as? PlayoffsR3{
                destinationVC.teamRankArray = teamRankArray
                destinationVC.admin = admin
            }
        }
        
    }
    
  
}
