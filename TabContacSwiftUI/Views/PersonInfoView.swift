//
//  PersonInfoView.swift
//  TabContacSwiftUI
//
//  Created by Михаил Иванов on 12.11.2021.
//

import SwiftUI

struct PersonInfoView: View {
    let person: Person

    var body: some View {
            List {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                    .frame(width: 120, height: 120)
                    Spacer()
                }
                Label("\(person.phoneNumber)", systemImage: "phone")
                Label("\(person.email)", systemImage: "tray")
        }
            .navigationBarTitle(person.fullName)
    }
}

struct PersonInfo_Previews: PreviewProvider {
    static var previews: some View {
        PersonInfoView(person: Person(name: "Sten", surname: "Li", email: "reter@gmail.com", phoneNumber: "+79362185543"))
    }
}
