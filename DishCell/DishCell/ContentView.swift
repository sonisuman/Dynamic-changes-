//
//  ContentView.swift
//  DishCell
//
//  Created by Soni Suman on 17/02/20.
//  Copyright © 2020 Soni Suman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var dishes = Dish.all()
    
    var body: some View {
        List {
            ForEach(dishes, id: \.name) { dish in
                DishCellPreview(dish: dish)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
