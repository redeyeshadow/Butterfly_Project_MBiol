
# Quick code to pull out data from wilson spreadsheet and merge with brood table

```{r}
# 
# WilsonSH3<- read_xlsx('../data/NHM/Wilson_et_al_MEE_data.xlsx', sheet = 3)
# 
# 
# WilsonSH3 %>%
#   count(Species, Generation, Overwinter ,`Early larval month`,`Late larval month` ,`Pupal month`, NOTE) %>%
#   arrange( Species) %>%
#   write_csv('../data/WilsonMonthAssign.csv')
# 
# BroodTable <- read_csv('../data/brood_table.csv')
# Names <- read_csv('../data/names_table.csv')
# 
# BroodTable %>%
#   left_join(Names, by = 'NHM name') %>%
#   relocate(`Elsa name`, `Taxon name`,`NHM name`) %>%
#   write_csv('../data/brood_table.csv')



BroodTable <- read_csv('../data/brood_table_CTupdates.csv')

BroodTable %>%
  filter( Include) %>%
  count(BroodFocalUse, FocalMonthLateLarval)



```


