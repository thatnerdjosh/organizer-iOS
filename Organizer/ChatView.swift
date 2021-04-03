//
//  Chat.swift
//  Organizer
//
//  Created by Josh Santos on 3/4/2564 BE.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        
            VStack{
                Spacer()
                ScrollView() {
                }.padding(.all, 5)
                ZStack(alignment: .trailing) {
                    TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    Button(action: {}){
                        Image(systemName: "arrow.up.circle.fill")
                            .accessibilityLabel("Send")
                    }.padding(.horizontal, 5)
                }
                .padding(.horizontal, 2)
                .padding(.bottom, 2)
            }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
