//
//  ContentView.swift
//  State and Binding
//
//  Created by Kloee Pratt-Castaenda
//

import SwiftUI
    
struct ContentView: View {
    
    @State var button1:Int = 0
    
    @State var button2:Int = 0
    
    @State var button3:Int = 0
    
    var body: some View {
        
            VStack {
                
                Text("\(button1 + button2 + button3)")
                    .font(.system(size: 200,  design: .rounded))
                    .fontWeight(.black)
                
                HStack{
                    
                    ButtonIncrease(counter: $button1, color: .milkBrown)
                    
                    ButtonIncrease(counter: $button2, color: .mocha)
                    
                    ButtonIncrease(counter: $button3, color: .neutralBrown)
                } //HStack
            } //VStack
        } //view
    
    struct ButtonIncrease: View {
        @Binding var counter: Int
        var color: Color
        var body: some View {
            
            Button {
                
                counter = counter + 1
                    
            } label: {
                
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundStyle(color)
                    .overlay {
                        Text("\(counter)")
                            .font(.system(size: 100,  design: .rounded))
                            .fontWeight(.black)
                            .foregroundStyle(.milk2)
                }
            }
        }
        
        
#if DEBUG
        struct ContentView_Previews : PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
#endif
    }}
