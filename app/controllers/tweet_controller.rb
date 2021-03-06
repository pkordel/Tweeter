class TweetController < UIViewController

  def viewDidLoad
    super
    window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    window.makeKeyAndVisible

    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.setTitle("I finished the project!", forState:UIControlStateNormal)
    button.sizeToFit
    button.frame = CGRectMake(60, 88, 200, 37)
    window.addSubview(button)

    button.addTarget(self, action:"button_tapped", 
                     forControlEvents:UIControlEventTouchUpInside)
  end

  def viewDidUnload
    super
  end

  def button_tapped
    if TWTweetComposeViewController.canSendTweet
      tweet_vc = TWTweetComposeViewController.alloc.init
      tweet_vc.setInitialText("I just finished the first project in iOS SDK Development. #pragsios")
      self.presentViewController(tweet_vc, animated:true, completion:nil)
    else
      puts "Can't send tweet"
    end
  end

end
