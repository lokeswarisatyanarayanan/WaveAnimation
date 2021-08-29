//
//  ContentView.swift
//  WaveAnimation
//
//  Created by Lokeswari Satyanarayana on 29/08/21.
//

import SwiftUI

struct WaveAnimation: View {
    
    let frameSize: CGFloat = 200
    @State var startAnimation = false
    @State var sliderValue: Double = 0
    
    var waves: some View {
        ZStack {
            WaveCanvasView(color: .purple.opacity(0.5), isReversed: true)
            WaveCanvasView(color: .cyan.opacity(0.5), isReversed: false)
        }
    }
    
    var body: some View {
        VStack {
            VStack {
                Spacer()
                    .fillScreen(alignment: .top)
                waves
                Spacer()
                    .frame(height: sliderValue * frameSize/2)
            }
            .frame(width: frameSize,
                   height: frameSize)
            .border(Color.blue,
                    width: 1)
            Slider(value: $sliderValue,
                   in: 0...1)
                .frame(width: frameSize)
        }
    }
}

struct WaveAnimation_Previews: PreviewProvider {
    static var previews: some View {
        WaveAnimation()
    }
}
