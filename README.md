# CORS Anywhere Observable
A forked copy of the [CORS Anywhere](https://github.com/Rob--W/cors-anywhere) intended for Observable Notebook usage.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

All Documentation for Cors Anywhere can be found in [that GitHub repo](https://github.com/Rob--W/cors-anywhere). 


[Observable Notebook Documentation](https://beta.observablehq.com/d/d156a08094928fe0)

## Instructions

1. Click the Deploy button above.
2. Give your app a name 
3. For the CORSANYWHERE_WHITELIST env var, place `https://YOUR_OBSERVABLE_USERNAME.static.observableusercontent.com`
4. Click "Deploy App"
5. Your CORS Anywhere (Observable flavor) will be live!


## Why?

In Observable, sometimes you'll need to access a resource that does not have CORS enabled. The standard fix for this would be to prepend https://cors-anywhere.herokuapp.com to your resource and you'd be good to go. However, that server is offered as a demo and you'll get rate-limited. 


So, CORS Anywhere Observable offers the same service, but allows you to run your personal copy of CORS Anywhere specifically for your Observable Notebooks.

All you have to do is Deploy this app to heroku (button above), then add an env var "CORSANYWHERE_WHITELIST" with a single domain:

```
<your_observable_username>.static.observableusercontent.com
```

Now, you'll have your own CORS Anywhere server that will only proxy requests that come from your own Observable Notebooks!

## Advantages

- No more abusing the demo cors-anywhere
- More control on your API calls
- Ability to add tracking and analytics (not included)


## Drawbacks
If someone forks your notebook, then their requests won't work anymore - since the requests would come from their notebook.

So, if you want a warning whenever someone forks your notebook, you can add a cell to all of your notebooks that checks the host domain of the notebook and show a warning message if it's not yours.

For example, for me, I have something like:

``` javascript
(window.location.host.slice(0,6)!=='asg017')? 'Warning message here!': '';
```
 
 I have a generic warning message under [my toolbox](https://beta.observablehq.com/@asg017/toolbox#corsWarning) so I could import it easily in all of my notebooks.
 

## Differences

Differences between CORS Anywhere and this CORS Anywhere Observable server are:

- "Deploy to Heroku" button - app.json
- Added message to help text
- README changed a whole lot
- [Added to whitelist error message](https://github.com/asg017/cors-anywhere-observable/blob/master/lib/cors-anywhere.js#L341-L345)


## License

Copyright (C) 2013 - 2016 Rob Wu <rob@robwu.nl>

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
