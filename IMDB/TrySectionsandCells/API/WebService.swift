//
//  WebService.swift
//  TrySectionsandCells
//
//  Created by Sayed Abdo on 7/11/18.
//  Copyright © 2018 JETS. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class WebService: NSObject {
 
    class func getPosts(url:String ,completion:@escaping (_ error:Error?,_ res:Any)
        ->Void){
        Alamofire.request(url, method:.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .responseJSON { response in
                switch response.result
                {
                case.failure:
                    print("Error Enter Failure Case")
                    completion(response.error!,false)
                case.success:
                    var arrayOfPosts:[Posts] = []
                    let json = JSON(response.value)
                    var returnedPosts = json.array
        for i in 0...3 {
            var resultDic = returnedPosts![i]
            let post :Posts = Posts()
               post.userId = resultDic["userId"].int
               post.postId = resultDic["id"].int
               post.title = resultDic["title"].string
            post.postBody = resultDic["body"].string
               arrayOfPosts.append(post)
                    }
                     completion( nil, arrayOfPosts)
                }
        }
        
        
    }
    class func getComments(url:String ,completion:@escaping (_ error:Error?,_ res:Any)
        ->Void){
        Alamofire.request(url, method:.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .responseJSON { response in
                switch response.result
                {
                case.failure:
                    print("Error Enter Failure Case")
                    completion(response.error!,false)
                case.success:
                    var arrayOfComments:[Comments] = []
                    let json = JSON(response.value)
                    var returnedComments = json.array
                    for i in 0...19 {
                        var resultDic = returnedComments![i]
                        let comment :Comments = Comments()
                        comment.commentID = resultDic["id"].int
                    comment.postID = resultDic["postId"].int
                        comment.commentBody = resultDic["body"].string
                        
                        arrayOfComments.append(comment)
                    }
                    completion( nil , arrayOfComments)
                }
        }
        
        
    }
    class func getUsers(url:String ,completion:@escaping (_ error:Error?,_ res:Any)
        ->Void){
        Alamofire.request(url, method:.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .responseJSON { response in
                switch response.result
                {
                case.failure:
                    print("Error Enter Failure Case")
                    completion(response.error!,false)
                case.success:
                    var arrayOfUsers:[Users] = []
                    let json = JSON(response.value)
                    var returnedUsers = json.array
                    for i in 0...(returnedUsers?.count )!-1 {
                        var resultDic = returnedUsers![i]
                        let user :Users = Users()
                        user.userID = resultDic["id"].int
                        user.userName = resultDic["username"].string
                    
                        arrayOfUsers.append(user)
                    }
                    completion( nil , arrayOfUsers)
                }
        }
    
    }
    class func getJason(url:String,completion:@escaping (_ error:Error?,_ array:Any)
        ->Void){
        Alamofire.request(url, method:.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .responseJSON { response in
                switch response.result
                {
                case.failure:
                    print("Errro Enter Failure Case")
                    completion(response.error!,false)
                case.success:
                    
                    var arrayOfMovies:[Movie] = []
                   
                    let json = JSON(response.value)
                    var returnedMovie = json["results"].array
                 
                for i in 0 ... (returnedMovie?.count)!-1 {
                            var movie = Movie()
                    
                    movie.posterPath = returnedMovie![i]["poster_path"].string!;
                            arrayOfMovies.append(movie)
                            
                        }
                        completion( nil , arrayOfMovies)
                    }
        }
    }
    
}
