# dotfiles ⚡️
Setting up a new computer is time consuming. Learning how to make this a less painful process.

# install.sh
#### This has not been tested!
```bash
sudo -n sh install.sh
```

https://help.github.com/articles/connecting-to-github-with-ssh/

# Sublime Setup
#### This has not been tested!
###### (thanks to https://gist.github.com/vishaltelangre/5075346)



* To install packages, every time pressing ' `ctrl+shift+p` → `Package Control: Install Package` is very cumbersome task... right?

* After fresh installation of ST3, open it and <code>ctrl+`</code> copy the code from [PackageControl.io](https://packagecontrol.io/installation).
* Restart ST3.

* Open terminal, and navigate to Sublime's dir under your home folder by below command and create file w/ name `Package Control.sublime-settings` there in:

```bash
cd $HOME/.config/sublime-text-3/Packages/User && touch Package\ Control.sublime-settings
```

* Add below json _(these packages were stable at the time of writing this gist, maybe you can add yours to it)_ to this above created file, and save it [(2)][2]:

// This needs to go under Package Control.sublime-settings

```json
{
	"bootstrapped": true,
	"in_process_packages":
	[
	],
	"installed_packages":
	[
		"CSS Media Query Snippets",
		"GitGutter",
		"gruvbox",
		"HTML-CSS-JS Prettify",
		"Package Control",
		"PHP-Twig",
		"Pretty JSON",
		"Sass",
		"SassBeautify",
		"SCSS"
	]
}
```

* Now when you open your ST3 again, it looks for this file, and if the packages specified in this file are missing, then it automatically downloads and installs for you!

* <code>ctrl+`</code> to see what's it installing, (displays tailed log of al the happenings in your ST3 environment)! 

* You just seat back for some time and watch it or bring some popcorn and hot tea! It takes no time either! 

* Finally, we need to update our `Preferences.sublime-settings` file.

below is my setup, (Will break without the packages installed above lol)

```json
{
	"color_scheme": "Packages/gruvbox/gruvbox (Dark) (Medium).tmTheme",
	"default_line_ending": "unix",
	"ensure_newline_at_eof_on_save": true,
	"fallback_encoding": "UTF-8",
	"font_size": 13,
	"ignored_packages":
	[
		"Markdown",
		"Vintage"
	],
	"match_brackets": false,
	"match_brackets_angle": false,
	"match_brackets_braces": false,
	"match_brackets_content": false,
	"match_brackets_square": false,
	"match_tags": false,
	"rulers":
	[
		80
	],
	"shift_tab_unindent": true,
	"tab_size": 2,
	"theme": "gruvbox (Dark) (Soft).sublime-theme"
}

GitGutter.sublime-settings 
```
// GitGutter Settings - User
{
"enable_hover_diff_popup": false,
"show_line_annotation": "false",
"line_annotation_ruler": true,
}

```
 
;)

_ _ _

#### References

[github.com/mathiasbynens](github.com/mathiasbynens) for the macos.sh script
+ [http://wbond.net/sublime_packages/package_control/installation] [1]
+ [https://github.com/mrmartineau/SublimeTextSetup/issues/3] [2]

[1]: http://wbond.net/sublime_packages/package_control/installation        "Sublime Package Control Installation"
[2]: https://github.com/mrmartineau/SublimeTextSetup/issues/3              "Paul Irish and Wbond Thread on GitHub"
