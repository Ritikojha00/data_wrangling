library(nycflights13)
library(dplyr)
head(flights)
# flights in year 2013
flights_year <- filter(flights, year == 2013, origin == 'JFK' | origin == 'EWR' | origin == 'LGA')
# flights in feb and day 1
flights_feb1 <- filter(flights, month == 2, day == 1)

# across for grouping by
# flights.groubpy()
flights |> group_by(across(everything())) |>
  mutate(N= n()) |>
  filter(N>1) |>
  ungroup() |>
  summarise(Total = n())

flights |> select()
flights |> select(minute, hour, everything())

flights |> relocate(minute, .after = year)

sum(!is.na(flights$arr_delay))

sum(is.na(flights_feb1$dep_delay)

flights |> group_by(year, month, day)
  # mutate(N = n())

arrange(flights |> filter(origin == 'EWR') |> summarize(times_ = n())) |> arrange(desc(times_))

library(usethis)
use_git_config(user.name="Ritikojha00",user.email="ritik.ojha@rutgers.edu")
use_git()
use_github()
