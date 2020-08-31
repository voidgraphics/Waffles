//
//  Tableview.swift
//  Waffles
//
//  Created by Adrien Leloup on 06/07/2020.
//

import SwiftUI

struct Tableview: View {
    @EnvironmentObject var settings: SettingsModel
    var table: Table
    @State private var showInfo = false
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView([.vertical, .horizontal]) {
                VStack {
                    TableComponent(columns: table.columns, rows: table.rows, rowPadding: settings.tableRowPadding) { column, row, value in
                        if let cell = value as? String {
                            Text(cell)
                        }
                    }
                    Spacer().background(Color.blue)
                }
                .frame(minWidth: geometry.size.width - 16, minHeight: geometry.size.height - 16)
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
}

struct Tableview_Previews: PreviewProvider {
    static var previews: some View {
        Tableview(table: Table(name: "Test table"))
    }
}
