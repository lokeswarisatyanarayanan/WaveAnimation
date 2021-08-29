//
//  Path+Extension.swift
//  Path+Extension
//
//  Created by Lokeswari Satyanarayana on 29/08/21.
//

import SwiftUI

extension Path {
    func getWave(reversed: Bool = false, size: CGSize, xOffset: CGFloat, yOffset: CGFloat = 30) -> Path {
        let width = size.width
        let height = size.height
        let origin = CGPoint(x: reversed ? width : 0, y: height * 0.50)
        var path = Path()
        path.move(to: origin)
        if (reversed) {
            path.addQuadCurve(to: CGPoint(x: 0, y: origin.y + yOffset), control: .init(x: width * 0.75 * xOffset, y: origin.y + yOffset))
            path.addLine(to: CGPoint(x: 0, y: height * 0.50))
            path.addQuadCurve(to: CGPoint(x: width, y: origin.y - yOffset), control: .init(x: width * 0.5 * xOffset, y: origin.y - yOffset * xOffset))
            return path
        } else {
            path.addQuadCurve(to: CGPoint(x: width, y: origin.y - yOffset), control: .init(x: width * 0.5 * xOffset, y: origin.y - yOffset))
            path.addLine(to: CGPoint(x: width, y: height * 0.50))
            path.addQuadCurve(to: CGPoint(x: 0, y: origin.y + yOffset), control: .init(x: width * 0.75 * -xOffset, y: origin.y + yOffset * -xOffset))
            return path
        }
    }
}
