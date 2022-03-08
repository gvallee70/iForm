# iFormButtonItem

Class used to define Form Buttons

# Attributes

UIButton button

# Methods

## iFormButtonItem

Constructor

| Argument | Type | Description |
| --- | --- | --- |
| frame | CGRect | Button’s frame |
| text | String | Button’s title |
| buttonStyle | UIButtonStyle | Button’s style |
| action | UIAction | Action performed by the button |

### setText → void

Sets the title of the button

| Argument | Type | Description |
| --- | --- | --- |
| text | String | Title of the button |

### display → void

Adds the button to the defined view

| Argument | Type | Description |
| --- | --- | --- |
| _ on | UIView | View where you want to add the button |
| withConstraints | Constraints | Constraints for the view |

### setTextColor → void

Sets the color of the button’s title

| Argument | Type | Description |
| --- | --- | --- |
| _ color | UIColor | Color of the title |

### setBackgroundColor → void

Sets the background color of the button

| Argument | Type | Description |
| --- | --- | --- |
| _ color | UIColor | Background color of the button |

### setConstraints → void

Sets the constraints of the the button

| Argument | Type | Description |
| --- | --- | --- |
| parentView | UIView | View on which the button will be displayed |
| _ constraints | Constraints | Constraints of the button |

### setBorderRadius → void

Set the border radius of the button

| Argument | Type | Description |
| --- | --- | --- |
| _ radius | CGFloat | Value of the border radius |
|  |  |  |

### setBorderWidth → void

Set the border width of the button

| Argument | Type | Description |
| --- | --- | --- |
| _ width | CGFloat | Value of the border width |

### setBorderColor → void

Set the border color of the button

| Argument | Type | Description |
| --- | --- | --- |
| _ color | UIColor | Color of the button’s border |

### getText → String?

Return the title of the button

### getTextColor → UIColor

Return the title color of the button

### getBackgroundColor → UIColor?

Return the background color of the button

### getBorderRadius → CGFloat

Return the border radius value of the button

### getBorderColor → CGColor?

Return the border color of the button

### getBorderWidth → CGFloat

Return the border width value of the button