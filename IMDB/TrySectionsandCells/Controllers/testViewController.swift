//
//  testViewController.swift
//  TrySectionsandCells
//
//  Created by Sayed Abdo on 7/12/18.
//  Copyright © 2018 JETS. All rights reserved.
//

import UIKit

class testViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{
    
    @IBOutlet weak var HOME: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("numberOfItemsInSection")
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print ("Yarb")
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellOne", for: indexPath) as! CollectionViewCell
    cell.IMG.image = UIImage(named: "panda.jpg")
        return cell
        
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        print(numberOfSections)
        return 1
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        HOME.delegate = self
        HOME.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
