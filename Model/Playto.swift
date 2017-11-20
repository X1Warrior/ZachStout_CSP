//
//  File.swift
//  ZachStout_CSP
//
//  Created by Stout, Zachary on 11/20/17.
//  Copyright © 2017 Stout, Zachary. All rights reserved.
//

import UIKit
public class Playto : Rollable
{
    private var playtoColor : UIColor
    //MARK: Rollable data member
    public var rollState: Bool
    
    public init()
    {
        self.playtoColor = UIColor()
        self.rollState = false
    }
    
    //MARK:- rollable methods
    public func roll() -> Void
    {
        print("I am rollable, make me into a shape")
        rollState = true
    }
    
    public func isRolled() -> Bool
    {
        if(rollState)
        {
            print("oh ya keep the roll going")
        }
        else
        {
            print("why have you left me ugly")
        }
        return isRolled()
    }
    
}
