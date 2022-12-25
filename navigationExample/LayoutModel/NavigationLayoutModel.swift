//
//  NavigationLayoutModel.swift
//  navigationExample
//
//  Created by 10lift on 25.12.2022.
//

import SwiftUI


struct Fruit: Identifiable {
  let id = UUID().uuidString
  let name: String
}

final class ViewModel: ObservableObject {
  init(fruits: [Fruit] = ViewModel.defaultFruits) {
    self.fruits = fruits
    self.selectedId = fruits[1].id
  }
  @Published var fruits: [Fruit]
  @Published var selectedId: String?
  static let defaultFruits: [Fruit] = ["Apple", "Orange", "Pear"].map({ Fruit(name: $0) })
}
