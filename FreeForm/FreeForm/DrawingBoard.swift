//
//  DrawingBoard.swift
//  FreeForm
//
//  Created by Pothu Sai Nandan on 22/11/23.
//

import SwiftUI

struct DrawingBoard: View {
    @State private var isNavigationActive: Bool = false

    var body: some View {
        
            
            VStack {
                //Text("Freeform")
                  //  .font(.title)
                    //.padding(.top)
                NavigationView{
                    NavigationLink(
                        destination:{ ContentView()},
                        label: {
                            Text("New Board")
                                .font(.headline)
                                .foregroundColor(.blue)
                                .padding()
                                .cornerRadius(10)
                      }
                        )
           
                }
                   
                    
                
          }
            .padding()
           .navigationTitle("ContentView")
        }
   }


//struct DrawingBoard_Previews: PreviewProvider {
  //  static var previews: some View {
    //    DrawingBoard()
  //  }
//}
