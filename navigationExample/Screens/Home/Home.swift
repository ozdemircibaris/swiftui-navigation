//
//  Home.swift
//  navigationExample
//
//  Created by 10lift on 25.12.2022.
//

import SwiftUI

struct Fruit: Identifiable {
    let id = UUID().uuidString
    let name: String
}

struct Home: View {
    @State var fruits: [Fruit] = [
        Fruit(name: "a"),
        Fruit(name: "b"),
        Fruit(name: "c"),
        Fruit(name: "d"),
        Fruit(name: "e"),
        Fruit(name: "f"),
    ]
    @State var selectedNavigation: Fruit? = nil
    
    init() {
        _selectedNavigation = State(initialValue: fruits[0])
    }

    var body: some View {
        NavigationView {
                List(fruits) { item in
                    Button(action: { withAnimation {
                        selectedNavigation = item
                    } }) {
                        HStack {
                            Image(systemName: "chevron.right")
                            RoundedRectangle(cornerRadius: 4)
                                .fill(selectedNavigation?.id == item.id ? Color.purple:Color.purple.opacity(0.5))
                                .frame(width: 5, height: 26)
                            Text(item.name)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .contentShape(Rectangle())
                            Spacer()
                        }.padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                    }.buttonStyle(.plain)
                        .background(selectedNavigation?.id == item.id ? Color(red: 255, green: 255, blue: 255).opacity(0.1):Color.clear)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(8)
                }.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .padding(0)
                .background(Color(red: 0, green: 0, blue: 0).opacity(0.85))
                .listStyle(SidebarListStyle())
            
            // content
            
            Text("\(selectedNavigation?.name ?? "")")
        }.navigationBarBackButtonHidden(true)
            .background(Color.red)
    }
}
