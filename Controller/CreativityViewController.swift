//
//  CreativityController.swift
//  ZachStout_CSP
//
//  Created by Stout, Zachary on 10/26/17.
//  Copyright © 2017 Stout, Zachary. All rights reserved.
//

import UIKit

class CreativityViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout
{
    private let reuseIdentifier = "artIdentifier"
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRow : CGFloat = 3
    
    private lazy var artSeletion : [UIImage?] =
    {
        return [
            UIImage(named: "cute"),
            UIImage(named: "Dog"),
            UIImage(named: "Binary Code"),
            UIImage(named: "Block code"),
            UIImage(named: "javaSample"),
            UIImage(named: "Nuclear power"),
            UIImage(named: "Object code"),
            UIImage(named: "And Gate")
        ]
    }()
    
    var largePhotoIndexPath: IndexPath?
    {
        
        didSet
            {
                
                var indexPaths = [IndexPath]()
                if let largePhotoIndexPath = largePhotoIndexPath
                {
                    indexPaths.append(largePhotoIndexPath)
                }
                if let olValue = oldValue
                {
                    indexPaths.append(oldValue)
                }
                
                collectionView?.performBatchUpdates(
                    {
                        self.collectionView?.reloadItems(at: indexPaths)
                })
                {
                    completed in
                    
                    if let largePhotoIndexPath = self.largePhotoIndexPath
                    {
                        self.collectionView?.scrollToItem(at: largePhotoIndexPath, at: .centeredVertically, animated: true)
                    }
                }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

