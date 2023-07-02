//
//  ContentView.swift
//  L2 Demo
//
//  Created by Carl Irven Nykuluz F. Millanes on 7/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 20.0){
                Image("gradient-japanese")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .cornerRadius(15)
                    .padding(.all)
                HStack{
                    Text("Japanese Mansion")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    VStack{
                        HStack{
                            
                            ForEach(0..<5){ index in
                                if(index < 4) {
                                    Image(systemName: "star.fill")
                                } else{
                                    Image(systemName: "star.leadinghalf.filled")
                                }
                            }
                        }
                        
                        Text("(Reviews 361)")
                        
                    }
                    .foregroundColor(.orange)
                    .font(.caption)
                }
                Text("Ranked to be the best tourist spot in Japan")
                    .font(.headline)
                    
                HStack{
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                        
                }
                .foregroundColor(.gray)
                .font(.caption)
                
                 HStack(alignment: .center){
                     
                     Spacer()
                     Button("Book Now!"){
                         print("Booked a ticket to Japanese Mansion")
                         
                     }
                     .foregroundColor(.blue)
                     .font(.subheadline)
                     .fontWidth(.expanded)
                     .fontDesign(.monospaced)
                     .overlay(
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 90, height: 0.5)
                        , alignment: .bottom)
                     Spacer()
                     
                 }
                 .frame(width: 140.0, height: 40.0)
                 .background(Rectangle()
                    .foregroundColor(.orange)
                    .cornerRadius(15)
                    .shadow(radius: 30))
                
            }
             .padding()
             .background(Rectangle()
                .foregroundColor(.white)
                .cornerRadius(15)
                .shadow(radius: 15))
             .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
