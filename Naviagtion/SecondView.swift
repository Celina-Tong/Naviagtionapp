//
//  SecondView.swift
//  Naviagtion
//
//  Created by Celina Tong on 7/28/23.
//

import SwiftUI

struct SecondView: View {
    @State private var answer = ""
    @State private var wrong1 = ""
    @State private var wrong2 = ""
    @State private var wrong3 = ""
    @State private var wrong4 = ""
    
    var body: some View {
        
        NavigationView {
            VStack{
                NavigationLink("Next Question",destination: thirdview())
          
                Text("Which New Jeans memeber is this?")
                    .font(Font.custom("Sundries-DEMO-NEW",size: 20))
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(hue: 0.671, saturation: 0.985, brightness: 0.707))
                    .padding([.top, .leading, .trailing], 4.0)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Image("minji")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(.all, 5.0)
                
                
                HStack {
                    
                    Button("Hanni"){
                        wrong1 = "❗"
                    }
                    .padding(.top)
                    Text(wrong1)
                        .font(Font.custom("georgia",size: 20))
                    
                    
                    
                    Button("Danielle") {
                        wrong2 = "❗"
                    }
                    .padding(.top)
                    Text(wrong2)
                        .font(Font.custom("georgia",size: 20))
                    
                    Button("Hyein") {
                        wrong3 = "❗"
                    }
                    .padding(.top)
                    Text(wrong3)
                        .font(Font.custom("georgia",size: 20))
                    
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color(hue: 0.636, saturation: 0.847, brightness: 0.982))
                
                
                HStack{  Button("Minji") {
                    answer = "💙"
                }
                .padding(.top)
                    Text(answer)
                    
                    
                    Button("Haerin") {
                        wrong4 = "❗"
                    }
                    .padding(.top)
                    Text(wrong4)
                        .font(Font.custom("georgia",size: 20))
                    
                    
                }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                }
                
                .background(
                    Image("girl")
                )
                
                
           
           

            }
        }
        
    }
    
    
    
    struct Previews_SecondView_Previews: PreviewProvider {
        static var previews: some View {
            SecondView()
        }
    }

