//
//  ContentView.swift
//  spotify
//
//  Created by Simra Shaik on 2/21/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.gray.opacity(0.8), .black],
                           startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            VStack {
                //top bar
                HStack {
                    Image(systemName: "chevron.down")
                        .font(.system(size: 18, weight: .semibold))

                    Spacer()

                    VStack(spacing: 2) {
                        Text("PLAYING FROM...")
                            .font(.system(size: 10, weight: .semibold))
                            .opacity(0.7)
                        Text("my playlist!")
                            .font(.system(size: 13, weight: .bold))
                    }

                    Spacer()

                    Image(systemName: "ellipsis")
                        .font(.system(size: 18, weight: .semibold))
                }
                .padding(.horizontal, 20)
                .padding(.top, 10)

                Spacer()

                //album cover
                Image("strawberryfieldsforever")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 350)
                    .shadow(radius: 10)

                Spacer()

                //song info
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Strawberry Fields Forever")
                            .font(.system(size: 22, weight: .bold))
                        Text("The Beatles")
                            .font(.system(size: 14, weight: .regular))
                            .opacity(0.7)
                    }
                    Spacer()
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                        .font(.system(size: 20))
                }
                .padding(.horizontal)

                //progress bar
                VStack(spacing: 5) {
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.white.opacity(0.5))
                        .frame(height: 4)
                    HStack {
                        Text("0:00")
                            .font(.system(size: 11, weight: .regular))
                        Spacer()
                        Text("-4:08")
                            .font(.system(size: 11, weight: .regular))
                    }
                }
                .padding(.horizontal)
                .padding(.top, 10)

                //playback controls
                HStack(spacing: 40) {
                    Image(systemName: "shuffle")
                        .font(.system(size: 20, weight: .regular))
                        .foregroundColor(.green)

                    Image(systemName: "backward.fill")
                        .font(.system(size: 28, weight: .regular))
                        .foregroundColor(.white)

                    ZStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 60, height: 60)
                        Image(systemName: "pause.fill")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(.black)
                    }

                    Image(systemName: "forward.fill")
                        .font(.system(size: 28, weight: .regular))
                        .foregroundColor(.white)

                    Image(systemName: "repeat")
                        .font(.system(size: 20, weight: .regular))
                        .foregroundColor(.green)
                }
                .padding(.top, 20)

                Spacer()

                //bottom icons
                HStack {
                    Image(systemName: "hifispeaker.2.fill")
                        .font(.system(size: 20, weight: .regular))

                    Spacer()

                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 20, weight: .regular))

                    Spacer()

                    Image(systemName: "music.note.list")
                        .font(.system(size: 20, weight: .regular))
                }
                .padding(.horizontal, 50)
                .padding(.bottom, 20)
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    ContentView()
}
