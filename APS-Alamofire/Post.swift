//
//  Post.swift
//  APS-Alamofire
//
//  Created by IOS SENAC on 22/08/20.
//  Copyright © 2020 IOS SENAC. All rights reserved.
//

import UIKit

class Post {
    public var id: Int!
    public var title: String!
    public var body: String!
    
    init(id: Int, title: String, body: String) {
        self.id = id
        self.title = title
        self.body = body
    }
}
