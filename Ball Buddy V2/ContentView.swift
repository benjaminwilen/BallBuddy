//
//  ContentView.swift
//  Ball Buddy V2
//
//  Created by Benjamin Wilen on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom){
            CustomARViewRepresentable()
                .ignoresSafeArea()
        Button {
          
            ARVariables.arView.snapshot(saveToHDR: false) { (image) in
              
              // Compress the image
              let compressedImage = UIImage(data: (image?.pngData())!)
              // Save in the photo album
              UIImageWriteToSavedPhotosAlbum(compressedImage!, nil, nil, nil)
            }
          
          } label: {
              Image(systemName: "camera")
                  .foregroundColor(Color.black)
              .frame(width:60, height:60)
              .font(.title)
              .background(.white.opacity(0.75))
              .cornerRadius(30)
              .padding()
          }
        }
    }
}

struct ARVariables{
  static var arView: CustomARView!
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
