//
//  LoginView.swift
//  FirstUIMasteringSwiftUI
//
//  Created by Darkhan Kuanyshbay on 04.02.2021.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        VStack{
            Spacer()
            Text("Welcome to SwiftUI")
                .foregroundColor(.white)
                .font(.system(size: 40))
                .bold()
            HStack{
                Image(systemName: "envelope")
                    .foregroundColor(.gray)
                TextField("Email", text: $email)
                    
            }.padding(.all,20)
            .background(Color.white)
            .cornerRadius(8)
            .padding(.horizontal,20)
            
            HStack{
                Image(systemName: "lock")
                    .foregroundColor(.gray)
                TextField("Password", text: $password)
                    
            }.padding(.all,20)
            .background(Color.white)
            .cornerRadius(8)
            .padding(.horizontal,20)
            
            Button(action: {}){
                Text("Login")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .medium))
            }.frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(Color.red)
            .cornerRadius(8)
            .padding(.horizontal, 20)
            
            Spacer()
        }.background(Image("back")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .blur(radius: 5))
        .ignoresSafeArea(.all)
    }
}































struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
