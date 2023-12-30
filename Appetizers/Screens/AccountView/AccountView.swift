//
//  AccountView.swift
//  Appetizers
//
//  Created by loratech on 28/12/23.
//

import SwiftUI

struct AccountView: View {
    
    @ObservedObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name",text: $viewModel.user.firstName)
                    TextField("Last Name",text: $viewModel.user.lastName)
                    TextField("Email",text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birth Day", selection: $viewModel.user.birthdate, displayedComponents: .date)
                    Button {
                        viewModel.saveChanges()
                    }label: {
                        Text("Save Changes")
                    }
                }
                
                Section(header:Text("Request")){
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                    
            }
            .navigationTitle("🥷Account")
            
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
        .onAppear(){
            viewModel.retrieveUser()
        }
    }
}

#Preview {
    AccountView()
}
