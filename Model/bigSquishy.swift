//
//  bigSquishy.swift
//  ZachStout_CSP
//
//  Created by Stout, Zachary on 11/20/17.
//  Copyright © 2017 Stout, Zachary. All rights reserved.
//

import Foundation
public protocol Rollable
{
    var rollState : Bool {get set}
    func roll() -> Void
    func isRolled() -> Bool
}
