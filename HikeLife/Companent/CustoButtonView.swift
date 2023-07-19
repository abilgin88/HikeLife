//
//  CustoButtonView.swift
//  HikeLife
//
//  Created by Abdullah Bilgin on 7/19/23.
//

import SwiftUI

struct CustoButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .white,
                            .customGreenLight,
                            .customGreenMedium],
                        startPoint: .top,
                        endPoint: .bottom)
                )
            Circle()
                .stroke(
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom),
                    lineWidth: 4)
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom)
                )
            
        } //: ZSTACK
        .frame(width: 58, height: 58)
    }
}

struct CustoButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustoButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
