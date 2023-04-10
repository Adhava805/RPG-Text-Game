//
//  CSelect.swift
//  RPG
//
//  Created by 90308099 on 4/6/23.
//

import SwiftUI

public var damage = 5
public var money = 25
public var day = true
public var weapon = "[]"
public var health = armor
public var armor = 50

struct CSelect: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("You wake up in a random forest and you see the scenery of grass, flowers, and blue skies, and trees. You then hear an approaching monster so you hurry to defend yourself. You pick up whats next to you and see a sword, staff, gauntlets, and a bow. Which weapon do you take?")
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                Text("------------------")
                    .font(.system(size: 50))
                HStack{
                    Spacer()
                    NavigationLink(destination: Tut_Fight()){
                        Text("Sword")
                        Button("") {
                            weapon = "Sword"
                        }
                    }
                    .controlSize(.large)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .buttonStyle(.borderedProminent)
                    Spacer()
                    NavigationLink(destination: Tut_Fight()){
                        Text("Staff")
                        Button("") {
                            weapon = "Staff"
                        }
                    }
                    .controlSize(.large)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .buttonStyle(.borderedProminent)
                    Spacer()
                }
                Spacer()
                HStack{
                    Spacer()
                    NavigationLink(destination: Tut_Fight()){
                        Text("Gauntlets")
                        Button("") {
                            weapon = "Gauntlets"
                        }
                    }
                    .controlSize(.large)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .buttonStyle(.borderedProminent)
                    Spacer()
                    NavigationLink(destination: Tut_Fight()){
                        Text("Bow")
                        Button("") {
                            weapon = "Bow"
                        }
                    }
                    .controlSize(.large)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .buttonStyle(.borderedProminent)
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}

struct CSelect_Previews: PreviewProvider {
    static var previews: some View {
        CSelect()
    }
}
