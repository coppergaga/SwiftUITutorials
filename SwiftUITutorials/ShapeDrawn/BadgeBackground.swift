//
// Created by GaoXudong on 2021/3/25.
//

import Foundation
import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        GeometryReader { proxy in
            Path { path in
                var width = Double(min(proxy.size.width, proxy.size.height))
                let height = width
                let xScale: Double = 0.832
                let xOffset = (width * (1.0 - xScale)) / 2.0
                width *= xScale
                path.move(to: CGPoint(x: width * 0.95 + xOffset, y: height * (0.20 + Double(HexagonParameters.adjustment))))

                HexagonParameters.segments.forEach { segment in
                    path.addLine(to: CGPoint(x: width * Double(segment.line.x) + xOffset , y: height * Double(segment.line.y)))
                    path.addQuadCurve(
                            to: CGPoint(x: width * Double(segment.curve.x) + xOffset, y: height * Double(segment.curve.y)),
                            control: CGPoint(x: width * Double(segment.control.x) + xOffset, y: height * Double(segment.control.y))
                    )
                }
            }.fill(LinearGradient(
                    gradient: Gradient(colors: [Self.gradientStart, Self.gradientEnd]),
                    startPoint: UnitPoint(x: 0.5, y: 0),
                    endPoint: UnitPoint(x: 0.5, y: 0.6)
            )).aspectRatio(1, contentMode: .fit)
        }
    }

    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
