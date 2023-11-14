//
//  ContentView.swift
//  swiftUIPractice
//
//  Created by 황인호 on 11/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Color.black
                VStack {
                    Image(.어벤져스엔드게임)
                        .resizable()
                        .ignoresSafeArea()
                    
                    Spacer(minLength: 170)
                    
                }
                
                Image(.background)
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    HStack(spacing: 20) {
                        Text("N")
                            .foregroundStyle(.white)
                            .fontWeight(.black)
                            .font(.system(size: 60))
                        TopViewLabel(text: "TV 프로그램")
                        TopViewLabel(text: "영화")
                        TopViewLabel(text: "내가 찜한 콘텐츠")
                    }
                    Spacer()
                    HStack(spacing: 20) {
                        middleButton(text: "내가 찜한 컨텐츠", image: "checkmark")
                        
                        Button(action: {
                            print("ddd")
                        }, label: {
                            Label(" 재생 ", systemImage: "play.fill")
                                .fixedSize(horizontal: true, vertical: false)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                        })
                        .tint(Color.white)
                        .foregroundStyle(.black)
                        .buttonStyle(.borderedProminent)
                        .padding(20)
                        
                        middleButton(text: "정보", image: "info.circle")
                            .padding(20)
                    }
                    
                        
                    VStack {
                        HStack {
                            Text("미리보기")
                                .foregroundStyle(.white)
                                .font(.system(size: 25))
                                .fontWeight(.heavy)
                            Spacer()
                        }
    
                        HStack {
                            bottomView(imageName: "명량")
                            bottomView(imageName: "극한직업")
                            bottomView(imageName: "도둑들")
                        }
                    }
                }
                
                
                
            }
            
            
            
            
        }
    }
}


#Preview {
    ContentView()
}

struct TopViewLabel: View {
    let text: String
    var body: some View {
        Text(text)
            .foregroundStyle(.white)
            .fontWeight(.heavy)
            .font(.system(size: 20))
    }
}

struct middleButton: View {
    let text: String
    let image: String
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: image)
            Text(text)
        }
        .foregroundStyle(.white)
    }
}

struct bottomView: View {
    let imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
    }
}
