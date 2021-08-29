//
//  WavyCanvas.swift
//  WavyCanvas
//
//  Created by Lokeswari Satyanarayana on 28/08/21.
//

import SwiftUI

struct WaveCanvasView: View {
    let color: Color
    let isReversed: Bool
    
    var body: some View {
        TimelineView(.animation) { timeline in
            Canvas { context,size in
                let currentTime = timeline.date.timeIntervalSinceReferenceDate
                let xOffset = currentTime.remainder(dividingBy: 2)
                context.fill(Path().getWave(reversed: isReversed, size: size, xOffset: xOffset), with: .color(color))
            }
        }
    }
}
