//
//  ContactsView.swift
//  TabContacSwiftUI
//
//  Created by Михаил Иванов on 12.11.2021.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]

    var body: some View {
        NavigationView{
        List(persons) {
            person in
            NavigationLink("\(person.fullName)") {
                PersonInfoView(person: person)
            }

        }
        .listStyle(.plain)
        .navigationTitle("Contacts")
    }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(persons: Person.getContactList())
    }
}
