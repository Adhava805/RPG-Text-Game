//
//  SwiftUIView.swift
//  RPG
//
//  Created by 90308099 on 4/10/23.
//

import SwiftUI
struct SwiftUIView: View {
    @State var timeRemaining: Int = 0
    var body: some View {
                VStack {
                    Text("Time \(timeRemaining)")
                    ButtonView(timeRemaining: $timeRemaining)
                }
            }
    }

struct ButtonView: View {
    @Binding var timeRemaining: Int
    var body: some View {
        Button {
            timeRemaining += 1
        } label: {
            Text("More time")
        }

    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
