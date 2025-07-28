### Influence of particualr data points


load(file = '../OUM_modelfitsM1/ Sp.Aglais io') 
InfluenceVals_A.io<-   pareto_k_influence_values(loo(MODEL_FIT))
  
  
load(file = '../OUM_modelfitsM1/ Sp.Coenonympha tullia') 
InfluenceVals_C.tu<-   pareto_k_influence_values(loo(MODEL_FIT))




InfluenceVals_A.io %>% hist

InfluenceVals_C.tu %>% hist

LOO_X$diagnostics


load(file = '../NHM_modelfitsM1/ Sp.Melitaea cinxia') 
InfluenceVals_Glanville<-   pareto_k_influence_values(loo(MODEL_FIT))

hist(InfluenceVals_Glanville)

Data_GlvF<- MODEL_FIT$data
  
Data_GlvF$pareto_k <- InfluenceVals_Glanville

Data_GlvF %>%
  ggplot(aes( x = Latitude, y =pareto_k))+
  geom_point()

Data_GlvF %>%
  ggplot(aes( x = YearRescale, y =pareto_k))+
  geom_point()

Data_GlvF %>%
  ggplot(aes( x = Temp, y =pareto_k))+
  geom_point()


InfluenceVals_Glanville %>% sd






