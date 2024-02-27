//
//  SecondView.swift
//  P1: Mirror Mood App
//
//  Created by Christopher Zhao24 on 2/22/24.
//
import SwiftUI
import Swift



struct SecondView: View {
    @State var input : String = ""
    
    
    var body: some View {
        ZStack{
            Image("BackgroundPicture")
            VStack {
                
                Spacer()
                    .frame(height: 60)
                
                Text("DESCRIBE HOW YOU FEEL")
                
                Spacer()
                
                FancyFlowerView()
                    .frame(width: 100, height: 100)
                    .fixedSize()
                
                
                
                TextField("Words", text: $input, axis: .vertical)
                    .frame(minWidth: 300, maxWidth: 300, minHeight: 20, maxHeight: 500)
                    .multilineTextAlignment(.leading)
                    .lineLimit(1...7)
                
                Spacer()
                
                HStack{
                    Text("Back")
                        .frame(width: 100, height: 50)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(12)
                        .padding()
                        .onTapGesture{
                            //next = false
                        }
                    
                    
                    Text("Continue")
                        .frame(width: 100, height: 50)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(12)
                        .padding()
                        .onTapGesture{
                            
                        }
                    
                    
                }
            }
            .frame(width: 300, height: 750)
        }
//.background(Rectangle())
        
        
        
      //  Text(input)
        
        }
    }

    #Preview {
        SecondView()
    }

