# ReachabilityHandler

This is the singleton classes created on support of [Reachability - v3.2](https://github.com/tonymillion/Reachability/releases/tag/v3.2). It is ARC-compatible, and it uses the new GCD methods to notify of network changes.
This class also notifies when the network becomes reachable and unreachable and shows the message on interface.

## Requirements
 ```ReachabilityHandler , Reachability and KSToastView``` which is already in the project.
 
## Installation
just drag ```ReachabilityHandler , Reachability and KSToastView``` Once you have added the .h/m files to your project, simply:

* Go to the Project->TARGETS->Build Phases->Link Binary With Libraries.
* Press the plus in the lower left of the list.
* Add SystemConfiguration.framework.

## Usage
* In your ```` didFinishLaunchingWithOptions ````  write  ```  [ReachabilityHandler sharedHandler];``` to start notifier.

#### Check network status

```` - (void)viewDidLoad {
[super viewDidLoad];

if (![ReachabilityHandler checkInternetConnection]) {

NSLog(@"Internet is available");
}else{
NSLog(@"Internet is unavailable");
}
// Do any additional setup after loading the view, typically from a nib.
}
````

# Contributors
* iOS Developer [sudhakar varma](https://github.com/sudhakar-varma)


