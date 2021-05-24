//
//  Colors.swift
//  ImagesFontsColors-01
//
//  Created by Natalman Nahm on 5/24/21.
//

/*
 DARK MODE:NO CHANGES: In dark mode, The title and the subtitle color changed into white. I wasn't expecting much. It did what I was expecting it to do. I thought that the description title would chnage but didn't
 */

/*
 DARK MODE: REMOVED BACKGROUND: This time the background changed into dark. It actually illustrated the dark mode. The Description text did not change color.
 */

/*
 Only the description text did not change. I am assuming it's because I used a UI Standard color for it. Or it's just maybe because there is no substitute for color blue in the dark mode.
 */

import SwiftUI

struct ColorsAndFont: View {
    var body: some View {
        ZStack{
//            Color.gray.edgesIgnoringSafeArea(.all)
            VStack{
                Text("Aim High... Fly-Fight-Win")
                    .font(.headline)
                Text("Uno Ab Alto (One From on High)")
                    .font(.subheadline)
                    .foregroundColor(Color("customColor"))
                
                Image("aircraft")
                    .resizable()
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Text("War is not only a matter of equipment, artillery, group troops or air force; it is largely a matter of spirit, or morale.")
                    .foregroundColor(Color.blue)
                    .font(.system(size: 18.0))
                    .italic()
                Spacer()
            }
        }
    }
}

struct Colors_Previews: PreviewProvider {
    static var previews: some View {
        ColorsAndFont()
            .preferredColorScheme(.dark)
//            .preferredColorScheme(.light)
    }
}
