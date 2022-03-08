# iFormTextFieldItem

# Attributes

UITextField textField

# Methods

### iFormTextFieldItem

Constructor

| Argument | Type | Description |
| --- | --- | --- |
| frame | CGRect | text field’s frame |
| placeholder | String | text field’s label |
| text | String | Text field’s data |
| contentType | iFormTextFieldContentType | Type of data accepted by the text field |
| keyboardType | iFormTextFieldKeyboardType | Keyboard ty pe for the text field |
| textFieldStyle | UITextFieldStyle | Textfield’s style |

### display → void

Adds the textfield to the defined view

| Argument | Type | Description |
| --- | --- | --- |
| _ on | UIView | View where you want to add the textfield |
| withConstraints | Constraints | Constraints for the view |

### setPlaceHolder → void

| Argument | Type | Description |
| --- | --- | --- |
| _ placeholder | String | Placeholder text |

### setTextContentType → void

| Argument | Type | Description |
| --- | --- | --- |
| _ contentType | iFormTextFieldContentType | Type of content of the textfield |

### setKeyboardType → void

| Argument | Type | Description |
| --- | --- | --- |
| _ keyboardType | iFormTextFieldKeyboardType | Type of keyboard of the textfield |

### setText → void

| Argument | Type | Description |
| --- | --- | --- |
| _ text | String | Text of textfield |

### setTextColor → void

| Argument | Type | Description |
| --- | --- | --- |
| _ color | UIColor | Text’s color of the textfield |

### setBackgroundColor → void

| Argument | Type | Description |
| --- | --- | --- |
| _ color | UIColor | Textfield’s background color |

### setConstraints → void

| Argument | Type | Description |
| --- | --- | --- |
| _ constraints | Constraints | Constraints of the textfield |

### getText → String?

Return the text of the textfield

### getPlaceholder → String?

Return the placeholder of the textfield

### getTextColor → UIColor

Return the text color of the textfield

### getBackgroundColor → UIColor?

Return the background color of the textfield

### getBorderRadius → CGFloat

Return the corner radius value of the textfield

### getTextContentType → UITextContentType

Return the text content type of the textfield

### getKeyboardType → UIKeyboardType

Return the keyboard type of the textfield