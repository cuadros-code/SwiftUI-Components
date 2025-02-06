//
//  FaceIDView.swift
//  SwiftUI-Components
//
//  Created by Kevin Cuadros on 6/02/25.
//

import SwiftUI
import LocalAuthentication

struct FaceIDView: View {
    
    @State private var isAuthenticate = false
    
    var body: some View {
        VStack {
            
            if isAuthenticate {
                Image(systemName: "checkmark.seal.fill")
                    .font(.system(size: 95))
                    .foregroundStyle(.green)
                
            } else {
                Image(systemName: "person.crop.circle.badge.exclamationmark")
                    .font(.system(size: 95))
                    .foregroundStyle(.red)
            }
            
            if isAuthenticate == false  {
                Button {
                    authenticate()
                } label: {
                    Label("Face ID", systemImage: "faceid")
                        .font(.title2)
                }
                .padding()
            }
        }
    }
    
    func authenticate() {
        let context = LAContext()
        var error: NSError?
        
        if context
            .canEvaluatePolicy(
                .deviceOwnerAuthenticationWithBiometrics,
                error: &error
            ) {
            
            let reason = "We need to unlock your data."
            
            context
                .evaluatePolicy(
                    .deviceOwnerAuthenticationWithBiometrics,
                    localizedReason: reason
                ) { success, error in
                    
                    if success {
                        isAuthenticate = true
                        print("Face ID OK")
                    } else  {
                        isAuthenticate = false
                        print("Can't authenticate")
                    }
                    
                }
            
        } else  {
            
        }
        
    }
}

#Preview {
    FaceIDView()
}
