@objc(northPluginDeviceTest) class northPluginDeviceTest : CDVPlugin {
	func setDevice(command: CDVInvokedUrlCommand) {
		var pluginResult = CDVPluginResult(
			status: CDVCommandStatus_ERROR
		)

		let deviceType = command.arguments[0] as? String ?? ""

		if deviceType.characters.count > 0 {

			debugPrint(deviceType);
            
            switch deviceType {
                case "iPhone4s":
                    let width: CGFloat = 320.0
                    let height: CGFloat = 480.0
                    
                    self.viewController.view.frame = CGRectMake(UIScreen.mainScreen().bounds.width-width, UIScreen.mainScreen().bounds.height-height, width, height);
                break;
                case "iPhoneSE":
                    
                    let width: CGFloat = 320.0
                    let height: CGFloat = 568.0
                    
                    self.viewController.view.frame = CGRectMake(UIScreen.mainScreen().bounds.width-width, UIScreen.mainScreen().bounds.height-height, width, height);
                break;
                case "iPhone6":
                    
                    let width: CGFloat = 375.0
                    let height: CGFloat = 667.0
                    
                    self.viewController.view.frame = CGRectMake(UIScreen.mainScreen().bounds.width-width, UIScreen.mainScreen().bounds.height-height, width, height);
                break;
                case "iPhone6Plus":
                    let width: CGFloat = 414.0
                    let height: CGFloat = 736.0
                    
                    self.viewController.view.frame = CGRectMake(UIScreen.mainScreen().bounds.width-width, UIScreen.mainScreen().bounds.height-height, width, height);
                break;
                default:
                
                break;
            }

			/* UIAlertController is iOS 8 or newer only. */
			/*let toastController: UIAlertController = 
				UIAlertController(
					title: "", 
					message: msg, 
					preferredStyle: .Alert
				)

			self.viewController?.presentViewController(
				toastController, 
				animated: true, 
				completion: nil
			)

			let duration = Double(NSEC_PER_SEC) * 3.0
			
			dispatch_after(
				dispatch_time(
					DISPATCH_TIME_NOW, 
					Int64(duration)
				), 
				dispatch_get_main_queue(), 
				{ 
					toastController.dismissViewControllerAnimated(
						true, 
						completion: nil
					)
				}
			)

			pluginResult = CDVPluginResult(
				status: CDVCommandStatus_OK,
				messageAsString: msg
			)*/
		}

		self.commandDelegate!.sendPluginResult(
			pluginResult, 
			callbackId: command.callbackId
		)
	}
}