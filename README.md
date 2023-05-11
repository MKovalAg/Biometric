# BiometricAuthentication

## 1. You need to add a key to info.plist:

- Privacy - Face ID Usage Description

## 2. Method for using face/touch ID:
    
    ```
    func checkBiometric(successCallback: @escaping () -> Void, errorCallback: @escaping (Error) -> Void) {
        biometric.authenticate(reason: "Please, authorization") { [weak self] success, error in
            if success {
                DispatchQueue.main.async {
                    guard success, error == nil else {
                        // Обработка случая нераспознания
                        self?.showAlertError(text: "Error")
                        return
                    }
                    // Обработка успешного распознавания
                    successCallback()
                }
            } else {
                if let error = error {
                    // Обработка ситуации, когда нет доступа к face/touch id
                    self?.showAlertError(text: "Error")
                    errorCallback(error)
                }
            }
        }
    }
    ```

## 3. Callback processing:

    ```
    checkBiometric {
        print("Successful recognition")
    } errorCallback: { error in
        print("Error: \(error.localizedDescription)")
    }
    ```
