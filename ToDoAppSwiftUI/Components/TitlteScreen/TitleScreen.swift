//
//  TitleScreen.swift
//  ToDoAppSwiftUI
//
//  Created by Álvaro Ferrández Gómez on 27/12/21.
//

import SwiftUI

struct TitleScreen: View {
    var titleScreenModel: TitleScreenModel

    var body: some View {
        VStack {
            Text(titleScreenModel.title)
                .font(.title3)
                .bold()
                .padding()
                .frame(maxWidth: .infinity, alignment: .center)
        }
    }
}

struct TitleScreenModel_Previews: PreviewProvider {
    static var previews: some View {
        TitleScreen(titleScreenModel: TitleScreenModel(title: "Ejemplo"))
    }
}
