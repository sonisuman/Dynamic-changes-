//
//  DishCellPreview.swift
//  DishCell
//
//  Created by Soni Suman on 17/02/20.
//  Copyright © 2020 Soni Suman. All rights reserved.
//

import Foundation
import SwiftUI

struct DishCellPreview: View {
    var dish: Dish
    var body : some View {
        HStack {
            Image(dish.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            VStack(alignment:.leading) {
                Text(dish.name)
                    .foregroundColor(Color.green)
                Text("$\(dish.price)")
            }
        }.padding(5)
}
}

#if DEBUG

struct DishCellPreview_Preview: PreviewProvider  {
    static var previews: some View {
        
        Group {
            
//            DishCellPreview().colorScheme(.dark)
//            DishCellPreview().previewDevice("iPhone SE")
//
//            DishCellPreview().previewLayout(.sizeThatFits)
//                .environment(\.sizeCategory, .extraSmall)
//
//            DishCellPreview().previewLayout(.sizeThatFits)
//                .environment(\.sizeCategory, .extraLarge)
//
//            DishCellPreview().previewLayout(.sizeThatFits)
//                .environment(\.sizeCategory, .extraExtraLarge)
            
            DishCellPreview(dish: Dish.all()[0] ).previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraExtraExtraLarge)
        }
        
    }
}

#endif
