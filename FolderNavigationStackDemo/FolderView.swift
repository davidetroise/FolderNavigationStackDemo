//
//  FolderView.swift
//  FolderNavigationStackDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import SwiftUI

struct FolderView: View {
    let name: String
    let files: [File]?
    @Binding var path: [File]
    
    var body: some View {
        List(files ?? []) { file in
            NavigationLink(value: file) {
                HStack {
                    Image(systemName: file.icon)
                        .foregroundColor(.blue)
                    Text(file.name)
                }
            }
        }
        .navigationDestination(for: File.self) { file in
            FolderView(name: file.name, files: file.children, path: $path)
        }
        .navigationTitle(name)
        .toolbar {
            ToolbarItem{
                Button {
                    path = []
                } label: {
                    Image(systemName: "house")
                }

            }
        }
    }
}

struct FolderView_Previews: PreviewProvider {
    static var previews: some View {
        FolderView(name: "Folder", files: File.sample, path: .constant([]))
    }
}
