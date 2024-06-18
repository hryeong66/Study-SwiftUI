//
//  Coordinator.swift
//  SwiftUICoordinatorPatternWithNavigationStack
//
//  Created by 장혜령 on 6/19/24.
//

import SwiftUI

enum Page: String, Identifiable {
  case apple, banana, carrot
  var id: String { self.rawValue }
}

enum Sheet: String, Identifiable {
  case lemon
  var id: String { self.rawValue }
}

enum FullScreenCover: String, Identifiable {
  case olive
  var id: String { self.rawValue }
}

class Coordinator: ObservableObject {
  @Published var path = NavigationPath()
  @Published var sheet: Sheet?
  @Published var fullScreenCover: FullScreenCover?
  
  func push(_ page: Page) {
    path.append(page)
  }
  
  func present(sheet: Sheet) {
    self.sheet = sheet
  }
  
  func present(fullScreenCover: FullScreenCover) {
    self.fullScreenCover = fullScreenCover
  }
  
  func pop() {
    path.removeLast()
  }
  
  func popToRoot() {
    path.removeLast(path.count)
  }
  
  func dismissSheet() {
    self.sheet = nil
  }
  
  func dismissfullScreenCover() {
    self.fullScreenCover = nil
  }
  
  @ViewBuilder
  func build(page: Page) -> some View {
    switch page {
    case .apple:
      AppleView()
    case .banana:
      BananaView()
    case .carrot:
      CarrotView()
    }
  }
  
  @ViewBuilder
  func build(sheet: Sheet) -> some View {
    switch sheet {
    case .lemon:
      LemonView()
    }
  }
  
  @ViewBuilder
  func build(fullScreenCover: FullScreenCover) -> some View {
    switch fullScreenCover {
    case .olive:
      OliveView()
    }
  }
  
}
