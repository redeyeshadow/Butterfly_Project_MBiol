## Comparison Of all three  values

(including equivilent fits from original Wilson et al paper)

```{r}
ORDER <- Joined_coefficients %>%
  filter(variable=='b_Temp', Dataset =='NHM' ) %>%
  arrange(mean) %>%pluck('Sp')

Joined_coefficients%>%
  ggplot( aes( y =  Sp , 
               x = mean, 
               col = Dataset))+
  geom_point()+
  geom_errorbarh(aes( xmin = q5, xmax = q95))+
  geom_vline(xintercept = 0)+
  scale_y_discrete(limits = ORDER)+
  facet_grid(.~variable, scales = 'free')+
  ggtitle('Species-level coefficients')


ggsave(filename = '../figs/compare_coefs_across_three_datasetsM1.png', width = 10, height =6)

Joined_coefficients%>%
  filter(variable%in% c( 'b_Wilson_LateTemp')) %>%
  ggplot( aes( y =  Sp , 
               x = mean, 
               col = Dataset))+
  geom_point()+
  geom_errorbarh(aes( xmin = q5, xmax = q95))+
  geom_vline(xintercept = 0)+
  facet_grid(Specialism~variable, scales = 'free')+
  ggtitle('Species-level coefficients')

```
