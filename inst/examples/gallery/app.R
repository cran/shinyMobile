library(shiny)
library(shinyMobile)

# source modules
e <- environment()
path <- system.file("examples/gallery/tabs/", package = "shinyMobile")
sapply(
  list.files(
    path,
    include.dirs = FALSE,
    pattern = ".R",
    ignore.case = TRUE
  ),
  function(f) {
    source(file.path(path, f), local = e)
  }
)

app_options <- list(
  theme = "md",
  dark = TRUE,
  filled = FALSE,
  preloader = TRUE,
  color = "#007aff",
  navbar = list(
    hideOnPageScroll = TRUE,
    mdCenterTitle = TRUE
  )
)

# shiny app
shinyApp(
  ui = f7Page(
    allowPWA = TRUE,
    options = app_options,
    f7TabLayout(
      title = "shinyMobile Gallery",
      messagebar = f7MessageBar(inputId = "mymessagebar",
                                placeholder = "Message"),
      panels = tagList(
        f7Panel(
          id = "panelLeft",
          title = "Left Panel",
          side = "left",
          f7Block("A panel with push effect"),
          f7PanelMenu(
            inset = TRUE,
            outline = TRUE,
            # Use items as tab navigation only
            f7PanelItem(
              tabName = "tabset-Inputs",
              title = "Input tabs",
              icon = f7Icon("largecircle_fill_circle"),
              active = TRUE
            ),
            f7PanelItem(
              tabName = "tabset-FABs",
              title = "Buttons tabs",
              icon = f7Icon("largecircle_fill_circle")
            )
          ),
          effect = "push",
          options = list(swipe = TRUE)
        ),
        f7Panel(
          title = "Right Panel",
          side = "right",
          f7Radio(
            inputId = "theme",
            label = "Theme",
            choices = c("md", "ios"),
            selected = app_options$theme
          ),
          f7Radio(
            inputId = "dark",
            label = "Mode",
            choices = c("dark", "light"),
            selected = ifelse(app_options$dark, "dark", "light")
          ),
          f7Radio(
            inputId = "color",
            label = "Color",
            choices = getF7Colors(),
            selected = "primary"
          ),
          effect = "floating",
          options = list(swipe = TRUE)
        )
      ),
      navbar = f7Navbar(
        title = "shinyMobile Gallery",
        hairline = TRUE,
        leftPanel = TRUE,
        rightPanel = TRUE
      ),
      f7Login(
        id = "loginPage",
        title = "You really think you can go here?",
        footer = "This section simulates an authentication process. There
        is actually no user and password database. Put whatever you want but
        don't leave blank!",
        startOpen = FALSE
      ),
      # recover the color picker input and update the text background
      # color accordingly.
      tags$script(
        "$(function() {
          Shiny.addCustomMessageHandler('text-color', function(message) {
            $('#colorPickerVal').css('background-color', message);
          });

          // toggle message bar based on the currently selected tab
          Shiny.addCustomMessageHandler('toggleMessagebar', function(message) {
            if (message === 'chat') {
              $('#mymessagebar').show();
              $('.toolbar.tabLinks').hide();
            } else {
              $('#mymessagebar').hide();
              $('.toolbar.tabLinks').show();
            }
          });
        });
        "
      ),
      f7Tabs(
        id = "tabset",
        animated = FALSE,
        swipeable = TRUE,
        tabInputs,
        tabBtns,
        tabCards,
        tabLists,
        tabText,
        tabInfo,
        tabOthers
      )
    )
  ),
  server = function(input, output, session) {

    # update theme
    observeEvent(input$theme, ignoreInit = TRUE, {
      updateF7App(
        options = list(
          theme = input$theme
        )
      )
    })

    # update mode
    observeEvent(input$dark, ignoreInit = TRUE, {
      updateF7App(
        options = list(
          dark = ifelse(input$dark == "dark", TRUE, FALSE)
        )
      )
    })

    # update color
    observeEvent(input$color, ignoreInit = TRUE, {
      updateF7App(
        options = list(
          color = input$color
        )
      )
    })

    # input validation
    observe({
      validateF7Input(inputId = "text", info = "Whatever")
      validateF7Input(
        inputId = "password",
        pattern = "[0-9]*",
        error = "Only numbers please!"
      )
    })

    # toggle message bar: should only be dislayed when on the messages tab
    observeEvent(input$tabset, {
      session$sendCustomMessage(type = "toggleMessagebar", input$tabset)
      session$sendCustomMessage(type = "toggleSearchbar", input$tabset)
    })

    # user send new message
    observeEvent(input[["mymessagebar-send"]], {
      updateF7Messages(
        id = "mymessages",
        list(
          f7Message(
            text = input$mymessagebar,
            name = "David",
            type = "sent",
            header = "Message Header",
            footer = "Message Footer",
            textHeader = "Text Header",
            textFooter = "text Footer",
            avatar = "https://cdn.framework7.io/placeholder/people-100x100-7.jpg"
          )
        )
      )
    })

    # fake to receive random messages
    observe({
      invalidateLater(5000)
      names <- c("Victor", "John")
      name <- sample(names, 1)

      updateF7Messages(
        id = "mymessages",
        list(
          f7Message(
            text = "Message",
            name = name,
            type = "received",
            avatar = "https://cdn.framework7.io/placeholder/people-100x100-9.jpg"
          )
        )
      )
    })

    # trigger for login
    trigger <- reactive({
      req(input$tabset == "chat")
    })
    # login server module
    f7LoginServer(
      id = "loginPage",
      ignoreInit = TRUE,
      trigger = trigger
    )

    output$sin <- renderPlot(plot(sin, -pi, 2 * pi))
    output$cos <- renderPlot(plot(cos, -pi, 2 * pi))

    output$text <- renderPrint(input$text)
    output$password <- renderPrint(input$password)
    output$textarea <- renderPrint(input$textarea)
    output$slider <- renderPrint(input$sliderInput)
    output$sliderRange <- renderPrint(input$sliderRangeInput)
    output$stepper <- renderPrint(input$stepper)
    output$check <- renderPrint(input$check)
    output$checkgroup <- renderPrint(input$checkgroup)
    output$checkgroup2 <- renderPrint(input$checkgroup2)
    output$radio <- renderPrint(input$radio)
    output$radio2 <- renderPrint(input$radio2)
    output$toggle <- renderPrint(input$toggle)
    output$select <- renderPrint(input$select)
    output$smartdata <- renderTable(
      {
        head(mtcars[, c("mpg", input$smartsel), drop = FALSE])
      },
      rownames = TRUE
    )
    output$dateval <- renderPrint(input$mydatepicker)
    output$autocompleteval <- renderPrint(input$myautocomplete)

    lapply(1:12, function(i) {
      output[[paste0("res", i)]] <- renderText(paste0("Button", i, " is ", input[[paste0("btn", i)]]))
    })
    output$pickerval <- renderText(input$mypicker)
    output$colorPickerVal <- renderPrint(input$mycolorpicker$hex)

    # send the color picker input to JS
    observeEvent(input$mycolorpicker, {
      session$sendCustomMessage(type = "text-color", message = input$mycolorpicker$hex)
    })


    # popup
    output$popupContent <- renderPrint(input$popupText)

    observeEvent(input$togglePopup, {
      f7Popup(
        id = "popup1",
        title = "My first popup",
        f7Block(
          p("Popup can push the view behind. By default it has effect only when
            'safe-area-inset-top' is more than zero (iOS fullscreen webapp or iOS cordova app)"),
          f7Text(inputId = "popupText",
                 label = "Popup content",
                 value = "This is my first popup, I swear!"),
          verbatimTextOutput("popupContent")
        )
      )
    })

    observeEvent(input$popup1, {
      if (input$tabset == "Popups") {
        popupStatus <- if (input$popup1) "opened" else "closed"
        f7Toast(
          position = "top",
          text = paste("Popup is", popupStatus)
        )
      }
    })

    # sheet plot
    output$sheetPlot <- renderPlot({
      hist(rnorm(input$sheetObs))
    })

    observeEvent(input$toggleSheet, {
      updateF7Sheet(id = "sheet1")
    })

    # notifications
    lapply(1:3, function(i) {
      observeEvent(input[[paste0("goNotif", i)]], {
        icon <- if (i %% 2 == 0) f7Icon("bolt_fill") else NULL

        f7Notif(
          text = "test",
          icon = icon,
          title = paste("Notification", i),
          subtitle = "A subtitle",
          titleRightText = i
        )
      })
    })

    # Dialogs
    # notifications
    lapply(1:3, function(i) {
      observeEvent(input[[paste0("goDialog", i)]], {
        if (i == 1) {
          f7Dialog(
            title = "Dialog title",
            text = "This is an alert dialog"
          )
        } else if (i == 2) {
          f7Dialog(
            id = "confirmDialog",
            title = "Dialog title",
            type = "confirm",
            text = "This is an confirm dialog"
          )
        } else if (i == 3) {
          f7Dialog(
            id = "promptDialog",
            title = "Dialog title",
            type = "prompt",
            text = "This is a prompt dialog"
          )
        }
      })
    })

    observeEvent(input$confirmDialog, {
      f7Toast(text = paste("Alert input is:", input$confirmDialog))
    })

    output$promptres <- renderUI({
      if (is.null(input$promptDialog)) {
        f7BlockTitle(title = "Click on dialog button 3")
      }
      f7BlockTitle(title = input$promptDialog)
    })

    # popovers
    observeEvent(input$popoverButton, {
      addF7Popover(
        id = "popoverButton",
        options = list(content = "This is a f7Button")
      )
    })

    # toasts
    observeEvent(input$toast, {
      f7Toast(
        position = "bottom",
        text = "I am a toast. Eat me!"
      )
    })

    # action sheet
    observeEvent(input$goActionSheet, {
      f7ActionSheet(
        grid = TRUE,
        id = "action1",
        buttons = list(
          list(
            text = "Notification",
            icon = f7Icon("info"),
            color = NULL
          ),
          list(
            text = "Dialog",
            icon = f7Icon("lightbulb_fill"),
            color = NULL
          )
        )
      )
    })

    observeEvent(input$action1_button, {
      if (input$action1_button == 1) {
        f7Notif(
          text = "You clicked on the first button",
          icon = f7Icon("bolt_fill"),
          title = "Notification",
          titleRightText = "now"
        )
      } else if (input$action1_button == 2) {
        f7Dialog(
          id = "actionSheetDialog",
          title = "Click me to launch a Toast!",
          type = "confirm",
          text = "You clicked on the second button"
        )
      }
    })

    observeEvent(input$swipeAction_button, {
      if (input$swipeAction_button == 1) {
        f7Notif(
          text = "You clicked on the first button",
          icon = f7Icon("bolt_fill"),
          title = "Notification",
          titleRightText = "now"
        )
      } else if (input$swipeAction_button == 2) {
        f7Dialog(
          id = "actionSheetDialog",
          title = "Click me to launch a Toast!",
          type = "confirm",
          text = "You clicked on the second button"
        )
      }
    })

    observeEvent(input$actionSheetDialog, {
      f7Toast(text = paste("Alert input is:", input$actionSheetDialog))
    })

    # update progress bar
    observeEvent(input$updatepg1, {
      updateF7Progress(id = "pg1", value = input$updatepg1)
    })

    # update gauge
    observeEvent(input$updategauge1, {
      updateF7Gauge(id = "mygauge1", value = input$updategauge1)
    })

    # expand card 3
    observeEvent(input$goCard, {
      updateF7Card(id = "card3")
    })

    # toggle accordion
    observeEvent(input$goAccordion, {
      updateF7Accordion(
        id = "accordion1",
        selected = 1
      )
    })

    # update panel
    observeEvent(input$goPanel, {
      updateF7Panel(id = "panelLeft")
    })

    # swipeout
    observeEvent(input$swipeNotif, {
      f7Notif(
        text = "test",
        icon = f7Icon("bolt_fill"),
        title = "Notification",
        subtitle = "A subtitle",
        titleRightText = "now"
      )
    })

    observeEvent(input$swipeAlert, {
      f7Dialog(
        title = "Dialog title",
        text = "This is an alert dialog"
      )
    })

    observeEvent(input$swipeActionSheet, {
      f7ActionSheet(
        grid = TRUE,
        id = "swipeAction",
        buttons = list(
          list(
            text = "Notification",
            icon = f7Icon("info"),
            color = NULL
          ),
          list(
            text = "Dialog",
            icon = f7Icon("lightbulb_fill"),
            color = NULL
          )
        )
      )
    })

    # preloaders
    observeEvent(input$showLoader, {
      showF7Preloader(target = "#preloaderPlot", color = "blue")
      Sys.sleep(2)
      hideF7Preloader(target = "#preloaderPlot")
    })
    output$preloaderPlot <- renderPlot({
      hist(rnorm(100))
    })

    # photo browser
    observeEvent(input$togglePhoto, {
      f7PhotoBrowser(
        theme = "dark",
        type = "standalone",
        photos = c(
          "https://cdn.framework7.io/placeholder/sports-1024x1024-1.jpg",
          "https://cdn.framework7.io/placeholder/sports-1024x1024-2.jpg",
          "https://cdn.framework7.io/placeholder/sports-1024x1024-3.jpg"
        )
      )
    })

    # Menus
    observeEvent(input$toggleMenu, {
      updateF7MenuDropdown("menu1")
    })

    observeEvent(input$menuItem1, {
      f7Notif(text = "Well done!")
    })

    # skeleton
    observe({
      invalidateLater(4000)
      f7Skeleton(".skeleton-list", "fade", 2)
    })

    # Treeview
    output$treeview <- renderText({
      input$treeview
    })

    # Table
    output$table <- renderUI({
      f7Table(mtcars[1:15,])
    })

    # pull to refresh
    # observeEvent(input$ptr, {
    #
    #   ptrStatus <- if (input$ptr) "on"
    #
    #   f7Dialog(
    #     text = paste('ptr is', ptrStatus),
    #     type = "alert"
    #   )
    # })
  }
)
