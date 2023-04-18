//
//  DemoView.swift
//  Chapter10
//
//  Created by Mike Panitz on 4/17/23.
//

import Foundation
import SwiftUI

struct DemoView: View {
    @State var message = ""
    var body: some View {
        VStack {
            VStack {
                Spacer()
                Link(destination: URL(string: "https://www.apple.com")! ) {
                    Text("Click here to go to Apple.com")
                        .underline()
                }
                Spacer()
            }
            VStack {
                Text(message)
                    .padding()
                Menu("Options") {
                    Button("Open ", action: openFile)
                    Button("Find", action: findFile)
                    Button("Delete...", action: deleteFile)
                }
                VStack {
                    Spacer()
                    Menu() {
                        Button("Open ", action: {
                            message = "Open chosen"
                        })
                        Button("Find", action: {
                            message = "Find chosen"
                        })
                        Button("Delete...", action: {
                            message = "Delete chosen"
                        })
                    } label: {
                        Image(systemName: "1.circle")
                            .resizable()
                            .frame(width: 50, height: 50)
                        
                        // Textbook example:
                        //                Text("Options")
                        //                    .font(.largeTitle)
                        //                    .foregroundColor(.purple)
                        //                    .italic()
                    }
                    Spacer()
                }
                VStack {
                    Menu("Options") {
                        Button("Open ", action: openFile)
                        Button("Find", action: findFile)
                        Button("Delete...", action: deleteFile)
                        Menu("Submenu") {
                            Button("Copy Format", action: openFile)
                            Button("Paste Format", action: findFile)
                        }
                    }
                }
            }
        }
        .padding()
    }
    func openFile() {
        message = "Open chosen"
    }
    func findFile() {
        message = "Find chosen"
    }
    func deleteFile() {
        message = "Delete chosen"
    }
}



struct DemoView_Previews: PreviewProvider {
    static var previews: some View {
        DemoView()
    }
}
