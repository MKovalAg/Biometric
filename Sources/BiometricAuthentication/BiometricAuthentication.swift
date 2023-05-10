import Foundation
import LocalAuthentication

public class BiometricAuthentication {
    
    public static let shared = BiometricAuthentication()
    let context = LAContext()
    var error: NSError?
    
    public func authenticate(reason: String, completion: @escaping (Bool, Error?) -> Void) {
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, error in
                completion(success, error)
            }
        }
    }
}
