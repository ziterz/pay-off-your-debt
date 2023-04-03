//
//  ContactView.swift
//  Pay Off Your Debt!
//
//  Created by Ziady Mubaraq on 03/04/23.
//

import SwiftUI

struct ContactView: View {
    // Status
    @Binding var showingContact: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    HStack {
                        Image(systemName: "person.fill")
                            .frame(width: 32, height: 32)
                            .background(Color(UIColor.systemGroupedBackground))
                            .clipShape(Circle())
                            .foregroundColor(Color.accentColor)
                        VStack {
                            Text("Person 1")
                        }
                    }
                    .padding(EdgeInsets())
                    HStack {
                        Image(systemName: "person.fill")
                            .frame(width: 32, height: 32)
                            .background(Color(UIColor.systemGroupedBackground))
                            .clipShape(Circle())
                            .foregroundColor(Color.accentColor)
                        VStack {
                            Text("Person 2")
                        }
                    }
                    HStack {
                        Image(systemName: "person.fill")
                            .frame(width: 32, height: 32)
                            .background(Color(UIColor.systemGroupedBackground))
                            .clipShape(Circle())
                            .foregroundColor(Color.accentColor)
                        VStack {
                            Text("Person 3")
                        }
                    }
                    HStack {
                        Image(systemName: "person.fill")
                            .frame(width: 32, height: 32)
                            .background(Color(UIColor.systemGroupedBackground))
                            .clipShape(Circle())
                            .foregroundColor(Color.accentColor)
                        VStack {
                            Text("Person 4")
                        }
                    }
                    HStack {
                        Image(systemName: "person.fill")
                            .frame(width: 32, height: 32)
                            .background(Color(UIColor.systemGroupedBackground))
                            .clipShape(Circle())
                            .foregroundColor(Color.accentColor)
                        VStack {
                            Text("Person 5")
                        }
                    }
                }
                .listStyle(.plain)
            }
            .navigationBarTitle("Contacts",displayMode: .automatic)
            .navigationBarItems(
                leading:Button("Back", action: {
                    print("Button Clicked")
                    showingContact = false
                })
            )
        }
        .presentationDetents([.large])
        .presentationDragIndicator(.visible)
    }
}

//struct ContactView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContactView()
//    }
//}
