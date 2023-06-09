# Incluimos el paquete
library(ggplot2)

# Gráfico con estilo básico
gg <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, col = Species)) + 
  geom_jitter()
gg

# PROPIEDADES DE LINEA
# --------------------
gg <- gg + 
  theme(axis.line = element_line(color = "black", size=1),
        axis.ticks = element_line(color = "black", size=1),        
        panel.grid.major = element_line(color = "lightgrey", linetype=2),
        panel.grid.minor = element_line(color = "lightgrey", linetype=2))
gg


# PROPIEDADES DE CONTENEDOR
# -------------------------
gg <- gg + 
  theme(panel.background = element_blank(),
        legend.background = element_rect(color="black"),
        legend.key = element_blank())  
gg

# PROPIEDADES DE TEXTO
# --------------------
gg <- gg + 
  theme(axis.title = element_text(size = 14, color = "#555555", face="bold", hjust = 1),
        axis.text = element_text(color = "black", size=12, face = "bold"),
        legend.title = element_text(size = 14, color = "#555555", face="bold", hjust = 1),
        legend.text = element_text(size = 14, color = "#555555"))
gg        

# TEMAS PREDEFINIDOS
# ------------------
gg <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, col = Species)) + 
  geom_jitter()

gg + theme_bw()
gg + theme_light()
gg + theme_linedraw()

# GESTIÓN DE TEMAS
# ----------------

# Obtención de tema por defecto
default.theme <- theme_get()
default.theme$panel.background

# Actualización de tema por defecto
theme_update(panel.background = element_blank())
gg

# Establecimiento del tema por defecto
new.theme <- default.theme + theme(panel.background = element_rect(fill = "red"))
gg + new.theme
theme_set(new.theme)
gg
theme_set(default.theme)
gg

#Anotaciones 
#----------------

# Gráfico básico
gg <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, col = Species)) + 
  geom_jitter()
gg

# Anotaciones de texto
gg + annotate("text", label = "Anotación de texto", x = 4, y = 5, hjust = 0, face = "bold", family = "Courier")

# Anotaciones de segmento
gg + annotate("segment", x = 4.5, y = 2.5, xend = 6.5, yend = 4, col = "red", size = 2)

# Anotaciones de rectángulo
gg + annotate("rect", xmin = 5.8, xmax = 7, ymin = 2.5, ymax = 3.5, fill = "blue", alpha = 0.1)



