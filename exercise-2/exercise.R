### Exercise 2: Data Frame Practice with dplyr

## This exercise need the "fueleconomy" package.  Install and load it.
## You should have have access to the `vehicles` data.frame

## Install (if you haven't already) and load the `dplyr`package

# You should have have access to the `vehicles` data.frame


# Create a data.frame of vehicles from 1997
v_1997 <- filter(vehicles, year == 1997)

# Use the `unique` function to verify that there is only 1 value in the `year` column of your new data.frame
unique(v_1997$year)

# Create a data.frame of 2-Wheel Drive vehicles that get more than 20 miles/gallon in the city
two_wheel_more20 <- filter(vehicles, drive == "2-Wheel Drive", cty > 20)

# Of those vehicles, what is the vehicle ID of the vehicle with the worst hwy mpg?
worst <- filter(two_wheel_more20, hwy == min(hwy)) %>% 
         select(id)

# Write a function that takes a `year` and a `make` as parameters, and returns 
# The vehicle that gets the most hwy miles/gallon of vehicles of that make in that year
make_year_filter <- function(my_make, my_year){
  filtered <- filter(vehicles, year == my_year, make == my_make) %>% 
              filter(hwy == max(hwy))
  return(filtered)
}

# What was the most efficient honda model of 1995?
# make_year_filter("Honda", 1995)
# # A tibble: 1 x 12
# id make  model     year class      trans     drive         cyl displ fuel    hwy   cty
# <int> <chr> <chr>    <int> <chr>      <chr>     <chr>       <int> <dbl> <chr> <int> <int>
#   1 11703 Honda Civic H~  1995 Subcompac~ Manual 5~ Front-Whee~     4   1.5 Regu~    50    39
> 

