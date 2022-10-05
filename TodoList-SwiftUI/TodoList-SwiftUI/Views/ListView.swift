//
//  ListView.swift
//  TodoList-SwiftUI
//
//  Created by Miguel Mañas Alvarez on 5/10/22.
//

import SwiftUI

struct ListView: View {
	
	@State var items: [ItemModel] = [
		ItemModel(title: "First", isCompleted: false),
		ItemModel(title: "Second", isCompleted: true),
		ItemModel(title: "Third", isCompleted: false)
		]
	
    var body: some View {
		List {
			ForEach(items) { item in
				ListRowView(item: item)
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
