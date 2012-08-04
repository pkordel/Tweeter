class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame)
    @view_controller = TweetController.alloc.initWithNibName(nil, bundle: nil)
    @window.rootViewController = @view_controller
    @window.makeKeyAndVisible

    true
  end
end
