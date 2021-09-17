//
//  ContentView.swift
//  DemoCheckOrientation
//
//  Created by Higashihara Yoki on 2021/09/15.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text("Lets Check Orientation!")
            
            Text("UIDeviceOrientation: \(vm.deviceOrientation)")
            
            Text("UIInterfaceOrientation: \(vm.interfaceOrientation)")
            
            VStack(spacing: 10) {
                Button("check UIDeviceOrientation") {
                    vm.tapCheckDeviceOrientation()
                }
                
                Button("check UIInterfaceOrientation") {
                    vm.tapCheckInterfaceOrientation()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
