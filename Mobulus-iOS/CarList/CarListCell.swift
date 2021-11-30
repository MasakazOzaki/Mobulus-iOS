//
//  CarListCell.swift
//  Mobulus-iOS
//
//  Created by Masakaz Ozaki on 2021/11/30.
//

import SwiftUI
import Kingfisher

struct CarListCell: View {
    var car: Car
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Group {
                    VStack(alignment: .leading) {
                        Text(car.brand)
                            .font(.callout)
                            .bold()
                            .foregroundColor(.white)
                        Text(car.name)
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                }.background(LinearGradient(gradient: Gradient(colors: [.black, .clear]),
                                            startPoint: UnitPoint(x: 0, y: 0),
                                            endPoint: UnitPoint(x: 0, y: 1)))
                    .frame(maxWidth: .infinity)
                Spacer()
            }.frame(maxWidth: .infinity)
        }.background {
            KFImage(car.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
    }
}

struct CarListCell_Previews: PreviewProvider {
    static var previews: some View {
        CarListCell(car: .sample)
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
