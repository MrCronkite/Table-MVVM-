//
//  AuthService.swift
//  VkAppNews
//
//  Created by admin1 on 1.08.22.
//

import Foundation
import VK_ios_sdk


class AuthService: NSObject, VKSdkDelegate, VKSdkUIDelegate {
    
    private let appId = "8232837"
    private let vkSdk: VKSdk
    
    override init(){
        vkSdk = VKSdk.initialize(withAppId: appId)
        super.init()
        print("VkSdk")
        vkSdk.register(self)
        vkSdk.uiDelegate = self
    }
    
    func wakeUpSession(){
        let scope = ["offline"]
        VKSdk.wakeUpSession(scope) {(state, error) in
            switch state {
            case .initialized:
                print("initialized")
            case .authorized:
                print("authorized")
            default:
                fatalError(error!.localizedDescription)
            }
            
        }
    }
    
    func vkSdkAccessAuthorizationFinished(with result: VKAuthorizationResult!) {
        print("func")
    }
    
    func vkSdkUserAuthorizationFailed() {
        print("func")
    }
    
    func vkSdkShouldPresent(_ controller: UIViewController!) {
        print("func")
    }
    
    func vkSdkNeedCaptchaEnter(_ captchaError: VKError!) {
        print("func")
    }
}
