library(dplyr)
library(sf)

asp <- st_read(dsn = "areas-silvestres-protegidas.geojson")
iguanita <- asp %>% filter(nombre_asp == "Iguanita")
iguanita_buffer <- iguanita %>% st_buffer(dist = 5000)

iguanita_buffer %>% st_write("iguanita_buffer.geojson")
iguanita_buffer %>% st_transform(4326) %>% st_write("iguanita_buffer_wgs84.geojson")