# iForm

Main class of the iForm framework. Used to generate the different form and components

# Methods

## **Display → void**

Method used to add an element to a view with an defined constraints

| Argument | Type | Description |
| --- | --- | --- |
| _ view | UIView | User defined form |
| on | UIView | The View where you want to display your form |
| withContraints | Constraints | The UI constraints of your form in the view you’ll put it in |

## **initSignInForm → SignInForm**

Method used to create a  Sign-In Form

| Argument | Type | Description |
| --- | --- | --- |
| actionToPerform | UIAction | Callback performed by the form submit button |
| textfieldStyle | UITextFieldStyle | Style of the textfields |
| buttonStyle | UIButtonStyle | Style of the button |

## **initTextField → iFormTextFieldItem**

Method used to create a textfield

| Argument | Type | Description |
| --- | --- | --- |
| placeholder | String | text field’s placeholder |
| text | String | text field’s data |
| textColor | UIColor | Color of the text |
| backgroundColor | UIColor | Text field’s background color |
| contentType | iFormTextFieldContentType | Data that will be received by the the text field |
| keyboardType | iFormTextFieldKeyboardType | Keyboard of the textfield |
| textFieldStyle | UITextFieldStyle | Style of the textfield |

## **initButton → iFormButtonItem**

Method used to create a  Button

| Argument | Type | Description |
| --- | --- | --- |
| text | String | text field’s placeholder |
| buttonStyle | UIButtonStyle | Style of t |
| action | UIAction | Callback performed by the button |

## **getAllTextFields → [UITextFields]**

Method used to get all the textFields attached to the iForm object

| Argument | Type | Description |
| --- | --- | --- |
| from | UIView | Form from which you want to get the textFields |

## **getTextFieldsValues → [Sting:String]**

Method used to get all the values from the textFields attached to the iForm object

| Argument | Type | Description |
| --- | --- | --- |
| from | [UITextField] | Table of text fields from which you want to get the values |