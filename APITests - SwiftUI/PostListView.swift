//
//  PostListView.swift
//  APITests - SwiftUI
//
//  Created by Zohra Achour on 16/04/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

struct PostListView: View {
    
    @State var posts: [Post] = []
    
    var body: some View {
        
        List(posts) { post in
            Text("Hello World")
        }
        .onAppear {
            Api().getPosts { (posts) in
                self.posts = posts
            }
        }
        
        
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView()
    }
}
