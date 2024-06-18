//
//  AppleView.swift
//  SwiftUICoordinatorPatternWithNavigationStack
//
//  Created by 장혜령 on 6/19/24.
//

import SwiftUI

struct AppleView: View {
  @EnvironmentObject private var coordinator: Coordinator
    var body: some View {
      List {
        Button("push 🍌") {
          coordinator.push(.banana)
        }
        Button("present 🍋") {
          coordinator.present(sheet: .lemon)
        }
        Button("present full screen 🫒") {
          coordinator.present(fullScreenCover: .olive)
        }
      }.navigationTitle("🍎")
    }
}

#Preview {
    AppleView()
}
