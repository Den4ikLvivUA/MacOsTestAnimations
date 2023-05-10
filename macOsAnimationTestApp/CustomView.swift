//
//  CustomView.swift
//  macOsAnimationTestApp
//
//  Created by Denys on 10.05.2023.
//

import SwiftUI

struct CustomView: View {
    @State var isToggled: Bool = false
    
    var body: some View {
        VStack {
            content
                .frame(width: isToggled ? 550 : 150,
                       height: isToggled ? 550 : 150)
                .padding(.all, 50)
        }
        .background(.white)
    }
    
    var content: some View {
        HStack {
            VStack {
                Image(systemName: "apple.logo")
                    .frame(width: 50, height: 50)
                    .aspectRatio(1.0, contentMode: .fit)
                    .padding(.all, 10)
                    .background(Color.red)
                    .cornerRadius(10)
                    .onTapGesture {
//                        withAnimation {
                            isToggled.toggle()
//                        }
                    }
                    .offset(y: isToggled ? -5 : 0)
                    .animation(.interpolatingSpring(stiffness: 1000, damping: 30, initialVelocity: 30))
                
                Spacer(minLength: isToggled ? 350 : 100)
            }
            
            Spacer(minLength: isToggled ? 350 : 100)
        }
        .padding()
        .border(.gray.opacity(0.3), width: 8)
        .cornerRadius(25)
        .background(.black)
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView()
    }
}
