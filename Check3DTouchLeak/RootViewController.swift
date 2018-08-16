import UIKit

class RootViewController: UIViewController {

   deinit {
      print("It is not called if 3D touch on view")
   }

   private static var rootIndex = 0

   override func viewDidLoad() {
      super.viewDidLoad()

      title = "Root #\(RootViewController.rootIndex)"

      registerForPreviewing(with: self, sourceView: view)
   }

   @IBAction private func changeRoot() {
      RootViewController.rootIndex += 1

      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      view.window!.rootViewController = storyboard.instantiateInitialViewController()
   }
}

extension RootViewController: UIViewControllerPreviewingDelegate {
   func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
      return nil
   }

   func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
   }
}
