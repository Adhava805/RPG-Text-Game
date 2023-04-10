//
//  Tut_Fight.swift
//  RPG
//
//  Created by 90308099 on 4/7/23.
//
import SwiftUI

struct Tut_Fight: View {
    @State private var orc_health: Int = 30
    @State private var orc_damage: Int = 3
    var body: some View {
        NavigationView {
            VStack{
                Text("You have chosen your weapon and the monster appears infront of you. It appears to be an orc and you have no chance of escaping. You ready your weapon and prepare to fight. The orc prepares his weapon in response to you")
                    .font(.system(size: 25))
                    .multilineTextAlignment(.center)
                    .padding(/*@START_MENU_TOKEN@*/.all, 15.0/*@END_MENU_TOKEN@*/)
                Spacer()
                HStack {
                    Text("Orc health: \(orc_health)")
                        .font(.system(size: 25))
                        .multilineTextAlignment(.leading)
                    
                }
                HStack {
                    Text("Your health:")
                        .font(.system(size: 25))
                        .multilineTextAlignment(.center)
                    Text("\(health)")
                        .font(.system(size: 25))
                        .multilineTextAlignment(.center)
                }
                Text("------------------")
                    .font(.system(size: 50))
                HStack{
                    OD(orc_health: $orc_health)
                    .controlSize(.large)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .buttonStyle(.borderedProminent)
                    .padding(/*@START_MENU_TOKEN@*/.all, 15.0/*@END_MENU_TOKEN@*/)
                    Button("Items") {
                        print(Text("You have no items"))
                    }
                    .controlSize(.large)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .buttonStyle(.borderedProminent)
                    .padding(/*@START_MENU_TOKEN@*/.all, 15.0/*@END_MENU_TOKEN@*/)
                }
                HStack{
                    Button("Magic") {
                        print(Text("You have no magic"))
                    }
                    .controlSize(.large)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .buttonStyle(.borderedProminent)
                    .padding(/*@START_MENU_TOKEN@*/.all, 15.0/*@END_MENU_TOKEN@*/)
                    Button("Escape") {
                        print(Text("You can't escape"))
                    }
                    .controlSize(.large)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .buttonStyle(.borderedProminent)
                    .padding(/*@START_MENU_TOKEN@*/.all, 15.0/*@END_MENU_TOKEN@*/)
                }
                NavigationLink(destination: Winshire()){
                    Text("Click when orc health is 0")
                }
                if health == 0 {
                    NavigationLink(destination: Winshire()){
                        Text("")
                    }
                }
            }
        }
    }
    
    struct OD: View {
        @Binding var orc_health: Int
        var body: some View {
            Button {
                orc_health -= damage
            } label: {
                Text("Attack")
            }
            if health == 0 {
                NavigationLink(destination: Winshire()){
                    Text("")
                }
            }
        }
    }
    
    struct Tut_Fight_Previews: PreviewProvider {
        static var previews: some View {
            Tut_Fight()
        }
    }
}
