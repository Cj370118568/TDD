//
//  ContentView.swift
//  HelloUITest
//
//  Created by 陈健 on 2020/5/5.
//  Copyright © 2020 test.MOYI. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var alertIsVisible: Bool = false
    
    var body: some View {
      VStack {
        Text("Hello chenjian")
        Button(action: {
          print("Button pressed!")
          self.alertIsVisible = true
        }) {
          Text("Hit me!")
        }
        .alert(isPresented: self.$alertIsVisible) {
          Alert(title: Text("Hello!"),
                message: Text("The king of the world"),
                dismissButton: .default(Text("ok")))
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
