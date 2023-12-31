//
//  ContentView.swift
//  Naviagtion
//
//  Created by Celina Tong on 7/28/23.
//

import SwiftUI

struct ContentView: View {
    @State private var answer = ""
    @State private var wrong1 = ""
    @State private var wrong2 = ""
    @State private var wrong3 = ""
    @State private var wrong4 = ""
    
    
    var body: some View {
        
        
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView()) {
                    Text("Next Question")
                }
                Text("Which New Jeans memeber is this?")
                    .font(Font.custom("Sundries-DEMO-NEW",size: 20))
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(hue: 0.671, saturation: 0.985, brightness: 0.707))
                    .padding([.top, .leading, .trailing], 4.0)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Image("haerin")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(.all, 5.0)
                
                
                HStack {
                    
                    Button("Hanni"){
                        wrong1 = "❌"
                    }
                    .padding(.top)
                    Text(wrong1)
                        .font(Font.custom("georgia",size: 20))
                    
                    
                    
                    Button("Danielle") {
                        wrong2 = "❌"
                    }
                    .padding(.top)
                    Text(wrong2)
                        .font(Font.custom("georgia",size: 20))
                    
                    Button("Hyein") {
                        wrong3 = "❌"
                    }
                    .padding(.top)
                    Text(wrong3)
                        .font(Font.custom("georgia",size: 20))
                    
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color(hue: 0.377, saturation: 0.566, brightness: 0.844))
                
                
                HStack{  Button("Minji") {
                    wrong4 = "❌"
                }
                .padding(.top)
                    Text(wrong4)
                    
                    
                    Button("Haerin") {
                        answer = " 💚"
                    }
                    .padding(.top)
                    Text(answer)
                        .font(Font.custom("georgia",size: 20))
                    
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.green)
            }
            .background(
                Image("girl")
            )
            
                           }
            
          
               
                
            }
            
        }
        
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
            
        }
        

    

