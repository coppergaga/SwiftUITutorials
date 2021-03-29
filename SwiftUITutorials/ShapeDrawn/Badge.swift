//
// Created by GaoXudong on 2021/3/29.
//

import Foundation
import SwiftUI

struct Badge: View {
    static let rotationCount = 8

    var badgeSymbols: some View {
        ForEach(0..<Self.rotationCount) { (i: Int) in
            RotatedBadgeSymbol(angle: Angle.degrees((Double(i) / Double(Badge.rotationCount)) * 360.0))
        }.opacity(0.5)
    }

    var body: some View {
        ZStack {
            BadgeBackground()

            GeometryReader { proxy in
                badgeSymbols.scaleEffect(1.0 / 4.0, anchor: .top)
                .position(x: proxy.size.width / 2.0, y: (3.0 / 4.0) * proxy.size.height)
            }
        }.scaledToFit()
    }
}