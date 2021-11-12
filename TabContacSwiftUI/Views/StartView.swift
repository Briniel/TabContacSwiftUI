//
//  StartView.swift
//  TabContacSwiftUI
//
//  Created by Михаил Иванов on 12.11.2021.
//

import SwiftUI

struct StartView: View {
    let persons: [Person]
    
    var body: some View {
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            NumbersView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView(persons: Person.getContactList())
    }
}
