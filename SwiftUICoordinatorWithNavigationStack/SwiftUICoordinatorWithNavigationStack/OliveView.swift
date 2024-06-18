//
//  OliveView.swift
//  SwiftUICoordinatorPatternWithNavigationStack
//
//  Created by 장혜령 on 6/19/24.
//

import SwiftUI

struct OliveView: View {
  @EnvironmentObject private var coordinator: Coordinator
  var body: some View {
    List {
      Button("dismiss") {
        coordinator.dismissfullScreenCover()
      }
    }
  }
}

#Preview {
    OliveView()
}
