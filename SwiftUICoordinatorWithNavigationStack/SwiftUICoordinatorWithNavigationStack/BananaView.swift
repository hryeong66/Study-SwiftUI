//
//  BananView.swift
//  SwiftUICoordinatorPatternWithNavigationStack
//
//  Created by 장혜령 on 6/19/24.
//

import SwiftUI

struct BananaView: View {
  @EnvironmentObject private var coordinator: Coordinator
    var body: some View {
      List {
        Button("push 🥕") {
          coordinator.push(.carrot)
        }
        Button("pop") {
          coordinator.pop()
        }
      }.navigationTitle("🍌")
    }
}

#Preview {
    BananaView()
}
