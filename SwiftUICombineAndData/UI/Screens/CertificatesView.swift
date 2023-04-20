//
//  CertificatesView.swift
//  SwiftUICombineAndData
//
//  Created by Brenda Saavedra  on 19/04/23.
//

import SwiftUI

struct CertificatesView: View {
    @StateObject var certificateVM =  CertificateViewModel()
    @State private var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(certificateVM.certificates, id: \.id) { certificate in
                CertificateCard(certificate: certificate)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .background(AccountBackground())
    }
}

//MARK: - Preview
#if DEBUG
struct CertificatesView_Previews: PreviewProvider {
    static var previews: some View {
        CertificatesView()
    }
}
#endif