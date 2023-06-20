//  ContentView.swift
//  Follow_MVVM
//
//  Created by Rodrigo Trindade on 6/15/23.
//

//
//  ContentView.swift
//  Follow_MVVM
//
//  Created by Rodrigo Trindade on 6/15/23.
//

import SwiftUI


//MARK: - VIEW
struct ProfileView: View {
    
    @State var viewModel = ProfileViewModel()
        
    var body: some View {
        
        //Perfil
        VStack {
            Image(viewModel.user.picture)
                .resizable()
                .frame(width: 250, height: 250)
                .padding(.bottom, 10)
            
            Text(viewModel.user.name)
                .font(.system(size: 50, weight: .bold))
            
            Text(viewModel.user.nick)
                .font(.system(size: 23, weight: .regular))
                .foregroundStyle(.gray)
            
            Text("\(viewModel.user.followers)")
                .font(.system(size: 70, weight: .light))
                .padding(40)
            
            //Buttons
            VStack{
                
                //Seguir
                Button{} label: {
                    Label("Follow", systemImage: "person.crop.circle.badge.plus")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                //Enviar Mensagem
                Button{} label: {
                    Label("enviar mensagem", systemImage: "paperplane.fill")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .disabled(true)
            }
            .padding(20)
        }

        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
