@objc(northPluginDeviceTest) class northPluginDeviceTest : CDVPlugin {
    var width: CGFloat = 414.0
    var height: CGFloat = 736.0
    var anchorOffset: CGFloat = 0.0
    let animateDuration = 0.35
    
	func setDevice(command: CDVInvokedUrlCommand) {
		var pluginResult = CDVPluginResult(
			status: CDVCommandStatus_ERROR
		)

		let deviceType = command.arguments[0] as? String ?? ""

		if deviceType.characters.count > 0 {

			debugPrint(deviceType);
            
            switch deviceType {
                case "iPhone4s":
                    self.self.width = 320.0
                    height = 480.0
                break;
                case "iPhoneSE":
                    self.width = 320.0
                    self.height = 568.0
                break;
                case "iPhone6":
                    self.width = 375.0
                    self.height = 667.0
                break;
                case "iPhone6Plus":
                    self.width = 414.0
                    self.height = 736.0
                break;
                default:
                    self.width = 414.0
                    self.height = 736.0
                break;
            }
            
            UIView.animateWithDuration(animateDuration, delay: 0, options: .CurveEaseInOut, animations: {
                var viewFrame = self.viewController.view.frame
                viewFrame = CGRectMake(self.anchorOffset, UIScreen.mainScreen().bounds.height - self.height, self.width, self.height)
                
                self.viewController.view.frame = viewFrame
                }, completion: { finished in
                    debugPrint("Finished");
            })
            
            pluginResult = CDVPluginResult(
                status: CDVCommandStatus_OK
            )
		}
        

		self.commandDelegate!.sendPluginResult(
			pluginResult, 
			callbackId: command.callbackId
		)
	}
    
    func anchor(command: CDVInvokedUrlCommand) {
        var pluginResult = CDVPluginResult(
            status: CDVCommandStatus_ERROR
        )
        
        let side = command.arguments[0] as? String ?? ""
        
        switch side {
        case "left":
            self.anchorOffset = 0.0
            break;
        case "right":
            self.anchorOffset = UIScreen.mainScreen().bounds.width - self.width
            break;
        default:
            
            break;
        }
        
        UIView.animateWithDuration(animateDuration, delay: 0, options: .CurveEaseInOut, animations: {
            var viewFrame = self.viewController.view.frame
            viewFrame = CGRectMake(self.anchorOffset, UIScreen.mainScreen().bounds.height - self.height, self.width, self.height)
            
            self.viewController.view.frame = viewFrame
            }, completion: { finished in
                debugPrint("Finished");
        })
        
        pluginResult = CDVPluginResult(
            status: CDVCommandStatus_OK
        )
        
        self.commandDelegate!.sendPluginResult(
            pluginResult,
            callbackId: command.callbackId
        )
    }
}