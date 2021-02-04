//
//  ContentView.swift
//  FirstUIMasteringSwiftUI
//
//  Created by Darkhan Kuanyshbay on 04.02.2021.
//

import SwiftUI

struct ContentView: View {
    
    var buttons = [
        ["7","8","9", "x"],
        ["4","5","6", "-"],
        ["1","2","3", "+"],
        ["0",".","/", "="]
    ]
    var body: some View {

        ZStack(alignment: .bottom){
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 10){
                HStack{
                    Spacer()
                    Text("10")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                }.padding()
                ForEach(buttons, id: \.self){ row in
                    HStack(spacing: 10){
                        ForEach(row, id: \.self){ button in
                            Text(button).font(.system(size: 30))
                                .frame(width: self.buttonWidth(), height: self.buttonWidth())
                                .foregroundColor(.white)
                                .background(Color.yellow)
                                .cornerRadius(self.buttonWidth()/2)
                        }
                        
                    }
                }
              
            }
           
        }
    }
    func buttonWidth() -> CGFloat{
        return ((UIScreen.main.bounds.width-5*10)/4)
    }
}

































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
                .previewDevice("iPhone 8 Plus")
            ContentView()
                .previewDevice("iPhone 12")
            
        }
    }
}
