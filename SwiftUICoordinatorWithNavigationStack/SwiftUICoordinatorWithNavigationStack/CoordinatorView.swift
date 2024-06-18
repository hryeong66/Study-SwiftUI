//
//  CoordinatorView.swift
//  SwiftUICoordinatorPatternWithNavigationStack
//
//  Created by 장혜령 on 6/19/24.
//

import SwiftUI

struct CoordinatorView: View {
  @StateObject private var coordinator = Coordinator()
  
    var body: some View {
      NavigationStack(path: $coordinator.path) {
        // 처음 시작할 화면
        coordinator.build(page: .apple)
          .navigationDestination(for: Page.self) { page in
            coordinator.build(page: page)
          }
          .sheet(item: $coordinator.sheet) { sheet in
            coordinator.build(sheet: sheet)
          }
          .fullScreenCover(item: $coordinator.fullScreenCover) { fullScreenCover in
            coordinator.build(fullScreenCover: fullScreenCover)
          }
      }.environmentObject(coordinator)
    }
}

#Preview {
    CoordinatorView()
}
