//
//  SearchBarStyle.swift
//  Proxima paragem
//
//  Created by Carl on 2024/7/24.
//

import Foundation
import SwiftUI

struct SearchBarStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(5)
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.yellow, lineWidth: 2)
            )
            .foregroundStyle(.yellow)
            .padding(.horizontal, 10)
    }
}

extension View {
    func searchBarStyle() -> some View {
        self.modifier(SearchBarStyle())
    }
}
