library(shiny)
library(shinyMobile)

app <- shinyApp(
  ui = f7Page(
    title = "My app",
    f7SingleLayout(
      navbar = f7Navbar(title = "f7Treeview"),

      # simple treeview
      f7BlockTitle("Simple"),
      f7Block(
        f7Treeview(
          id = "simple",
          lapply(1:3, function(i) f7TreeviewItem(label = paste0("Item ", letters[i])))
        )
      ),

      # simple treeview with icons
      f7BlockTitle("Icons"),
      f7Block(
        f7Treeview(
          id = "icons",
          lapply(1:3, function(i) f7TreeviewItem(label = paste0("Item ", letters[i]),
                                                 icon = f7Icon("folder_fill")))
        )
      ),

      # group treeview with icons
      f7BlockTitle("Group"),
      f7Block(
        f7Treeview(
          id = "group",
          startExpanded = TRUE,
          f7TreeviewGroup(
            title = "Images",
            icon = f7Icon("folder_fill"),
            toggleButton = TRUE,
            lapply(1:3, function(i) f7TreeviewItem(label = paste0("image", i, ".png"),
                                                   icon = f7Icon("photo_fill")))
          )
        )
      ),

      # group treeview with selectable items
      f7BlockTitle("Selectable items"),
      f7Block(
        f7Treeview(
          id = "selectable",
          selectable = TRUE,
          f7TreeviewGroup(
            title = "Selected images",
            icon = f7Icon("folder_fill"),
            itemToggle = TRUE,
            lapply(1:3, function(i) f7TreeviewItem(label = paste0("image", i, ".png"),
                                                   icon = f7Icon("photo_fill")))
          )
        )
      ),

      # group treeview with checkbox items
      f7BlockTitle("Checkbox"),
      f7Block(
        f7Treeview(
          id = "checkbox",
          withCheckbox = TRUE,
          f7TreeviewGroup(
            title = "Selected images",
            icon = f7Icon("folder_fill"),
            itemToggle = TRUE,
            lapply(1:3, function(i) f7TreeviewItem(label = paste0("image", i, ".png"),
                                                   icon = f7Icon("photo_fill")))
          )
        )
      ),

      # group treeview with checkbox items
      f7BlockTitle("With links"),
      f7Block(
        f7Treeview(
          id = "links",
          f7TreeviewGroup(
            title = "Links",
            icon = f7Icon("link"),
            itemToggle = TRUE,
            f7TreeviewItem(label = "GitHub",
                           icon = f7Icon("logo_github"),
                           href = "https://github.com/"),
            f7TreeviewItem(label = "CRAN",
                           icon = f7Icon("link"),
                           href = "https://cran.r-project.org/")),
        )
      )
    )
  ),
  server = function(input, output) {

    observe({
      req(input$selectable)
      print(input$selectable)
    })

    observe({
      req(input$checkbox)
      print(input$checkbox)
    })

  }
)

if (interactive() || identical(Sys.getenv("TESTTHAT"), "true")) app
