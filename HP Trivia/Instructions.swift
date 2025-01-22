//
//  Instructions.swift
//  HP Trivia
//
//  Created by Tomáš Dušek on 13.10.2024.
//

import SwiftUI

struct Instructions: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            InfoBackgroundImage()
            
            VStack {
                Image("appiconwithradius")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .padding(.top)
                // just this part of the screen will be scrollable
                ScrollView {
                    Text("How To Play")
                        .font(.largeTitle)
                        .padding()
                    
                    VStack (alignment: .leading) {
                        Text("Welcome to the HP Trivia! In this game, you will be asked random questions from the HP books and you must guess the right answer or you will lose points! 😱")
                            .padding([.horizontal, .bottom])
                        
                        
                        Text("Each question is worth 5 points, but if you guess a wrong answer, you lose 1 point.")
                            .padding([.horizontal, .bottom])
                        
                        
                        Text("If you are struggling with a question, there is a an option to reveal a hint or reveal the book that answers the question. But beware! Using these also subtracts 1 point.")
                            .padding([.horizontal, .bottom])
                        
                        
                        Text("When you seect the correct answer, you will be awarded all the points left for that question and they will be added to your total score.")
                            .padding([.horizontal])
                        
                    }
                    .font(.title3)
                    
                    Text("Good Luck!")
                        .font(.title)
                }
                .foregroundStyle(.black)
                
                Button ("Done") {
                    dismiss()
                }
                .doneButton()
                
                Spacer()
            }
        }
    }
}

#Preview {
    Instructions()
}
