//
//  Ambulance.swift
//  Ambulance
//
//  Created by testing on 01.01.2024.
//

import SwiftUI

struct Ambulance: Shape {
    func path(in rect: CGRect) -> Path {
        let scale = min(rect.width / 200, rect.height / 150)
        let newRect = CGRect(x: rect.midX - 100 * scale, y: rect.midY - 75 * scale, width: 200 * scale, height: 150 * scale)
        
        var path = Path()
        path.move(to: CGPoint(x: newRect.minX + 20 * scale, y: newRect.maxY))
        path.addLine(to: CGPoint(x: newRect.minX + 40 * scale, y: newRect.maxY - 20 * scale))
        path.addLine(to: CGPoint(x: newRect.maxX - 40 * scale, y: newRect.maxY - 20 * scale))
        path.addLine(to: CGPoint(x: newRect.maxX - 20 * scale, y: newRect.maxY))
        path.addLine(to: CGPoint(x: newRect.minX + 20 * scale, y: newRect.maxY))
        path.move(to: CGPoint(x: newRect.minX + 50 * scale, y: newRect.maxY))
        path.addArc(center: CGPoint(x: newRect.minX + 50 * scale, y: newRect.maxY), radius: 10 * scale, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 360), clockwise: true)
        path.move(to: CGPoint(x: newRect.maxX - 50 * scale, y: newRect.maxY))
        path.addArc(center: CGPoint(x: newRect.maxX - 50 * scale, y: newRect.maxY), radius: 10 * scale, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 360), clockwise: true)
        path.move(to: CGPoint(x: newRect.minX + 40 * scale, y: newRect.maxY - 20 * scale))
        path.addLine(to: CGPoint(x: newRect.minX + 35 * scale, y: newRect.maxY - 30 * scale))
        path.addLine(to: CGPoint(x: newRect.maxX - 35 * scale, y: newRect.maxY - 30 * scale))
        path.addLine(to: CGPoint(x: newRect.maxX - 40 * scale, y: newRect.maxY - 20 * scale))
        path.addLine(to: CGPoint(x: newRect.minX + 40 * scale, y: newRect.maxY - 20 * scale))
        path.move(to: CGPoint(x: newRect.midX - 10 * scale, y: newRect.maxY - 35 * scale))
        path.addLine(to: CGPoint(x: newRect.midX - 10 * scale, y: newRect.maxY - 25 * scale))
        path.addLine(to: CGPoint(x: newRect.midX + 10 * scale, y: newRect.maxY - 25 * scale))
        path.addLine(to: CGPoint(x: newRect.midX + 10 * scale, y: newRect.maxY - 35 * scale))
        path.addLine(to: CGPoint(x: newRect.midX - 10 * scale, y: newRect.maxY - 35 * scale))
        path.move(to: CGPoint(x: newRect.midX - 15 * scale, y: newRect.maxY - 30 * scale))
        path.addLine(to: CGPoint(x: newRect.midX - 15 * scale, y: newRect.maxY - 20 * scale))
        path.addLine(to: CGPoint(x: newRect.midX - 5 * scale, y: newRect.maxY - 20 * scale))
        path.addLine(to: CGPoint(x: newRect.midX - 5 * scale, y: newRect.maxY - 30 * scale))
        path.addLine(to: CGPoint(x: newRect.midX - 15 * scale, y: newRect.maxY - 30 * scale))
        return path
    }
}

#Preview {
    Ambulance()
}
