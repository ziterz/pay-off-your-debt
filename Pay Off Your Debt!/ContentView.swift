//
//  ContentView.swift
//  Pay Off Your Debt!
//
//  Created by Ziady Mubaraq on 03/04/23.
//

import SwiftUI



struct ContentView: View {
    // Status
    @State private var showingSheet: Bool = false
    @State private var showingAlert: Bool = false
    @State private var showingContacts: Bool = false
    
    // Data
    @State private var contact: String = ""
    @State private var nominal: String = ""
    @State private var note: String = ""
    @State private var date: Date = Date()
    @State private var type: String = ""
    
    var numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }()
    
    var body: some View {
        VStack {
            Button("New Debt") {
                showingSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $showingSheet) {
                NavigationView {
                    VStack {
                        List {
                            Section {
                                HStack {
                                    Text("Contact")
                                    Spacer()
                                    Label("Contact", systemImage: "plus.circle")
                                        .font(.title3)
                                        .labelStyle(.iconOnly)
                                }
                                .onTapGesture {
                                    self.showingContacts = true
                                }
                                .sheet(isPresented: $showingContacts) {
                                    ContactView()
                                    
                                }
                                
                                TextField("Rp0.00", value: $nominal, formatter: numberFormatter)
                                HStack {
                                    Text("Repayment Date")
                                    Spacer()
                                    DatePicker(
                                        "",
                                        selection: $date,
                                        displayedComponents: [.date]
                                    )
                                }
                                TextField("Personal Note", text: $note)
                            }
                            Section {
                                HStack {
                                    Text("Type")
                                    Spacer()
                                    Picker(selection: $type, label: Text("")) {
                                        Text("Borrow").tag("Borrow")
                                        Text("Lend").tag("Lend")
                                    }
                                }
                            }
                            
                            Section {
                                Button {
                                    self.showingAlert = true
                                } label: {
                                    Text("Save")
                                        .frame(maxWidth: .infinity)
                                }
                                .listRowBackground(Color.accentColor)
                                .foregroundColor(Color.white)
                            }
                            
                        }
                        .scrollDisabled(true)
                        .scrollContentBackground(.hidden)
                        .alert(isPresented: self.$showingAlert) {
                            Alert(title: Text("Contact on Pressed!"), dismissButton: .default(Text("Dismiss")))
                        }
                        .navigationBarTitle("New Debt",displayMode: .inline)
                        .navigationBarItems(
                            leading:Button("Cancel", action: {
                                self.showingSheet.toggle()
                            })
                        )
                        
                        
                        
                    }
                    .background(Color(UIColor.systemGroupedBackground))
                    
                }
                .presentationDetents([.large])
                .presentationDragIndicator(.visible)
                
                
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
        
    }
}

