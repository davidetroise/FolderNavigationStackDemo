//
//  ContentView.swift
//  FolderNavigationStackDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import SwiftUI

struct ContentView: View {
    @State private var path = [File]()
    var body: some View {
        NavigationStack(path: $path) {
            FolderView(name: "Root folder", files: File.sample, path: $path)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
