//
//  ViewController.swift
//  bchelste2022
//
//  Created by bchelste on 08/21/2022.
//  Copyright (c) 2022 bchelste. All rights reserved.
//

import UIKit
import bchelste2022

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        podTest()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func podTest() {
        print("--POD Test--")
        
        print("-- create #1 article")
        let firstArticle = ArticleManager.shared.newArticle()
        firstArticle.creationDate = Date()
        firstArticle.title = "firstArticle"
        firstArticle.content = "Hello, World!"
        firstArticle.language = "en"
        print(firstArticle)
        
        print("-- create #2 article")
        let secondArticle = ArticleManager.shared.newArticle()
        secondArticle.creationDate = Date()
        secondArticle.title = "secondArticle"
        secondArticle.content = "piscineIOS day 08"
        secondArticle.language = "ru"
        print(secondArticle)
        
        print("-- all Articles: ")
        let allAriclesTest = ArticleManager.shared.getAllArticles()
        print(allAriclesTest)
        
        print("-- get Articles with language:")
        let articlesLanguage = ArticleManager.shared.getArticles(withLang: "ru")
        print(articlesLanguage)
        
        print("-- get Articles contain string:")
        let articlesContainString = ArticleManager.shared.getArticles(containString: "Hello")
        print(articlesContainString)
        
        print("-- remove: (second Article)")
        ArticleManager.shared.removeArticle(article: secondArticle)
        print("all articles after removing ->")
        print(ArticleManager.shared.getAllArticles())
        
        print("-- save remaining articles --")
        ArticleManager.shared.save()
        
    }

}

