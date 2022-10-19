//
//  File.swift
//  FolderNavigationStackDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import Foundation

struct File: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let children: [File]?
    
    var icon: String {
        guard let children else { return "doc" }
        
        if children.isEmpty {
            return "folder"
        } else {
            return "folder.fill"
        }
    }
    
    public static let sample: [File] = [
        File(name: "Photos", children: [
            File(name: "Summer holidays", children: [
                File(name: "IMG_423748.jpg", children: nil),
                File(name: "IMG_423749.jpg", children: nil)
            ]),
            File(name: "Screenshot 1.png", children: nil)
        ]),
        File(name: "Movies", children: []),
        File(name: "Curriculum.pdf", children: nil)
    ]
}
