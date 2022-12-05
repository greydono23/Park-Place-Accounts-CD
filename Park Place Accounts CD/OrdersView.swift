//
//  OrdersView.swift
//  Park Place Accounts CD
//
//  Created by Greydon O'Keefe on 9/26/22.
//

import SwiftUI
import CoreData

struct OrdersView: View {
//    @Environment(\.managedObjectContext) var moc
//    @FetchRequest(sortDescriptors: []) var orders: FetchedResults<>

    var body: some View {
        
        VStack {
            Text("All Orders")

//            List(orders) { order in
//                Text("add")
//            }

            Button("Add") {
//                let accountNums = [1, 2, 3, 4, 5, 6]
//                let prices = [8 ,9, 10, 11]
//
//                let accountNum = accountNums.randomElement()!
//                let price = prices.randomElement()!

//                let order = OrderItem(context: moc)
//                order.account = Int16(accountNum)
//                order.amount = Float(price)
//
//                try? moc.save()

            }
            
        }
    }
}


struct OrdersView_Previews: PreviewProvider {
    static var previews: some View {
        OrdersView()
    }
}
