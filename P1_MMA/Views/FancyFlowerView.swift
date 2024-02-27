//
//  FancyFlowerView.swift
//  P1: Mirror Mood App
//
//  Created by Christopher Zhao24 on 2/22/24.
//

import SwiftUI

struct FancyFlowerView: View {
    var body: some View{
        ZStack{
          //  Color.white.ignoresSafeArea(.all, edges: .all)
            VStack{
                MainFlower()
            }
        }
    }
}

#Preview {
    FancyFlowerView()
}

struct MainFlower: View{
    
    @State private var rPetal = false
    @State private var lPetal = false
    @State private var mlPetal = false
    @State private var mrPetal = false
    @State private var customShadow = false
    
    
    var body: some View{
        ZStack{
            ZStack{
                Image(systemName: "diamond.fill")
                    .resizable()
                    .frame(width: 40, height: 110, alignment: .center) //middle
                    .rotationEffect(.degrees(0), anchor: .bottom)
                    .foregroundColor(.white)
                    
                
                Image(systemName: "diamond.fill")
                    .resizable()
                    .frame(width: 40, height: 110, alignment: .center) //middle left
                    .foregroundColor(.white)
                    
                
                Image(systemName: "diamond.fill")
                    .resizable()
                    .frame(width: 40, height: 110, alignment: .center) //left
                    .rotationEffect(.degrees(mlPetal ? -25 : -7.5), anchor: .bottom)
                    .animation(Animation.easeInOut(duration: 2).delay(2).repeatForever(autoreverses: true))
                    .onAppear{
                        mlPetal.toggle()
                    }
                    .foregroundColor(.red)
                
                
                Image(systemName: "diamond.fill")
                    .resizable()
                    .frame(width: 40, height: 110, alignment: .center) //middle
                    .foregroundColor(.gray)
                
                
                Image(systemName: "diamond.fill")
                    .resizable()
                    .frame(width: 40, height: 110, alignment: .center) //right
                    .rotationEffect(.degrees(mlPetal ? 25 : 7.5), anchor: .bottom)
                    .animation(Animation.easeInOut(duration: 2).delay(2).repeatForever(autoreverses: true))
                    .onAppear{
                        mrPetal.toggle()
                    }
                    .foregroundColor(.blue)
                
                
                Image(systemName: "diamond.fill")
                    .resizable()
                    .frame(width: 40, height: 110, alignment: .center) //left
                    .rotationEffect(.degrees(mlPetal ? -50 : -15), anchor: .bottom)
                    .animation(Animation.easeInOut(duration: 2).delay(2).repeatForever(autoreverses: true))
                    .onAppear{
                        lPetal.toggle()
                    }
                    .foregroundColor(.yellow)
                
                Image(systemName: "diamond.fill")
                    .resizable()
                    .frame(width: 40, height: 110, alignment: .center) //right
                    .rotationEffect(.degrees(mlPetal ? 50 : 15), anchor: .bottom)
                    .animation(Animation.easeInOut(duration: 2).delay(2).repeatForever(autoreverses: true))
                    .onAppear{
                        rPetal.toggle()
                    }
                    .foregroundColor(.green)
            }
            .shadow(color: Color.purple, radius: customShadow ? 30 : 0)
            .hueRotation(Angle(degrees: customShadow ? 0 : 165))
            .animation(Animation.easeInOut(duration: 2).delay(2).repeatForever(autoreverses: true))
            .onAppear{
                customShadow.toggle()
            }
            
        }
        .frame(width: 250, height: 250)
    }
        
    
}
