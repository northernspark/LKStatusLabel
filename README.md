# LKStatusLabel
<h3>About</h3>
LKLabel is an easy to user UILabel subclass

<h3>Setup</h3>
Add the <strong>LKStatusLabel.h</strong> & <strong>LKStatusLabel.m</strong> files to your project.
In your .h file add <code>#import "LKStatusLabel.h"</code>
<br/>
In your .m file add 
<pre>
LKStatusLabel *statusLabel = [[LKStatusLabel alloc] init];
[statusLabel setLabelColour:[UIColor lightGrayColor]];
[statusLabel setLabelFont:[UIFont fontWithName:@"HelveticaNeue-Medium" size:(15.0)]];
[statusLabel setLabelContent:@"Enter Your Text"];
[statusLabel setBackgroundColor:[UIColor clearColor]];
[statusLabel setClipsToBounds:true];
[self.view addSubview:statusLabel];
</pre>

Once added to your View, you simply call <code>[statusLabel setText:textField.text animate:true];</code>

<h3>Note</h3>
<code>[statusLabel setClipsToBounds:true];</code> is required otherwise label will animate outside the frame






 

