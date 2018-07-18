//
//  FirstTableViewController.swift
//  TrySectionsandCells
//
//  Created by Sayed Abdo on 7/9/18.
//  Copyright © 2018 JETS. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
var arrayofPosts:[Posts] = [Posts]()
var arrayofComments:[Comments] = [Comments]()
var arrayofUsers:[Users] = [Users]()
    override func viewDidLoad() {
    super.viewDidLoad()
    }
 
override func viewWillAppear(_ animated: Bool) {
        WebService.getPosts(url: URLs.URLPosts) { (err:Error?, res:Any) in
            if err == nil {
                let array = res as! Array<Any>
                self.arrayofPosts = array as! Array<Posts>
                self.tableView.reloadData()
                print("countPost\(self.arrayofPosts.count)")
            }
            else{
                print("Error To Connect")
            }
        }
        WebService.getComments(url: URLs.URLComments) { (err:Error?, res:Any) in
           
            
            if err == nil {
                let array = res as! Array<Any>
                self.arrayofComments = array as! Array<Comments>
                self.tableView.reloadData()
                print("countComment\(self.arrayofComments.count)")
            }
            else{
                print("Error To Connect")
            }
        }
        WebService.getUsers(url: URLs.URLUsers) { (err:Error?,res:Any) in
            
            if err == nil {
                let array = res as! Array<Any>
                self.arrayofUsers = array as! Array<Users>
                self.tableView.reloadData()
                print("countUSer\(self.arrayofUsers.count)")
            }
            else{
                print("Error To Connect")
            }
        }
        
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.00001
    }



    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return arrayofPosts.count + 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        var num:Int?
        switch section {
        case 0:
            num = 2
        default:
            num = 9
        }
        return num!
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
            
        case 0:
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "TopCell", for: indexPath)
                    as! CustomTopCell;
                
                cell.drawCell();
                
                return cell;
            } else {
                
                let cell2 = tableView.dequeueReusableCell(withIdentifier: "SecondCell", for: indexPath)
                    as! SecondCustomCell;
                
                return cell2;
            }
        default :
            if  arrayofPosts.count != 0 && arrayofPosts.count != 0 &&
                arrayofComments.count != 0{
            switch indexPath.row{
                
            case 0 :
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "firstC", for: indexPath) as! FirstCustomTableViewCell
                cell.userImage.image = UIImage(named:"two.png")
                cell.userName.text =
                arrayofUsers[(indexPath.section)-1].userName
                cell.ago.text = "1 month ago"
                return cell
            case 1 :
                let cell = tableView.dequeueReusableCell(withIdentifier: "secoundC", for: indexPath) as! SecoundCustomTableViewCell
                cell.textPost.text = arrayofPosts[(indexPath.section)-1].postBody
                
                return cell
            case 2 :
                let cell = tableView.dequeueReusableCell(withIdentifier: "thirdC", for: indexPath) as! ThirdCustomTableViewCell
                cell.imagePost.image = UIImage(named:"ffPost.jpg")
                return cell
            case 3 :
                let cell = tableView.dequeueReusableCell(withIdentifier: "fourthC", for: indexPath) as!
                FourthCustomTableViewCell
                cell.countLike.text = "10"
                cell.commentCount.text = "5"
                return cell
                
            case 4 :
            
                let cell = tableView.dequeueReusableCell(withIdentifier: "fiveC", for: indexPath) as!
                FifithCustomTableViewCell
                cell.imgComment.image = UIImage(named:"user1.png")
        
                cell.userNameofComment.text =  arrayofUsers[(indexPath.section)-1].userName
            
                cell.TextOfcomment.text = arrayofComments[(indexPath.section)-1].commentBody
         
            return cell
            default:
               
                let cell = tableView.dequeueReusableCell(withIdentifier: "fiveC", for: indexPath) as!
                FifithCustomTableViewCell
                cell.imgComment.image = UIImage(named:"user1.png")
                cell.userNameofComment.text = arrayofUsers[(indexPath.row)-4].userName
                cell.TextOfcomment.text = arrayofComments [(indexPath.row)-4].commentBody
                return cell
            }//secoundSwitchToShowRowInSection
            }
                
            else {
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "SecondCell", for: indexPath) as!
                SecondCustomCell
                
                return cell
            }
        
        //secoundSwitchToShowRowInSection
    
            
        }//firstSwitchOnSection
    }//cellForRowAtindexPath
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var num : CGFloat?
        switch indexPath.section {
        case 0:
            if indexPath.row == 0 {
                return 500
            } else {
                return 120
            }
        case 1 :
            switch indexPath.row{
            case 0 :
                num = 60
            case 1 :
                num = 100
            case 2 :
                num = 200
            case 3 :
                num = 60
            case 4 :
                num = 90
            default :
                num = 90
                
            }//secoundSwithc
        case 2:
            switch indexPath.row{
            case 0 :
                num = 60
            case 1 :
                num = 100
            case 2 :
                num = 200
            case 3 :
                num = 60
            case 4 :
                num = 90
            default :
                num = 90
                
        }//secoundSwithc
        case 3 :
            switch indexPath.row{
            case 0 :
                num = 60
            case 1 :
                num = 100
            case 2 :
                num = 200
            case 3 :
                num = 60
            case 4 :
                num = 90
            default :
                num = 90
                
        }//secoundSwithc
        case 4 :
            switch indexPath.row{
            case 0 :
                num = 60
            case 1 :
                num = 100
            case 2 :
                num = 200
            case 3 :
                num = 60
            case 4 :
                num = 90
            default :
                num = 90
                
        }//secoundSwithc
        default:
        num = 90
        }//firstSwitch
        return num!
    }//heightForRowAt
 

}//class
