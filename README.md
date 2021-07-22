# shinyMobile <img src="man/figures/logo.png" width="200px" align="right"/>


> Develop outstanding {shiny} apps for iOS, Android, desktop as well as beautiful {shiny} gadgets. {shinyMobile} is built on top of the latest [Framework7](https://framework7.io) template.

[![R build status](https://github.com/RinteRface/shinyMobile/workflows/R-CMD-check/badge.svg)](https://github.com/RinteRface/shinyMobile/actions)
[![lifecycle](https://img.shields.io/badge/lifecycle-maturing-ff69b4.svg)](https://lifecycle.r-lib.org/articles/stages.html)
[![CRAN status](https://www.r-pkg.org/badges/version/shinyMobile)](https://cran.r-project.org/package=shinyMobile)



## Installation

```r
# from CRAN
install.packages("shinyMobile")
# for the latest version
devtools::install_github("RinteRface/shinyMobile")
```


## Cheatsheet

<a href="https://github.com/RinteRface/cheatsheets/tree/master/shinyMobile"><img src="https://raw.githubusercontent.com/rinterface/cheatsheets/master/shinyMobile/png/shinyMobile1.png" width="630" height="487" style="max-width:100%;"></a>


## Demo

A running demo is available here : https://dgranjon.shinyapps.io/miniUI2Demo/. 
Left side: android demo, right side: iOS demo.


![](man/figures/demo.png)



## Progressive Web App (PWA)

### Configuration
`{shinyMobile}` is PWA capable, meaning that it can be displayed full screen on many mobile
devices. This feature is automatically handled by `f7Page()` if `allowPWA` is `TRUE` (it leverages the Google PWA compatibility
[script](https://github.com/GoogleChromeLabs/pwacompat)). 

To setup the necessary assets for your PWA, you may run:

```r
remotes::install_github("RinteRface/charpente")
library(charpente)
set_pwa(APP_PATH, ...)
```

where `APP_PATH` is the app location. It only works if the app is inside a package like with
{golem}. Alternatively, you may copy the `www` folder of the gallery [app](https://github.com/RinteRface/shinyMobile/tree/master/inst/examples/gallery/www), which provides:

- A valid service worker.
- A valid `offline.html` fallback.
- A valid web manifest. Don't forget to change the `start_url` property to the path of your app.
For instance, the following app hosted at https://dgranjon.shinyapps.io/rstudio-global-2021-calendar/, has the `/rstudio-global-2021-calendar/` path.
- A valid set of icons. There are tools such as [appsco](https://appsco.pe/developer/splash-screens) and [app-manifest](https://app-manifest.firebaseapp.com), to create 
those custom icons and splash screens, if you need to.

It is really easier with `{charpente}`, the reason why we strongly recommend to develop your app
inside a package.

### Add the PWA to your desktop Apps

Copy the url of your app in your mobile web browser (iOS: Safari and Andoid: Chrome). In this example this is: https://dgranjon.shinyapps.io/miniUI2Demo/. It opens like a classic web app, with top and bottom ugly navigation bars.

- Select the share button located in the bottom bar of your Iphone/Ipad. For Android,
you may do something similar. Importantly, Chrome for iOS does not support this feature, that's why I recommend using Safari.
- Click on "Add to Home Screen"
- Choose a relevant name and click on OK. 
- The app will be added to your IOS/Android Apps. In case you want custom icons, replace the content of the www folder with your own.

<div class="row">
<div class="card">
<a href="#" target="_blank"><img src="man/figures/f7PWA.png"></a>
</div>
</div>

### Limitations
It is actually quite complex to guarantee that all mobile platforms are supported.
The PWA compatibility script will work in most of the case. If not, please open an issue [here](https://github.com/GoogleChromeLabs/pwacompat/issues), to help improving it!


## Acknowledgement

A special thanks to [Vladimir Kharlampidi](https://github.com/nolimits4web) for creating this
amazing framework7 HTML template.


## Code of Conduct
  
  Please note that the shinyMobile project is released with a [Contributor Code of Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html). By contributing to this project, you agree to abide by its terms.
