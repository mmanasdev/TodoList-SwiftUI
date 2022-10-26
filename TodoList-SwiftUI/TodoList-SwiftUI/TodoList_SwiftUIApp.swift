//
//  TodoList_SwiftUIApp.swift
//  TodoList-SwiftUI
//
//  Created by Miguel Mañas Alvarez on 5/10/22.
//

import SwiftUI

@main
struct TodoList_SwiftUIApp: App {
	
	@StateObject var listViewModel: ListViewModel = ListViewModel()
	
    var body: some Scene {
        WindowGroup {
			NavigationView {
				ListView()
					.environmentObject(listViewModel)
			}
        }
    }
}
