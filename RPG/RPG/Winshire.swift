//
//  Winshire.swift
//  RPG
//
//  Created by 90308099 on 4/7/23.
//
var first_visit = true
import SwiftUI

struct Winshire: View {
    var body: some View {
        VStack {
            Spacer()
                Text("You have arrived in wilshire. A place full of food, drinks and a lively attitude. You see an inn, an weapon store, an field to fight monsters, and an opening into the forest. What do you do?")
                    .font(.system(size: 35))
                    .multilineTextAlignment(.center)
            Spacer()
            HStack{
                Text("Health:")
                    .font(.system(size: 35))
                    .multilineTextAlignment(.leading)
                Text("\(health)")
                    .font(.system(size: 35))
                    .multilineTextAlignment(.leading)
            }
                Text("------------------")
                    .font(.system(size: 50))
            Spacer()
            HStack{
                Button("Inn (gain health)") {
                    health = armor
                }
                .controlSize(.large)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                .buttonStyle(.borderedProminent)
                Button("Weapon Store") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .controlSize(.large)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                .buttonStyle(.borderedProminent)
            }
            HStack{
                Button("Field (gain exp)") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .controlSize(.large)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                .buttonStyle(.borderedProminent)
                Button("Forest Opening") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .controlSize(.large)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                .buttonStyle(.borderedProminent)
            }
            Spacer()
        }
        
    }
}

struct Winshire_Previews: PreviewProvider {
    static var previews: some View {
        Winshire()
    }
}
