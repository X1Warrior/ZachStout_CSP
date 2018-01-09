//
//  DataAndInformationController.swift
//  ZachStout_CSP
//
//  Created by Stout, Zachary on 10/26/17.
//  Copyright © 2017 Stout, Zachary. All rights reserved.
//

import UIKit

class DataViewController: UITableViewController
{
    
    
    lazy var bucketList : [BucketItem] =
        {
            return loadBucketListFromFile()
    }()
    
    private func loadBucketListFromFile() -> [BucketItem]
    {
        
        var items = [bucketItem]()
        if let filePath = Bundle.main.url(forResource: "bucket", withExtension: "csv")
        {
            do
            {
                let input = try String(contentsOf: filePath)
                let bucketLines = input.components(seperaedBy: "\n")
                for line in bucketLines
                {
                    let item = line.components(seperatedBy: ",")
                    items.appent(BucketItem(contents: item[0],author: item[1]))
                }
            }
            catch
            {
                print("File load error")
            }
        }
        return items
    }
    
    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return bucketList.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let currentCell = tableView.dequeueReusableCell(withIdentifier: "dataIdentifier", for: indexPath) as! BucketItemCell
        
        currentCell.bucketItem = bucketList[IndexPath.row]
        // currentCell.bucketItemSignature.text = currentCell.bucketItem.itemAuthor
        
        return currentCell
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
