//
//  TabContacSwiftUIApp.swift
//  TabContacSwiftUI
//
//  Created by Михаил Иванов on 12.11.2021.
//

import SwiftUI

@main
struct TabContacSwiftUIApp: App {
    
    let persons = Person.getContactList()
    
    var body: some Scene {
        WindowGroup {
            StartView(persons: persons)
        }
    }
}
