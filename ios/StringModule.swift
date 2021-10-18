import Foundation
import UIKit

@objc(StringModule)

class StringModule: NSObject, RCTBridgeModule {
  
  static func moduleName() -> String! {
    return "StringModule "
  }
  
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  @objc func showMessage (_ message: NSString)-> Void {
    let modal = UIAlertController(title: nil, message: message as? String, preferredStyle: .alert)
    
    DispatchQueue.main.async {
      (UIApplication.shared.delegate as? AppDelegate)?.window.rootViewController?.present(modal, animated: true, completion: nil)
    }
    
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: {
      modal.dismiss(animated: true, completion: nil)
    })
  }
}
