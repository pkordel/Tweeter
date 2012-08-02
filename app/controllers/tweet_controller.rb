class TweetController < UIViewController
  def viewDidLoad
    super
    # create the button
  end
  def viewDidUnload
    super
  end
  def handleTweetButtonTapped(sender)
    if TWTweetComposeViewController.canSendTweet?
      tweet_vc = TWTweetComposeViewController.alloc.init
      tweet_vc.setInitialText("I just finished the first project in iOS SDK Development. #pragsios")
      self.presentViewController(tweet_vc, animated:YES, completion:NULL)
    else
      puts "Can't send tweet"
    end
  end
end