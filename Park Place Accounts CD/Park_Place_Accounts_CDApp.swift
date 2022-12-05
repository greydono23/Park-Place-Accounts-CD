//
//  Park_Place_Accounts_CDApp.swift
//  Park Place Accounts CD
//
//  Created by Greydon O'Keefe on 9/26/22.
//

import SwiftUI

@main
struct Park_Place_Accounts_CDApp: App {

    @StateObject private var dataController = DataController()

//    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }



}
