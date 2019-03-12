nrs_palette <- list(

  neutral = c("black" = "#000000",
              "tundora" = "#4B4B4B",
              "grey" = "#828282",
              "silver" = "#b9b9b9",
              "white" = "#FFFFFF"),

  household = c("dark" = "#496218",
                "main" = "#5C7B1E",
                "light" = "#ADBD8E"),

  population = c("dark" = "#248078",
                 "main" = "#2DA197",
                 "light" = "#96D0CB"),

  death = c("dark" = "#203F7A",
            "main" = "#284F99",
            "light" = "#93A7CC"),

  life_exp = c("dark" = "#50518B",
               "main" = "#6566AE",
               "light" = "#B2B2D6"),

  migration = c("dark" = "#731F71",
                "main" = "#90278E",
                "light" = "#C793C6"),

  marriage_electoral = c("dark" = "#A02963",
                         "main" = "#C9347C",
                         "light" = "#E499BD")
)

usethis::use_data(nrs_palette)
