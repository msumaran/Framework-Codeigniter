#animate.stylus
*Stylus just-add-water CSS animation*

`animate.stylus` is a Stylus version of [Dan Eden's](https://github.com/daneden) [Animate.css](https://daneden.me/animate/).

##Features
animate.stylus has a couple of features to make the most of what Stylus has to offer for more effecient development.

###Helpers

####Mixins
There are a couple of [Stylus mixins](https://learnboost.github.io/stylus/docs/mixins.html) that some of the modules use to generate the necessary compiled css.

####Settings
The settings file defines a range of default [Stylus variables](https://learnboost.github.io/stylus/docs/variables.html) which are used by some of the animation modules. You can override the defaults in your own settings or style stylus file(s).


####Animation Module loading
The settings file also sets all animation modules to false (nothing gets loaded).

To include an animation module in your project, simply override the $use[moduleName] variable in your own settings file to true.

By only choosing the animation modules you need, you're keeping the compiled css at it's leanest!

Eg:
````
// These will be included
$use-fadeIn = true;
$use-fadeOut = true;
````

Modules are arranged by the following animation types;

- attention-seekers
- bounce-enter
- bounce-exit
- fade-enter
- fade-exit
- flippers
- lightspeed
- rotate-enter
- rotate-exit
- special


####Base Styles

There is a small section at the bottom of the `_animate.stylus` file that contains the base css rules for animate.stylus to work.

Simply copy it from the `_animate.stylus` file (or from the code block below) into you main styl file or base stylus module.

````
body
	-webkit-backface-visibility: hidden;

.animated
	animation-duration: $base-duration
	animation-fill-mode: both

	&.hinge
		animation-duration: $base-duration * 2
	

````

###Animations

All individual animation modules are kept in their own [Stylus partials](https://learnboost.github.io/stylus/docs/import.html) so they can be found easily. You shouldn't need to edit these as they are part of the animate.css library.

###Bower Support
Add animate.stylus to your project using [Bower](http://bower.io)

bower.json dependency
````
"dependencies": {
  "animate.stylus": "^0.1.0"
}
````

Command line
`bower install animate.stylus`


##Usage

To use animate.stylus in your project, you will need to have Stylus installed. [Visit the Stylus site](https://learnboost.github.io/stylus/) to find out how to do this.

Once Stylus has been installed, you can download or clone this repo into your project's `css` folder and import `animate.stylus` into your main Stylus stylesheet.

Eg: inside css/style.styl
````
@import "animate.stylus/animate"
````

Choose which modules you want to use in you project by overriding the variables set in the `helpers/settings.styl` file in your own settings file.

Add the base css styles mentioned in the BASE section above.

Finally in your markup, simply add the class `animated` to an element, along with any of the animation class names.

````
    <div class="animated fadeIn">
    	<p>Watch me fade in!</p>
    </div>
````

That's it! You've got a CSS animated element. Super!


##License

animate.stylus is licensed under the MIT license. [http://opensource.org/licenses/MIT](http://opensource.org/licenses/MIT)


##Learn more

You can [check out the original animate.css here](http://daneden.me/animate). See working examples as well as how to use with javascript or creating custom css classes

##Changelog

v0.1.5 - Hot fix base styles

v0.1.2 - Refactor few files of animate, disable modules without refactor

v0.1.1 - Change name and fix description

v0.1.0 - Initial port of animate.css to Stylus
