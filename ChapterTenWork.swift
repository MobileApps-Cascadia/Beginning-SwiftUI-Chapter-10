//
//  ChapterTenWork.swift
//  Chapter10
//
//  Created by Kenny Luchau on 5/2/23.
//

import SwiftUI

struct ChapterTenWork: View {
    @State var message = ""
    var body: some View {
        VStack{
            Link(destination: URL(string: "https://mobas.atlassian.net/jira/software/c/projects/SUCAR/boards/22")!){
                Text("Jira")
            }
            
            VStack{
                Menu("Options") {
                    Button("Print ", action: printFile)
                    Button("Find", action: findFile)
                    Menu("Submenu") {
                        Button("Delete ", action: deleteFile)
                        Button("Save as", action: saveAsFile)
                        Button("Save ", action: saveFile)
                    }
                }
            }
            .padding(100)
        }
    }
    func printFile() {
        print("Print chosen")
    }
    func findFile() {
        print("Find chosen")
    }
    func deleteFile() {
        print("Delete chosen")
    }
    func saveFile() {
        print("Save chosen")
    }
    func saveAsFile() {
        print("Save as chosen Not save Specifically SAVE AS VERY SIMILAR NOT THE SAME OKAY?!")
    }
}
struct ChapterTenWork_Previews: PreviewProvider {
    static var previews: some View {
        ChapterTenWork()
    }
}
