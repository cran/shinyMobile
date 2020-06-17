# shinyMobile 0.7.0

## Notes
- disable backdrop in `f7Searchbar()` since it messes up with tabbar navigation. This does 
not have any impact on user experience. In a future release of shinyMobile, `f7Searchbar()` will have input binding associated as well as more parameters for configuration

## Breaking changes
- `f7SmartSelect()`: type param becomes openIn to align with other inputs
- rework `f7Messages()`: messages are updated on the server side with `f7AddMessages()`. New `f7MessageBar()` to send messages from the server side.
- `f7ActionSheet()`: to access the currently selected button, use input$[sheet_id]_button. This is to make action sheets compatible with shiny modules. Moreover, the buttons provided
must be included in a list (not in a dataframe)
- `f7Sheet()` is still inserted in the UI side but can be triggered either on the server side in combination with `updateF7Sheet()` (see example) or on the UI side. Overall, this improves flexibility since user may choose any trigger element. In practice, any element having `data-sheet` pointing to the sheet id as well as the "sheet-open" css class may open it, instead of having a default trigger contained in the sheet. A use case may be to open a sheet in the tabbar (the trigger would be a `f7TabLink()` that is a special button styled for the tabbar)
- All update method for inputs : argument `session` is now optional and has been moved to the last position in function call
- `f7AutoComplete()`: type becomes openIn to align with the framework7 documentation
- remove parameter fill from `f7Icon()` (not used)
- Rewrite `f7Popup()`. It has now an input associated giving the popup state (opened or closed) as well
as new parameters: backdrop, closeByBackdropClick, closeOnEscape, animate and swipeToClose. 
label parameters has been removed. To create an `f7Popup()` put the `f7Popup()` tag in you UI. On the server side call `f7TogglePopup()`. See documentation for a detailed example. Thanks @pasahe
- `f7NavbarHide()` renamed to `f7HideNavbar()` for consistancy
- `f7NavbarShow()` renamed to `f7ShowNavbar()` for consistancy
- In `f7Gauge()` valueText was removed. It does not make sense that the value can be accidentally
different from the text displayed. valueText is then an internal parameter.
- In `f7DatePicker()`: min becomes minDate, max becomes maxDate and format becomes dateFormat
- remove maximizable parameter from `f7Appbar()`

## Major changes
- new `input$shinyInfo` and `input$lastInputChanged` (see shinyMobile tools vignette for more details)
- `f7SmartSelect()` has input binding as well as an update function `updateF7SmartSelect()`
- new `f7VirtualList()`, `f7VirtualListItem()`, `updateF7VirtualList()`: high performance list with caching system -> faster rendering (up to 10x faster than `f7List()`). Ability to add item(s), remove item(s), move item, filter items, ...
- new messagebar parameter to `f7TabLayout()`. This allows to use the `f7Messagebar()` in a tabs layout configuration. 
- new `f7ValidateInput()` function to validate input from the server side (similar to
shinyFeedback but internal to shinyMobile and without dependencies)
- new `f7Login()` and `updateF7Login()` feature to provide UI boilerplates
for authentication
- `f7Tabs()` may be used as standalone components with the style argument (segmented or strong). toolbar has the default behavior.
- update `f7Icon()` and icons dependencies. thanks @pvictor
- new `updateF7DatePicker()`: thanks @pvictor
- add input binding to `f7Fabs()` to get the status of the container
- add `updateF7Button()` and `updateF7Fabs()`
- new pullToRefresh parameter to `f7Init()`. Pull the screen from top to bottom fires `input$ptr` which becomes TRUE. When the pull to refresh event is finished, `input$ptr` is NULL. Useful to trigger events in an observeEvent
- add new `updateF7Select()`: thanks @Seyphaton for the suggestion
- add `f7TogglePopup()` to close/open a `f7Popup()`. Thanks @pasahe
- add `preview_mobile()`: function that previews your app in a seleted range of
devices (iphone, samsung, htc, ...)
- redesign the way inputs options are passed from R to Javascript. This does not have impact
on the user side but improves security and code quality

## Minor changes
- add new `f7File()` for file upload. See shiny `fileInput`
- add new `f7DownloadButton()` to work properly with the shiny `downloadHandler` function. Thanks @bwganblack for the report
- add new tapHoldDelay parameter to `f7Init()` to control the delay necessary to trigger
a long press (default to 750 ms)
- new `f7ShowPreloader()` and `f7HidePreloader()`
- new `f7TextArea()` input and `updateF7TextArea()` on the server side
- add block title for `f7checkBoxGroup()` and `f7Radio()`
- add new `f7TabLink()` (special link to insert in `f7Tabs()` that may open a `f7Sheet()`)
- add new active parameter to `f7Button()`
- add new strong parameter to `f7Segment()`
- Improve website. Thanks @pvictor
- new fullsize and closeButton parameter to `f7Popup()` + rewrite js binding. Thanks @pvictor
- add extra parameters to `f7DatePicker()`: direction, openIn,
scrollToInput, closeByOutsideClick, toolbar, toolbarCloseText,
header and headerPlaceholder
- add new parameters to `updateF7Gauge()`. Thanks @rodrigoheck for the suggestion
- add noSwipping argument to `f7Slider()` to prevent wrong behaviour when used in `f7TabLayout()`
- `f7Select()` does not rely anymore on the shiny selectInput binding (does not have impact on user experience)
- add hidden argument to `f7Tab()`: allows to navigate through hidden tabs without displaying them
in the tab menu. Thanks @rodrigoheck
- add closeOnSelect param to `f7AutoComplete()`
- add new parameters to `f7Picker()` and `updateF7Picker()`: rotateEffect, openIn, scrollToInput, closeByOutsideClick, toolbar, toolbarCloseText and sheetSwipeToClose
- add color argument to `f7Icon()`
- add selected parameter to `f7Select()`
- update framework7 to 5.3.0
- add color to `updateF7Slider()`
- add color to `f7Slider()`
- add cheatsheet reference in the readme
- add `f7Slider()` labels (remove enableLabels param)
- add step, scaleSteps and scaleSubSteps to `updateF7Slider()`
- add scaleSteps, scaleSubSteps and verticalReversed to `f7Slider()`
- add decimalPoint to `updateF7Stepper()`
- rework `f7Stepper()`: add 2 more parameters (decimalPoint and buttonsEndInputMode)
- hideNavOnPageScroll is set to FALSE by default in `f7Init()`. This improves perfomances
on old devices
- improve `f7SingleLayout()` example (replace sliderInput by f7Slider)
- improve `f7SplitLayout()` example (replace sliderInput by f7Slider)
- improve `f7TabLayout()` example
- add more copyrights

## Bug fix
- Fix issue in `updateF7AutoComplete`: text input was not updated. Thanks @sanchez5674 for the report
- Remove duplicated html tag in `f7Page()`. Thanks @ pvictor
- Fix issue in `f7Sheet()` wrong css style applied when multiple sheets are in the same app
- Fix issue in `f7Tabs()`: if one put `f7Tabs()` inside a `f7Tab()` in a parent `f7Tabs()`, the input binding was giving the wrong tab for the top level tabset (once we clicked in the tab containing the sub-tabset). 
- Fix issue with `f7InsertTab()` and `f7RemoveTab()` when swipeable is TRUE
- trigger shown event for `f7Tabs()` on click. This allows to use `f7Tabs()`
without swipeable and animated
- Allow output elements to be displayed in `f7Panel()` (need to provide the `f7Panel()` inputId)
- Prevent `f7Swipeout()` to make the current tab swipping if in `f7TabLayout()`
- Fix `f7Fab()` label white background color in dark mode
- fix #19: letting bigger TRUE in `f7Navbar()` would center the body content on scroll, due to a css conflict
- fix issue with `f7Slider()` and `f7TabLayout()`: When setting value of a slider in a swipeable f7TabLayout it cause the tab to be swip. This describe here : framework7io/framework7#2603. Thanks @pvictor
- fix #39: issue in `f7DatePicker()` format for months. Thanks @kmaheshkulkarni
- fix issue in `f7DatePicker()`: the viewport does not scroll to input by default
- fix typo in `f7AutoComplete()` example
- fix #43: slider label not visible on drag. Thanks @pasahe
- fix #42: add vertical overflow to `f7Popup()`. Thanks @pasahe
- fix #41: cannot render shiny outputs in `f7Popup()`. Now `f7Popup()` triggers shiny output rendering. Thanks @pasahe
- fix #31: `updateF7Gauge()` -> wrong fraction for semi circle gauges. 
- fix `f7Stepper()`: some options were not properly initialized (max, min, ...)
- fix `f7Slider()` example 2: wrong argument in help
- fix `f7Icon()` example: wrong function name
- fix `f7Row()` example
- `f7Sheet()`: hiddenItems is NULL by default
- Do no apply a magin bottom to the toolbar if there is no `f7Appbar()`


# shinyMobile 0.1.0

* Added a `NEWS.md` file to track changes to the package.
