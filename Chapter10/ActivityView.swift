//
//  ActivityView.swift
//  Chapter10
//
//  Created by Student Account on 5/2/23.
//

import SwiftUI

struct ActivityView: View {
    @State var message = ""
    @State var text = "Text Editor is here"
    var body: some View {
        VStack{
            VStack {
                Spacer()
                Link(destination: URL(string: "https://gitlab.com/cascadia-college/mobas/suite-career-ios")! ) {
                    Text("Click here to go to GitLab")
                        .underline()
                        .padding()
                        .background(Color.gray.opacity(0.5))
                }
            }
            VStack{
                Text(message)
                    .padding()
                Menu("File") {
                    Menu("More Options") {
                        Button("Save", action: saveFile)
                        Button("Save As", action: saveAsFile)
                        Button("Delete File", action: deleteFile)
                    }
                    Button("Find", action: findFile)
                    Button("Print", action: printFile)
                }
                .padding()
                .padding(.horizontal)
                .background(Capsule()
                    .fill(Color.gray.opacity(0.5)))
                .foregroundColor(.black)
                TextEditor(text: $text)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)

            }
        }
    }
    
    func findFile() {
        message = "Find chosen file"
    }
    func printFile() {
        message = "Print chosen file"
    }
    func saveFile() {
        message = "Save chosen file"
    }
    
    func saveAsFile() {
        message = "Save chosen file as..."
    }
    func deleteFile() {
        message = "Delete chosen file"
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
