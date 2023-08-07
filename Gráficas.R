library(ggplot2)
library(dplyr)

# INVERSION
# Sample data
df <- data.frame(
  value = c(94.6, 5.1),
  group = paste0("G", 1:2)
)

# Hole size
hsize <- 2
df <- df %>% mutate(x = hsize)

ggplot(df, aes(x = hsize, y = value, fill = group)) +
  geom_col() +
  coord_polar(theta = "y") +
  #geom_text(aes(label = paste0(value, "%")), position = position_dodge(width = 0.9), vjust = -2, size = 5)+
  xlim(c(0.01, hsize + 3))+
  theme(legend.position = "none",
        panel.background = element_rect(fill = "#ffffff"),
        plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("light blue", "dark green"))


# GASTO CORRIENTE
# Sample data
df <- data.frame(
  value = c(27, 73),
  group = paste0("G", 1:2)
) 

#Hole size
hsize <- 2
df <- df %>% mutate(x = hsize)

ggplot(df, aes(x = hsize, y = value, fill = group)) +
  geom_col() +
  coord_polar(theta = "y") +
  #geom_text(aes(label = paste0(value, "%")), position = position_dodge(width = 0.9), vjust = -2, size = 5)+
  xlim(c(0.01, hsize + 3))+
  theme(legend.position = "none",
        panel.background = element_rect(fill = "#ffffff"),
        plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("light blue", "red"))

# SERVICIOS PERSONALES
# Sample data
df <- data.frame(
  value = c(82.9, 17.1),
  group = paste0("G", 1:2)
) 

#Hole size
hsize <- 2
df <- df %>% mutate(x = hsize)

ggplot(df, aes(x = hsize, y = value, fill = group)) +
  geom_col() +
  coord_polar(theta = "y") +
  #geom_text(aes(label = paste0(value, "%")), position = position_dodge(width = 0.9), vjust = -2, size = 5)+
  xlim(c(0.01, hsize + 3))+
  theme(legend.position = "none",
        panel.background = element_rect(fill = "#ffffff"),
        plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("light blue", "dark orange"))
