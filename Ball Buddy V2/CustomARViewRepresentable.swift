//
//  CustomARViewRepresentable.swift
//  Ball Buddy V2
//
//  Created by Benjamin Wilen on 3/12/23.
//

import SwiftUI

struct CustomARViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> CustomARView {
        ARVariables.arView = CustomARView()
        return ARVariables.arView
    }
    
    func updateUIView(_ uiView: CustomARView, context: Context) { }
}
