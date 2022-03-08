# iForm framework

iForm is a Swift framework made to make the process of building form easier with it sets of built in methods

# Install iForm

You can easily add the package by going in the **Packages Dependency** section of your XCode project

# Build a Sign In Form

Building a Sign In form with iForm is relatively easy:

```swift
import UIKit
import iForm

class SignInViewController: UIViewController, UITextFieldDelegate {

    private var form: iForm = iForm()
    override func viewDidLoad() {
        super.viewDidLoad()
        var formular: SignInForm = SignInForm()
        
        //Initialize sign-in form
        formular = form.initSignInForm(
						//Submit button callback
            actionToPerform : UIAction() { _ in
								//Retrieving the values in our text fields
                let textFieldsValues = self.form.getTextFieldsValues(from: self.form.getAllTextFields(from: formular))
                //Storing the data
                let email = textFieldsValues["Email"]
                let password = textFieldsValues["Password"]

                let detailsVC = DetailsViewController()
                detailsVC.email = email
                detailsVC.password = password
                //Passing the data to the next  View Controller
                self.navigationController?.pushViewController(detailsVC, animated: true)
            })
				//Add the form to the defined view
        form.display(formular, on: self.view, withConstraints: Constraints(horizontal: 0, vertical: -250, width: 0, height: 50))

				}
}
```

1. We first Initialized our `iForm` and `SignInForm` 
2. Create the form with the `initSignInForm()` method of your object
3. Pass as an argument the action you want your submit button to do as the `actionToPerform` argument
    1. In that callback we get the values of our generated text fields through the `iForm` method `getTextFieldsValues()` 
    2. Then we store them in variables
    3. And finally we simply pass them to our DetailViewController
4. Use the `display()` method to add the form the defined view with the defined constraints

*Notes: The `getTextFieldsValues()` receives a UITextField table as an arguments, table that can be returned with the `getAllTextFields()` method*

# Definitions

## Classes

[iForm](Documentation/iForm%2066dd7.md)

[Constraints](Documentation/Constraint%2067a4f.md)

[iFormButtonItem](Documentation/iFormButto%20ad4fa.md)

[iFormTextFieldItem](Documentation/iFormTextF%203d486.md)

[UIButtonStyle](Documentation/UIButtonSt%20715a0.md)

[UITextFieldStyle](Documentation/UITextFiel%20501de.md)
