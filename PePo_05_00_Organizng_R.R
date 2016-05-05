# PePo_05_00_Organizing_R
# lynda.com - Data Science Tips - organize R code
# PePo - 2016_0505

# HEADERS IN RSTUDIO #####################################

# Headers allow folding and navigation
# Start with #-sign, end with 4 or more #, =, or -.

# Level 1 Header #########################################
## Level 2 Header ########################################
### Level 3 Header #######################################

# Outlines & Navigation ##################################

# - "Show docment outline" by clicking button,
#   using Code menu, or keyboard
# - Navigate to a section bij clicking on name in outline.
# - "Jump To" menu by clicking at bottom of window,
#   using code menu, or keyboard.

# FOLDING CODE ###########################################

# Foldable regions
# 1. Braced regions
# 2. Code chunks within R Sweave or R Markdown documents
# 3. Text sections between headers with R Markdown docs
# 4. Code section
# 5. Arbitrary selections of code

## How to Fold sections ####################################

# Arrows in margin, Edit menu, or keyboard:
# - Collapse - Alt+L
# - Expand - Shift+Alt+L
# - Collapse All - Alt+O
# - Expand All - Shift+Alt+O
# - Click on blue marker for collapsed region

## A sample function with nested statement ##################

disp2d <- function(x, mad = F) {
  if (!mad) {
    dispersion <- sd(x)
    cat("SD = ", round(dispersion, digits = 2), "\n")
  } else {
    dispersion <- mad(x)
    cat("MAD = ", round(dispersion, digits = 2), "\n")
  }
} # endof disp2d()

# CLEAN UP ####################################################

# Clear workspace
rm(list = ls())

# Clear console
cat("\014") #ctrl+L
