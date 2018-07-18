//
//  HomeViewController.swift
//  TrySectionsandCells
//
//  Created by Sayed Abdo on 7/12/18.
//  Copyright © 2018 JETS. All rights reserved.
//

import UIKit
import SDWebImage
import DropDown
import Dropdowns


class HomeViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        
            let image = UIImage(named: "panda.png")
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        if jsonArray.count != 0 {
            var imagePath :String  = URLs.imageBaseURL + jsonArray[indexPath.row].posterPath
            var imageUrl : URL = URL(string: imagePath)!
            cell.collectionImg.sd_setImage(with: imageUrl , placeholderImage: image )
            return cell
        }
        
        
            return cell
        
    
    }
    
    @IBOutlet weak var homeCollection: UICollectionView!
    var jsonArray : Array = [Movie]()
    var movieObject : Movie = Movie()
    
    

    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
    }
    
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{

        let minSpace: CGFloat = 0

        return CGSize(width : (homeCollection.frame.size.width - minSpace)/4, height: 2)
    }
    override func viewWillAppear(_ animated: Bool) {
        WebService.getJason(url: "http://api.themoviedb.org/3/movie/now_playing?api_key=479232edd3efda1b9f316b26d891d23a") { (err:Error?,res:Any) in
            if err == nil {
                
                let array = res as! Array<Any>
                self.jsonArray = array as! Array<Movie>
                self.homeCollection.reloadData()
            }
            else{
                //useAlaert
                
                print("ERRRRRRORRRRRRRORRROROR")
            }
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
         print("ahmed")
        homeCollection.delegate = self
        homeCollection.dataSource = self
        let items = ["Now Playing","Popular", "Top Rated"]
        let titleView = TitleView(navigationController: navigationController!, title: "Menu", items: items)

        titleView?.action = { [weak self] index in
            print("select \(index)")
            switch index {
            case 0:
                WebService.getJason(url: "http://api.themoviedb.org/3/movie/now_playing?api_key=479232edd3efda1b9f316b26d891d23a") { (err:Error?,res:Any) in
                    if err == nil {
                        
                        let array = res as! Array<Any>
                        self?.jsonArray = array as! Array<Movie>
                        self?.homeCollection.reloadData()
                    }
                    else{
                        //useAlaert
                        
                        print("ERRRRRRORRRRRRRORRROROR")
                    }
                }
                //"http://api.themoviedb.org/3/movie/popular?api_key=479232edd3efda1b9f316b26d891d23a"
            case 1:
                WebService.getJason(url: "http://api.themoviedb.org/3/movie/popular?api_key=479232edd3efda1b9f316b26d891d23a") { (err:Error?,res:Any) in
                    if err == nil {
                        
                        let array = res as! Array<Any>
                        self?.jsonArray = array as! Array<Movie>
                        self?.homeCollection.reloadData()
                    }
                    else{
                        //useAlaert
                        
                        print("ERRRRRRORRRRRRRORRROROR")
                    }
                }
            //"http://api.themoviedb.org/3/movie/top_rated?api_key=479232edd3efda1b9f316b26d891d23a"
            case 2 :
                WebService.getJason(url: "http://api.themoviedb.org/3/movie/top_rated?api_key=479232edd3efda1b9f316b26d891d23a") { (err:Error?,res:Any) in
                    if err == nil {
                        
                        let array = res as! Array<Any>
                        self?.jsonArray = array as! Array<Movie>
                        self?.homeCollection.reloadData()
                    }
                    else{
                        //useAlaert
                        
                        print("ERRRRRRORRRRRRRORRROROR")
                    }
                }
                
            default:
                
                print("Error In Swith case Drop down List")
                
                
            }
        }
    
        navigationItem.titleView = titleView
        
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let width = UIScreen.main.bounds.width
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: width / 2, height: width / 2)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        homeCollection!.collectionViewLayout = layout
        homeCollection.layer.borderColor = UIColor.black.cgColor
        homeCollection.layer.borderWidth = 2.0
        homeCollection.layer.cornerRadius = 2.0

        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var objectToPosts = self.storyboard?.instantiateViewController(withIdentifier:"postVC") as!HomeTableViewController
        
      self.navigationController?.pushViewController(objectToPosts, animated: true)
    }

 

}
