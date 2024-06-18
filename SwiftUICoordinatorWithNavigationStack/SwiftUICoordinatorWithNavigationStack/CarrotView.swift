//
//  CarrotView.swift
//  SwiftUICoordinatorPatternWithNavigationStack
//
//  Created by 장혜령 on 6/19/24.
//

import SwiftUI

struct CarrotView: View {
  @EnvironmentObject private var coordinator: Coordinator
    var body: some View {
      List {
        Button("pop") {
          coordinator.pop()
        }
        
        Button("pop to root") {
          coordinator.popToRoot()
        }
      }
    }
}

#Preview {
    CarrotView()
}
