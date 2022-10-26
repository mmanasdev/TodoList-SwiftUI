//
//  ListView.swift
//  TodoList-SwiftUI
//
//  Created by Miguel Mañas Alvarez on 5/10/22.
//

import SwiftUI

struct ListView: View {
	
	@EnvironmentObject var listViewModel: ListViewModel
	
    var body: some View {
		ZStack {
			if listViewModel.items.isEmpty {
				NoItemsView()
					.transition(AnyTransition.opacity.animation(.easeIn))
			} else {
				List {
					ForEach(listViewModel.items) { item in
						ListRowView(item: item)
							.onTapGesture {
								listViewModel.updateItem(item: item)
							}
					}
					.onDelete(perform: listViewModel.deleteItem)
					.onMove(perform: listViewModel.moveItem)
				}
				.listStyle(.plain)
			}
		}
		.navigationTitle("Todo List 📝")
		.navigationBarItems(
			leading: EditButton(),
			trailing: NavigationLink("Add",
									 destination: AddView()
										.environmentObject(listViewModel))
		)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
		NavigationView {
			ListView()
				.environmentObject(ListViewModel())
		}
    }
}
