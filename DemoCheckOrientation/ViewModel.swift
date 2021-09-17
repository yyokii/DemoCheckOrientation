//
//  ViewModel.swift
//  DemoCheckOrientation
//
//  Created by Higashihara Yoki on 2021/09/15.
//

import Combine
import UIKit

final class ViewModel: ObservableObject {
    @Published var deviceOrientation: String = ""
    @Published var interfaceOrientation: String = ""
    
    init() {}
    
    func tapCheckDeviceOrientation() {
        let orientation = UIDevice.current.orientation
        deviceOrientation = orientation.describing
    }
    
    func tapCheckInterfaceOrientation() {
        let orientation = UIApplication.shared.windows.first?.windowScene?.interfaceOrientation ?? UIInterfaceOrientation.unknown
        interfaceOrientation = orientation.describing

    }
}

extension UIDeviceOrientation {
    var describing: String {
        switch self {
        case .portrait:
            return "portrait"
        case .portraitUpsideDown:
            return "portraitUpsideDown"
        case .landscapeLeft:
            return "landscapeLeft"
        case .landscapeRight:
            return "landscapeRight"
        case .faceUp:
            return "faceUp"
        case .faceDown:
            return "faceDown"
        default:
            return "not determined"
        }
    }
}

extension UIInterfaceOrientation {
    var describing: String {
        switch self {
        case .portrait:
            return "portrait"
        case .portraitUpsideDown:
            return "portraitUpsideDown"
        case .landscapeLeft:
            return "landscapeLeft"
        case .landscapeRight:
            return "landscapeRight"
        default:
            return "not determined"
        }
    }
}
