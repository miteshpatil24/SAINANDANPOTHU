//
//  ContentView.swift
//  FreeForm
//
//  Created by Pothu Sai Nandan on 22/11/23.
//

import SwiftUI
import PencilKit

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode
    
        @Environment(\.undoManager) var undoManager
    
    var body: some View {
        NavigationView {
            PencilKitView()
                .navigationBarItems(
                    leading: HStack {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                            
                        }) {
                           
                            Image(systemName: "chevron.left")
                        }
                       
                        Spacer()
                        Button(action: {
                            
                        }) {
                        Image(systemName: "arrow.uturn.left")
                            @Environment(\.undoManager) var undoManager
                        }
                    },
                    trailing: HStack {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "square.and.arrow.up")
                        }
                        Button(action: {
                            
                        }) {
                            Image(systemName: "square.filled.on.square")
                        }
                        Button(action: {
                            // Handle more options button action
                        }) {
                            Image(systemName: "ellipsis.circle")
                        }
                        Spacer()
                        Button(action: {
                            // Handle done button action
                        }) {
                            Text("Done")
                        }
                        
                    }
                )
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PencilKitView: UIViewRepresentable {
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        // Update logic, if needed
    }

    typealias UIViewType = PKCanvasView

    let toolPicker = PKToolPicker()

    func makeUIView(context: Context) -> PKCanvasView {
        let pencilKitCanvasView = PKCanvasView()

        pencilKitCanvasView.drawingPolicy = PKCanvasViewDrawingPolicy.anyInput

        toolPicker.addObserver(pencilKitCanvasView)
        toolPicker.setVisible(true, forFirstResponder: pencilKitCanvasView)

        pencilKitCanvasView.becomeFirstResponder()

        return pencilKitCanvasView
    }
}
