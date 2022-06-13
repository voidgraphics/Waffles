//
//  Tableview.swift
//  Waffles
//
//  Created by Adrien Leloup on 06/07/2020.
//

import SwiftUI

struct Tableview: View {
    @EnvironmentObject var settings: SettingsModel
    var table: DatabaseTable
    @State private var showInfo = false
    
    var body: some View {
        Table(table.rows) {
            TableColumn("id") { DatabaseRow in
                Text("1")
            }
            TableColumn("name") { DatabaseRow in
                Text("Adrien")
            }
            TableColumn("lastname") { DatabaseRow in
                Text("Leloup")
            }
            TableColumn("email") { DatabaseRow in
                Text("adrien@whitecube.be")
            }
            TableColumn("created_at") { DatabaseRow in
                Text("2022-06-13 18:11:00")
            }
            TableColumn("updated_at") { DatabaseRow in
                Text("2022-06-13 18:11:00")
            }
        }
        .navigationTitle(table.name)
        .navigationSubtitle("\(table.rows.count) rows • 32kb")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button(action: {}) {
                    Image(systemName: "folder.badge.gear")
                }
            }
            ToolbarItem(placement: .status) {
                HStack {
                    Spacer()
                    Divider()
                    Spacer()
                }
                
            }
//            ToolbarItem(placement: .status) {
//                Button(action: { showInfo.toggle() }) {
//                    Image(systemName: "info.circle")
//                }
//                .sheet(isPresented: $showInfo) {
//                    Text("Info on the table").padding()
//                }
//            }
            ToolbarItem(placement: .primaryAction) {
                Button(action: {}) {
                    Image(systemName: "square.and.arrow.up")
                }
            }
        }
    }
}

//struct Tableview_Previews: PreviewProvider {
//    static var previews: some View {
//        Tableview(table: DatabaseTable(name: "Test table"))
//    }
//}
