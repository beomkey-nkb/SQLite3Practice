//
//  ContentView.swift
//  Shared
//
//  Created by 남기범 on 2021/09/25.
//

import SwiftUI

struct ContentView: View {
    let db: SQLiteDatabase?
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
                .onAppear(perform: {
                    db?.delete()
                    db?.query()
                })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(db: testDatabase)
    }
}
