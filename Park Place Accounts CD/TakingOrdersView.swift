//
//  TakingOrdersView.swift
//  Park Place Accounts CD
//
//  Created by Greydon O'Keefe on 9/26/22.
//

import SwiftUI

enum AccountButton: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case clear = "AC"
}

enum PriceButton: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case clear = "AC"
    case decimal = "."
}

struct TakingOrdersView: View {
    
    @State var accountValue = "0"
    @State var priceValue = "0"
    
    let accountButtons: [[AccountButton]] = [
        [.seven, .eight, .nine],
        [.four, .five, .six],
        [.one, .two, .three],
        [.zero, .clear]
    ]
    
    let priceButtons: [[PriceButton]] = [
        [.seven, .eight, .nine],
        [.four, .five, .six],
        [.one, .two, .three],
        [.zero, .clear, .decimal]
    ]
    
    var body: some View {
        HStack {
            Color.gray.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Account: "+accountValue)
                    .font(.system(size:50))
                
                ForEach(accountButtons, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { item in
                            Button(action: {
                                self.accountTap(button: item)
                            }, label: {
                                Text(item.rawValue)
                                    .font(.system(size: 32))
                                    .frame(
                                        width: self.accountButtonWidth(item: item),
                                        height: self.buttonHeight()
                                    )
                                    .background(.black)
                                    .foregroundColor(.white)
                                    .cornerRadius(self.accountButtonWidth(item: item)/4)
                            })
                        }
                    }
                }
            }
            .frame(width: vstackWidth()) // end account vstack
            .padding(.leading, 50.0)
            
            VStack {
                Text("Amount: $"+priceValue)
                    .font(.system(size:50))
                
                ForEach(priceButtons, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { item in
                            Button(action: {
                                self.priceTap(button: item)
                            }, label: {
                                Text(item.rawValue)
                                    .font(.system(size: 32))
                                    .frame(
                                        width: self.priceButtonWidth(item: item),
                                        height: self.buttonHeight()
                                    )
                                    .background(.black)
                                    .foregroundColor(.white)
                                    .cornerRadius(self.priceButtonWidth(item: item)/4)
                            })
                        }
                    }
                }
            } // end price vstack
            .frame(width: vstackWidth())
            
            VStack {
                Text("#"+accountValue+" - $"+priceValue)
                    .font(.system(size: 50))
                
                Button(action: {
                    self.confirmTap()
                }, label: {
                    Text("CONFIRM")
                        .font(.system(size: 32))
                        .fontWeight(.bold)
                        .frame(
                            width: self.confirmButtonWidth(),
                            height: self.buttonHeight()
                        )
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(self.confirmButtonWidth()/6)
                    
                })

            }
            .frame(width: vstackWidth())
        }
        
    } // end of body
    
    func accountTap(button: AccountButton) {
        switch button {
        case .clear:
            self.accountValue = "0"
        default:
            let number = button.rawValue
            if self.accountValue == "0" {
                accountValue = number
            }
            else {
                self.accountValue = "\(self.accountValue)\(number)"
            }
        }
    }
    
    func priceTap(button: PriceButton) {
        switch button {
        case .clear:
            self.priceValue = "0"
        default:
            let number = button.rawValue
            if self.priceValue == "0" {
                priceValue = number
            }
            else {
                self.priceValue = "\(self.priceValue)\(number)"
            }
            
        }
    }
    
    func confirmTap() {
        PersistanceService.persistanceService.accounts[accountValue] = priceValue
        return
    }
    
    func accountButtonWidth(item: AccountButton) -> CGFloat {
        if item == .clear {
            return (UIScreen.main.bounds.width - (4*12)) / 5
        }
        return (UIScreen.main.bounds.width - (5*12)) / 10
    }
    
    func priceButtonWidth(item: PriceButton) -> CGFloat {
        return (UIScreen.main.bounds.width - (5*12)) / 10
    }
    
    func confirmButtonWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - (5*12)) / 5
    }
    
    func buttonHeight() -> CGFloat {
        return (UIScreen.main.bounds.width - (5*12)) / 10
    }
    
    func vstackWidth() -> CGFloat {
        return (UIScreen.main.bounds.width) / 3
    }
    
} // end of content view

struct TakingOrdersView_Previews: PreviewProvider {
    static var previews: some View {
        TakingOrdersView()
    }
}
