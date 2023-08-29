We're using another JavaScript library that doesn't know anything about
Stimulus, but we want to capture what it's doing and log it's output to our
textarea here on the screen.

The JavaScript library is emitting events on a regular basis, it's called
Puller. Right now, Puller is logging those events to the console, but we want
our customers to be able to see those events on the screen.

Take a look at the controller code and the excise HTML, and just by decorating
the HTML you should be able to accomplish this task.
