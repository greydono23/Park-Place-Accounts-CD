//
//  ContentView.swift
//  Park Place Accounts CD
//
//  Created by Greydon O'Keefe on 9/26/22.
//

import SwiftUI


struct ContentView: View {
    
//    @FetchRequest(sortDescriptors: []) var orders: FetchedResults<Item>
        
    var body: some View {
        
        HStack {
            
            NavigationView {
                
                HStack {
                    
                    VStack {
                        NavigationLink(
                            destination: TakingOrdersView(),
                            label: {
                                Text("Take Orders")
                                    .font(.system(size:30))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .padding()
                                    .frame(
                                        width: 250,
                                        height: 100
                                    )
                                    .background(.red)
                                    .cornerRadius(250/8)
                            }
                        )
                        .padding()
                        // Hello World
                        NavigationLink(
                            destination: OrdersView(),
                            label: {
                                Text("View Your Orders")
                                    .font(.system(size:30))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .padding()
                                    .frame(
                                        width: 250,
                                        height: 100
                                    )
                                    .background(.red)
                                    .cornerRadius(250/8)
                            }
                        )
                        .padding()
                                                
                        NavigationLink(
                            destination: TotalsView(),
                            label: {
                                Text("View Totals")
                                    .font(.system(size:30))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .padding()
                                    .frame(
                                        width: 250,
                                        height: 100
                                    )
                                    .background(.red)
                                    .cornerRadius(250/8)
                            }
                        )
                        .padding()
                    }
                }
                VStack(alignment: .leading) {
                    Text("Park")
                        .font(.system(size: 100))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black)
                    Text("Place")
                        .font(.system(size: 100))
                        .fontWeight(.heavy)
                        .padding(.leading, 40.0)
                    Text("Bagels")
                        .font(.system(size: 100))
                        .fontWeight(.heavy)
                        .padding(.leading, 80.0)
                        .frame(width: 500.0)
                    Text("Accounts")
                        .font(.system(size: 100))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.red)
                        .multilineTextAlignment(.leading)
                        .lineLimit(0)
                        .padding(.leading, 160.0)
                        .frame(width: 650.0)
                }
                .padding(.bottom, 50.0)
                .frame(width: nil)
            }
            }
            
            
            
        } // end of body
    
        

    } // end of content view


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//struct ContentView: View {
//    @Environment(\.managedObjectContext) private var viewContext
//
//    @FetchRequest(
//        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
//        animation: .default)
//    private var items: FetchedResults<Item>
//
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
//                    } label: {
//                        Text(item.timestamp!, formatter: itemFormatter)
//                    }
//                }
//                .onDelete(perform: deleteItems)
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
//            Text("Select an item")
//        }
//    }
//
//    private func addItem() {
//        withAnimation {
//            let newItem = Item(context: viewContext)
//            newItem.timestamp = Date()
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//
//    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            offsets.map { items[$0] }.forEach(viewContext.delete)
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//}
//
//private let itemFormatter: DateFormatter = {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .short
//    formatter.timeStyle = .medium
//    return formatter
//}()
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//    }
//}
