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

struct ProfileView: View {
    var body: some View {
        
        //Perfil
        VStack {
            Image("profile_stevejobs")
                .resizable()
                .frame(width: 250, height: 250)
                .padding(.bottom, 10)
            
            Text("Steve Jobs")
                .font(.system(size: 50, weight: .bold))
            
            Text("@stevejobs")
                .font(.system(size: 23, weight: .regular))
                .foregroundStyle(.gray)
            
            Text("22.643K")
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
