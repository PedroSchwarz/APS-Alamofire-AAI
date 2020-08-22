//
//  ViewController.swift
//  APS-Alamofire
//
//  Created by IOS SENAC on 22/08/20.
//  Copyright © 2020 IOS SENAC. All rights reserved.
//

import UIKit
import Alamofire

class PostViewController: UIViewController {
    
    public var postId: Int?
    
    private var post: Post!

    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblBody: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchPostData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func fetchPostData() {
        Alamofire.request("https://jsonplaceholder.typicode.com/posts/\(String(postId!))").responseJSON { reponse in
            let data = reponse.result.value as! NSDictionary
            self.post = Post(id: data.value(forKey: "id") as! Int, title: data.value(forKey: "title") as! String, body: data.value(forKey: "body") as! String)
            self.setContent()
        }
    }
    
    private func setContent() {
        self.lblTitle.text = "#\(self.post.id!) - \(self.post.title!)"
        self.lblBody.text = self.post.body!
    }
}

