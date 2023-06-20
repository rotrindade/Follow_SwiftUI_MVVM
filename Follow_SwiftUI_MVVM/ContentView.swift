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

struct User {
    var picture: String
    var name: String
    var nick: String
    var followers: Double
}

struct ProfileView: View {
    
    var user = User(picture: "perfil_stevejobs",
                    name: "Steve Jobs",
                    nick: "@steve_jobs",
                    followers: 22643)
    
    var body: some View {
        
        //Perfil
        VStack {
            Image(user.picture)
                .resizable()
                .frame(width: 250, height: 250)
                .padding(.bottom, 10)
            
            Text(user.name)
                .font(.system(size: 50, weight: .bold))
            
            Text(user.nick)
                .font(.system(size: 23, weight: .regular))
                .foregroundStyle(.gray)
            
            Text("\(user.followers)")
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
