//
//  ContactView.swift
//  Pay Off Your Debt!
//
//  Created by Ziady Mubaraq on 03/04/23.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Text("Person 1")
                    Text("Person 2")
                    Text("Person 3")
                    Text("Person 4")
                    Text("Person 5")
                    Text("Person 6")
                }
                .listStyle(.plain)
            }
            .navigationBarTitle("Contacts",displayMode: .automatic)
            .navigationBarItems(
                leading:Button("Back", action: {
//                    self.showingSheet.toggle()
                })
            )
        }
        .presentationDetents([.large])
        .presentationDragIndicator(.visible)
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
