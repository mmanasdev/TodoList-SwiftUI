//
//  AddView.swift
//  TodoList-SwiftUI
//
//  Created by Miguel Mañas Alvarez on 5/10/22.
//

import SwiftUI

struct AddView: View {
	
	@State var textFieldText: String = ""
	
    var body: some View {
		ScrollView {
			VStack {
				TextField("Type something here...", text: $textFieldText)
					.padding(.horizontal)
					.frame(height: 55)
					.background(Color(UIColor.systemGray5))
					.cornerRadius(10)
				
				Button {
					
				} label: {
					Text("Save".uppercased())
						.foregroundColor(.white)
						.frame(height: 55)
						.frame(maxWidth: .infinity)
						.background(Color.accentColor)
						.cornerRadius(10)
						 
				}

			}
			.padding(14)
		}
		.navigationTitle("Add an Item 🖊")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
		NavigationView {
			AddView()
		}
    }
}
