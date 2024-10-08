## ----setup, echo=FALSE, message=FALSE-----------------------------------------
library(bslib)

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs5EqKTlEKERUrbcACZKANbbAGLLADIAygCiuGcRTg8G2-HKwlMuH8ZyupCMYLAAEkIKgWKRQl8oMpOKR+NCXGc9j8tHkjFicejTmdnNAAG50JTbPYAOSgDKU1JpQMKCIi-BRaIxzgpuPxMO5znUUEkDCkEDgH2+-wlZxMBMley+kgeqppNjgpG2ABUsABVAF6s6PSR0ySPaq3Zymi0ayXOWwMEh5E3my2EyW4+WKiKfX7+907XbGuAADx4Vv1qPRSMeiPI8fFAfd4igdDg4kRMfjzi0QqzkdcdPsLBDbjAPyIoIzeL82clqFzOXURHEDoYiIAmpwBy2pdVfInnOqp3ti6RloEoFzJWWU2n+WAW0o4FAK5Xc-nC5v584d1BS8nW27I9XxLXEY3m3Hr1PXJ3aj2+9UhyOgS-x0CfgpxndsiV2H4CzgAgEzApMhVTRFhCgmD90jQ8C0RHQoBeRULwIHtJByND3QIogiLgJ0AEZEAAZhvd1kKMGC4A3ZwqJAhiaT2ZZ0SIABhJtO0NE430vBC2P4GBlCgPjiBgYTyBIjsuzgL9+0fJtFTHdQJwAQmU7kLgoFFEUeL1UEeIhqF6NtK2cDDj3rY1lFQPCdgYTYjWgeBDJpMiKKdKIxNcfhVmE-F61WVJiGvKK6SIAgoCsyL+AAISgaBoFSsAdALEg-O5fgAHl2mOHL9l3AiKt3BgKq0Xd0CMYC4LVTjZ2jIg8jJUTWtcNdSEQzdSC6nrCtcRyi1GhFfLAdrWr2fYiNwhgV25AahvrVBluqcbnA-btew0zcn20gDdMCAy7IPPNMM3JaCBW5xBXRPaApyILoj3PB6zoHKCChMSLiuEgnXuHgNDgQ19hEdRfQtHpI1AyM9gAESgcgHpWtb4PXMyMd8LjuUm+7lrPZxniU67bxrOsfmUYQMHR8huER91kfdPZBPEIgGCx6ocbODbJLAaTiB5hhtse3bqfdA61KOn8Tq0-8SwuuArqJmkSfrSDmKNfDe15lqkatNnXDZjnkIYOklZ2NgYOubgBsBXEhRMZwQBhABfbowG9gBdIA", # nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE,
  style = "width: 393px; margin: 0 auto; float: none;"
)

## ----eval = FALSE-------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  
#  shinyApp(
#    ui = f7Page(
#      options = list(dark = FALSE, theme = "ios"),
#      title = "Inputs Layout",
#      f7SingleLayout(
#        navbar = f7Navbar(
#          title = "Inputs Layout",
#          hairline = FALSE
#        ),
#        f7List(
#          inset = TRUE,
#          dividers = TRUE,
#          strong = TRUE,
#          outline = FALSE,
#          f7Text(
#            inputId = "text",
#            label = "Text input",
#            value = "Some text",
#            placeholder = "Your text here"
#          ),
#          f7TextArea(
#            inputId = "textarea",
#            label = "Text area input",
#            value = "Some text",
#            placeholder = "Your text here"
#          ),
#          f7Select(
#            inputId = "select",
#            label = "Make a choice",
#            choices = 1:3,
#            selected = 1
#          ),
#          f7AutoComplete(
#            inputId = "myautocomplete",
#            placeholder = "Some text here!",
#            openIn = "dropdown",
#            label = "Type a fruit name",
#            choices = c(
#              "Apple", "Apricot", "Avocado", "Banana", "Melon",
#              "Orange", "Peach", "Pear", "Pineapple"
#            )
#          ),
#          f7Toggle(
#            inputId = "toggle",
#            label = "Toggle me"
#          ),
#          f7Picker(
#            inputId = "picker",
#            placeholder = "Some text here!",
#            label = "Picker Input",
#            choices = c("a", "b", "c"),
#            options = list(sheetPush = TRUE)
#          ),
#          f7DatePicker(
#            inputId = "date",
#            label = "Pick a date",
#            value = Sys.Date()
#          ),
#          f7ColorPicker(
#            inputId = "mycolorpicker",
#            placeholder = "Some text here!",
#            label = "Select a color"
#          )
#        )
#      )
#    ),
#    server = function(input, output) {
#    }
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs5EqKTlEKERUrbcACZKANbbAGLLADIAygCiuGcRTg8G2-HKwlMuH8ZyupCMYLAAEkIKgWKRQl8oMpOKR+NCXGc9j8tHkjFicejTmdnNAAG50JTbPYAOSgDKU1JpQMKCIi-BRaIxzgpuPxMO5znUUEkDCkEDgH2+-wlZxMBMley+kgeqppNjgpG2ABUsABVAF6s6PSR0ySPaq3Zymi0ayXOWwMEh5E3my2EyW4+WKiKfX7+907XbGuAADx4Vv1qPRSMeiPI8fFAfd4igdDg4kRMfjzi0QqzkdcdPsLBDbjAPyIoIzeL82clqFzOXURHEDoYiIAmpwBy2pdVfInnOqp3ti6RloEoFzJWWU2n+WAW0o4FAK5Xc-nC5v584d1BS8nW27I9XxLXEY3m3Hr1PXJ3aj2+9UhyOgS-x0CfgpxndsiV2H4CzgAgEzApMhVTRFhCgmD90jQ8C0RHQoBeRULwIHtJByND3QIogiLgJ0AEZEAAZhvd1kKMGC4A3ZwqJAhiaT2ZZ0SIABhJtO0NE430vBC2P4GBlCgPjiBgYTyBIjsuzgL9+0fJtFTHdQJwAQmU7kLgoFFEUeL1UEeIhqF6NtK2cDDj3rY1lFQPCdgYTYjWgeBDJpMiKKdKIxNcfhVmE-F61WVJiGvKK6SIAgoCsyL+AAISgaBoFSsAdALEg-O5fgAHl2mOHL9l3AiKt3BgKq0Xd0CMYC4LVTjZwg8h0GqFduTXUhEM3Wwgjcuq7IPPNMM3HRlA9LrRsK1wYC0bYAAYuO5YhxCIAdNwdLIWHEV9WqWqBY22Kj1rEu8HwiAAWdrWrnIg8jJUSTvE9d0xet7FocyanP4Y0foRXywEeyM9n2IjcIYXr4K+zdUBh6o-o-btew0zcn20gDdMCAzxvQgHEWhghYecQV0T+gKciC6I9zwes6ByggoTEi4rhIJ17h4DQ4ENfYRHUX0LR6SNQMh3YABEoHIMnYfhs5+sG+tniUomcxJzcFbPZx1d8DaaRuusfmUYQMFl8huHF91JfdPZBO2hgFZ6sSVcksBpK2nbkfJ1HNZUz9MZ-bGtP-Et8bgQmjbORzHxQo18N7HaWolq17e43Z+N08m6CIWMAHEvRYVAlY9xECOgl589jQr483HPq9r5w8hL1BCtpyjtmClAcpZpn+DZsBM+5JjoPIT3Gdj2xlD5BydVg+yDSNCIXQjSsbTtfsnXX2PXE9b1RY3yMgwapVwxAjONr2LBkvKcur1V-hFBtIh6+1+s77f1v287wi6Y9wZv3Vm7NWrjxYlPQqs9568yVq4Fex99761tPaR0SCxKHwgD6NefpkFnwVBfFUrVbY0lIdOGE9tkIMDpKHHYbAYLXG4P1QEuIhQmGcCAGEABfboYBuEAF0gA", # nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE,
  style = "width: 393px; margin: 0 auto; float: none;"
)

## ----eval = FALSE-------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  
#  shinyApp(
#    ui = f7Page(
#      options = list(dark = FALSE, theme = "ios"),
#      title = "Inputs Layout",
#      f7SingleLayout(
#        navbar = f7Navbar(
#          title = "Inputs Layout",
#          hairline = FALSE
#        ),
#        f7List(
#          inset = TRUE,
#          dividers = TRUE,
#          strong = TRUE,
#          outline = FALSE,
#          f7Text(
#            inputId = "text",
#            label = "Text input",
#            value = "Some text",
#            placeholder = "Your text here"
#          ),
#          f7TextArea(
#            inputId = "textarea",
#            label = "Text area input",
#            value = "Some text",
#            placeholder = "Your text here"
#          ),
#          f7Select(
#            inputId = "select",
#            label = "Make a choice",
#            choices = 1:3,
#            selected = 1
#          ),
#          f7AutoComplete(
#            inputId = "myautocomplete",
#            placeholder = "Some text here!",
#            openIn = "dropdown",
#            label = "Type a fruit name",
#            choices = c(
#              "Apple", "Apricot", "Avocado", "Banana", "Melon",
#              "Orange", "Peach", "Pear", "Pineapple"
#            )
#          ),
#          f7Stepper(
#            inputId = "stepper",
#            label = "My stepper",
#            min = 0,
#            color = "default",
#            max = 10,
#            value = 4
#          ),
#          f7Toggle(
#            inputId = "toggle",
#            label = "Toggle me"
#          ),
#          f7Picker(
#            inputId = "picker",
#            placeholder = "Some text here!",
#            label = "Picker Input",
#            choices = c("a", "b", "c"),
#            options = list(sheetPush = TRUE)
#          ),
#          f7DatePicker(
#            inputId = "date",
#            label = "Pick a date",
#            value = Sys.Date()
#          ),
#          f7ColorPicker(
#            inputId = "mycolorpicker",
#            placeholder = "Some text here!",
#            label = "Select a color"
#          )
#        ),
#        f7CheckboxGroup(
#          inputId = "checkbox",
#          label = "Checkbox group",
#          choices = c("a", "b", "c"),
#          selected = "a",
#          style = list(
#            inset = TRUE,
#            dividers = TRUE,
#            strong = TRUE,
#            outline = FALSE
#          )
#        ),
#        f7Radio(
#          inputId = "radio",
#          label = "Radio group",
#          choices = c("a", "b", "c"),
#          selected = "a",
#          style = list(
#            inset = TRUE,
#            dividers = TRUE,
#            strong = TRUE,
#            outline = FALSE
#          )
#        )
#      )
#    ),
#    server = function(input, output) {
#    }
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrju7AMpaeUYAMlDKnDz+Z67QAG50Stt7AHJQnyU3FIhSM234AEkIKgWKRQhkiAwYKZcC9XnsAELiIgEADW3ExsNIJGiLFQABMoOR+Lg3GAAMJSPHOeCmEyolyvc5YnG4gAqoJO-GWziktmcRAyzi0MLh0pcUB2iORYHZaLOe1uklspy58uEcFI2z5WAAqgBRDl61zkyTvSTk6qhCIAMWWtwulvVr1sDBIeWNZq9nL1TykEDg2zdHuD1vOLuVuutDvBYBgygRSJp3q5ez5cAAHs8Q3H5bKIeTU+Qi9mS3HxFA6HBxKn80Wy7Da6Wzu97CxIxF+BciPBnNXSF3u85UA2cuoiOJHQxUwBNTjL8fOdTVXxWqe2ZRgiJi4tTs6O4RtSSoEEkVMi4gLseFo0yzt+OulsNaAfOE0Wvcz3gW1FQiPYIWICBonnERfDVT84wIIwlEbI8-yDQCpwybEqWuQMLRzPUem7eDuzzF9lkCKAkzjN9SArKsXyUOAoEnbsGybFtBzANsjUoli2NLXtxH7VNbkROAYGlBIWCk8kF0RZxhEKZxYENWlIINAhyFIFgGEI60oFtVBtQIPDm0KWkDUreTnDgSQRA4StyBgYJly0MzbXJLhnE7BDrQ4iS7KNeTsUCFkjmgVSpAARxYViPzPGdannRdqlXddn3bbdAkEuNAmUgAvX9-1jfdSEPX8Txo0sLyvG9yhcbiHyIJ9NzovKv1hcMSowgy9WAyRQPOCCSX4GCDRRfquSQljFDoNDSswsicJBCAAwiUrptcYjS1I0s9kOYRhGoRFyRqvU6IY7jUCaE6zs6vUOObVMjvuhhyUQR6uWSucFyXDK9OnO7To+rcd2+n0KrQ6rtvPOBL1SBq72ayJWpbdroXfZautIHr8LKoC4BAn5dlGqDxs4SbVRxxDkPmxa+v8vVsKIXD1oJuHdrjfa4z2C5mzgbSLq5K7K24g0jG0yGzmeri6QFqWjUVCBZKbfTEqnAh50kHJnUibgAEZaQAJlpABmXnSwPGHtVPM9nDqpHbyaukRUloWXZl15vwjAnaetQbhvAyDoKpuCuem7muWjnaccxbE8W4d5qi+EEYF4gB5WFZWiTMVRMaPdv2g0GBT5cwLYbTGu4OjaSeWUrIR5SSBMZwQHVBvYQAEnz5wAB46mcQIICXfZUjIWusdIbv03z6PO7oUuU-NFPJ7o7uyUpchaQ7z8t6pOAXV2BMkRF-g5+Vb7t+G2Hmbpcd+FTX44GoLKJ01uN+HHZiEuf1-36qSojLfgt1jqg3JE-biL835gPepAz+1p3CC2lmAbY5sDKx2cNHAAvrtHB3QwA4IALpAA", # nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE,
  style = "width: 393px; margin: 0 auto; float: none;"
)

## ----eval = FALSE-------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  
#  shinyApp(
#    ui = f7Page(
#      f7SingleLayout(
#        navbar = f7Navbar(title = "Inputs form"),
#        f7Block(f7Button("update", "Click me")),
#        f7BlockTitle("A list of inputs in a form"),
#        f7List(
#          inset = TRUE,
#          dividers = FALSE,
#          strong = TRUE,
#          outline = FALSE,
#          f7Form(
#            id = "myform",
#            f7Text(
#              inputId = "text",
#              label = "Text input",
#              value = "Some text",
#              placeholder = "Your text here",
#              style = list(
#                description = "A cool text input",
#                outline = TRUE,
#                media = f7Icon("house"),
#                clearable = TRUE,
#                floating = TRUE
#              )
#            ),
#            f7TextArea(
#              inputId = "textarea",
#              label = "Text Area",
#              value = "Lorem ipsum dolor sit amet, consectetur
#                adipiscing elit, sed do eiusmod tempor incididunt ut
#                labore et dolore magna aliqua",
#              placeholder = "Your text here",
#              resize = TRUE,
#              style = list(
#                description = "A cool text input",
#                outline = TRUE,
#                media = f7Icon("house"),
#                clearable = TRUE,
#                floating = TRUE
#              )
#            ),
#            f7Password(
#              inputId = "password",
#              label = "Password:",
#              placeholder = "Your password here",
#              style = list(
#                description = "A cool text input",
#                outline = TRUE,
#                media = f7Icon("house"),
#                clearable = TRUE,
#                floating = TRUE
#              )
#            ),
#            f7Select(
#              inputId = "select",
#              label = "Select a number",
#              choices = c(1, 2, 3),
#              style = list(
#                description = "A selection",
#                outline = TRUE,
#                media = f7Icon("house")
#              )
#            )
#          )
#        ),
#        f7Block(verbatimTextOutput("form"))
#      )
#    ),
#    server = function(input, output, session) {
#      output$form <- renderPrint(input$myform)
#  
#      observeEvent(input$update, {
#        updateF7Form(
#          "myform",
#          data = list(
#            "text" = "New text",
#            "textarea" = "New text area",
#            "password" = "New password",
#            "select" = 3
#          )
#        )
#      })
#    }
#  )

