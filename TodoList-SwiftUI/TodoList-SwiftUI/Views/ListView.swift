//
//  ListView.swift
//  TodoList-SwiftUI
//
//  Created by Miguel Mañas Alvarez on 5/10/22.
//

import SwiftUI

struct ListView: View {
	
	@State var items: [String] = [
		"First",
		"Second",
		"Third"
	]
	
    var body: some View {
		List {
			ForEach(items, id: \.self) { item in
				ListRowView(title: item)
			}
		}
		.listStyle(.plain)
		.navigationTitle("Todo List 📝")
		.navigationBarItems(
			leading: EditButton(),
			trailing: NavigationLink("Add", destination: AddView())
		)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
		NavigationView {
			ListView()
		}
    }
}
