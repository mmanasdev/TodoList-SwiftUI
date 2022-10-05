//
//  ItemModel.swift
//  TodoList-SwiftUI
//
//  Created by Miguel Mañas Alvarez on 5/10/22.
//

import Foundation

struct ItemModel: Identifiable {
	let id: String = UUID().uuidString
	let title: String
	let isCompleted: Bool
}
