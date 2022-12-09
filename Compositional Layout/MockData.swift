//
//  MockData.swift
//  Compositional Layout
//
//  Created by Евгений Юнкин on 09.12.22.
//

import Foundation


struct MockData {
    
    
    
    static let shared = MockData()
    
    private let sales: ListSection = {
        .sales([.init(title: "", image: "imagename1"),
               .init(title: "", image: "imagename1"),
               .init(title: "", image: "imagename1")])
    }()
    
    
    private let category: ListSection = {
        .category([
               .init(title: "Burger", image: "imagename2"),
               .init(title: "Chcken", image: "imagename2"),
               .init(title: "Hot-dog", image: "imagename2"),
               .init(title: "Pizza", image: "imagename2"),
               .init(title: "Taco", image: "imagename2"),
               .init(title: "Wok", image: "imagename2")
        ])
    }()
    
    
    private let example: ListSection = {
        .example([.init(title: "", image: "imagename3"),
               .init(title: "", image: "imagename3"),
               .init(title: "", image: "imagename3")])
    }()
    
    
    var pageData: [ListSection] {
        [sales,category,example]
    }
    
    
    
    
}
