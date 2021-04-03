//
//  MessageView.swift
//  Organizer
//
//  Created by Josh Santos on 3/4/2564 BE.
//

import SwiftUI

struct MessageView: View {
    let message: Message
    
    var body: some View {
        GeometryReader { metrics in
            HStack{
                Text(message.content)
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(message.sender == .me ? Color.blue: Color.gray))
                    .frame(maxWidth: metrics.size.width * 0.75)
            }.frame(maxWidth: .infinity, alignment: message.sender == .me ? .trailing : .leading)
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: Message(id: 1, sender: .me, content: "TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest"))
        MessageView(message: Message(id: 1, sender: .other(named: ""), content: "TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest"))
    }
}
