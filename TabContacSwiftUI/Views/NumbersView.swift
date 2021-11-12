//
//  NumbersView.swift
//  TabContacSwiftUI
//
//  Created by Михаил Иванов on 12.11.2021.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]

    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { person in
                    Section(header: Text("\(person.fullName)")) {
                        Label("\(person.phoneNumber)", systemImage: "phone")
                        Label("\(person.email)", systemImage: "tray")
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getContactList())
    }
}
