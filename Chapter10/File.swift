//
//  File.swift
//  Chapter10
//
//  Created by Eddington, Nick on 5/2/23.
//
import SwiftUI

struct FileView: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            Menu("File") {
                Button("Find") {
                    print("Find button pressed")
                }
                Button("Print") {
                    print("Print button pressed")
                }
                Button("Save") {
                    print("Save button pressed")
                }
                Button("Save As") {
                    print("Save As button pressed")
                }
                Button("Delete File") {
                    print("Delete File button pressed")
                }
            }
            .menuStyle(BorderlessButtonMenuStyle())
            .padding(.horizontal)
            .padding(.top)
            
            TextEditor(text: $text)
                .padding()
            
            Link("Suite Career", destination: URL(string: "https://gitlab.com/cascadia-college/mobas/suite-career-ios")!)
                .padding(.bottom)
        }
    }
}
struct FileView_Previews: PreviewProvider {
    static var previews: some View {
        FileView()
    }
}

