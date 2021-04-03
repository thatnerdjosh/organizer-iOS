//
//  Chat.swift
//  Organizer
//
//  Created by Josh Santos on 3/4/2564 BE.
//

import SwiftUI

struct Chat: View {
    var body: some View {
        GeometryReader { metrics in
            VStack{
                Spacer()
                ScrollView() {
                    HStack{
                        Text("TestTestTestTestTestTestTestTestTestTestTestTestTestTestTest")
                            .padding()
                            .foregroundColor(.white)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.blue))
                            .frame(maxWidth: metrics.size.width * 0.65)
                    }.frame(maxWidth: .infinity, alignment: .trailing)
                    HStack{
                        Text("TestTestTestTestTestTestTestTestTestTestTestTestTestTestTest")
                            .padding()
                            .foregroundColor(.white)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.gray))
                            .frame(maxWidth: metrics.size.width * 0.65)
                    }.frame(maxWidth: .infinity, alignment: .leading)
                }.padding()
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
}

struct Chat_Previews: PreviewProvider {
    static var previews: some View {
        Chat()
    }
}
