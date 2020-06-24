library("rWBclimate")
library(dplyr)

library(raster)

library(rnoaa)

library(leaflet)

library(ggplot2)

library(rayshader)

library(elevatr)

library(maps)

memory.limit(size=105000)




##### japan


examp_df <- data.frame(x = runif(100, min = 39.83, max = 40.84), y = runif(100, min = -18.20, 
                                                                         max = -17.77))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"




elevation <- get_elev_raster(examp_df, prj = prj_dd, z = 5)





elev_matrix <- matrix(
  raster::extract(elevation, raster::extent(elevation), buffer = 1000), 
  nrow = ncol(elevation), ncol = nrow(elevation)
)



list = c(1,  2,    3,   4,   5,  6)

k=0

y = 0

x=0

z = 1

i = 1

for (i in list) {
  
  elev_matrix %>%
    sphere_shade(zscale = 10, texture = "unicorn") %>%
    
    plot_3d(elev_matrix, zscale = 50, fov = 70, theta = y, phi = 85, 
            windowsize = c(1200, 800), zoom = .3-x, 
            water = TRUE, waterdepth = i, wateralpha = 0.9, watercolor = "#00001a",
            waterlinecolor = "white", waterlinealpha = 0.5)
  
  
  
  img_frames <- paste0(i, ".png")
  
  #render_highquality()
  render_snapshot(img_frames)
  rgl::clear3d()
  
  k = k +5
  y =y +.1
  z=z+1
  
  x = x +.001
  
}



list= list.files()

magick::image_write_gif(magick::image_read(list), 
                        path = "mozambique.gif", 
                        delay = 1/7)



####


##### mumbai


examp_df <- data.frame(x = runif(100, min = 72.86, max = 72.88), y = runif(100, min = 19.06, 
                                                                           max = 19.08))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"




elevation <- get_elev_raster(examp_df, prj = prj_dd, z = 5)





elev_matrix <- matrix(
  raster::extract(elevation, raster::extent(elevation), buffer = 1000), 
  nrow = ncol(elevation), ncol = nrow(elevation)
)



list = c(1,  2,    3,   4,   5,  6)

k=0

y = 0

x=0

z = 1

i = 1

for (i in list) {
  
  elev_matrix %>%
    sphere_shade(zscale = 10, texture = "unicorn") %>%
    
    plot_3d(elev_matrix, zscale = 50, fov = 70, theta = y, phi = 85, 
            windowsize = c(1200, 800), zoom = .3-x, 
            water = TRUE, waterdepth = i, wateralpha = 0.9, watercolor = "#00001a",
            waterlinecolor = "white", waterlinealpha = 0.5)
  
  
  
  img_frames <- paste0(i, ".png")
  
  #render_highquality()
  render_snapshot(img_frames)
  rgl::clear3d()
  
  k = k +5
  y =y +.1
  z=z+1
  
  x = x +.001
  
}



list= list.files()

magick::image_write_gif(magick::image_read(list), 
                        path = "india.gif", 
                        delay = 1/7)





#### medit


examp_df <- data.frame(x = runif(100, min = 24.72, max = 25.16), y = runif(100, min = 36.93, 
                                                                           max = 37.15))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"




elevation <- get_elev_raster(examp_df, prj = prj_dd, z = 5)





elev_matrix <- matrix(
  raster::extract(elevation, raster::extent(elevation), buffer = 1000), 
  nrow = ncol(elevation), ncol = nrow(elevation)
)



list = c(1,  2,    3,   4,   5,  6)

k=0

y = 0

x=0

z = 1

i = 1

for (i in list) {
  
  elev_matrix %>%
    sphere_shade(zscale = 10, texture = "unicorn") %>%
    
    plot_3d(elev_matrix, zscale = 50, fov = 70, theta = y, phi = 85, 
            windowsize = c(1200, 800), zoom = .3-x, 
            water = TRUE, waterdepth = i, wateralpha = 0.9, watercolor = "#00001a",
            waterlinecolor = "white", waterlinealpha = 0.5)
  
  
  
  img_frames <- paste0(i, ".png")
  
  #render_highquality()
  render_snapshot(img_frames)
  rgl::clear3d()
  
  k = k +5
  y =y +.1
  z=z+1
  
  x = x +.001
  
}



list= list.files()

magick::image_write_gif(magick::image_read(list), 
                        path = "northafrica.gif", 
                        delay = 1/7)



#### china


examp_df <- data.frame(x = runif(100, min = 121.00, max = 126.00), y = runif(100, min = 31.00, 
                                                                           max = 33.00))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"




elevation <- get_elev_raster(examp_df, prj = prj_dd, z = 5)





elev_matrix <- matrix(
  raster::extract(elevation, raster::extent(elevation), buffer = 1000), 
  nrow = ncol(elevation), ncol = nrow(elevation)
)



list = c(1,  2,    3,   4,   5,  6)

k=0

y = 0

x=0

z = 1

i = 1

for (i in list) {
  
  elev_matrix %>%
    sphere_shade(zscale = 10, texture = "unicorn") %>%
    
    plot_3d(elev_matrix, zscale = 50, fov = 70, theta = y, phi = 85, 
            windowsize = c(1200, 800), zoom = .3-x, 
            water = TRUE, waterdepth = i, wateralpha = 0.9, watercolor = "#00001a",
            waterlinecolor = "white", waterlinealpha = 0.5)
  
  
  
  img_frames <- paste0(i, ".png")
  
  #render_highquality()
  render_snapshot(img_frames)
  rgl::clear3d()
  
  k = k +5
  y =y +.1
  z=z+1
  
  x = x +.001
  
}



list= list.files()

magick::image_write_gif(magick::image_read(list), 
                        path = "china.gif", 
                        delay = 1/7)





################## africa



examp_df <- data.frame(x = runif(100, min = 18.00, max = 20.00), y = runif(100, min = -31.00, 
                                                                             max = -28.00))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"




elevation <- get_elev_raster(examp_df, prj = prj_dd, z = 5)





elev_matrix <- matrix(
  raster::extract(elevation, raster::extent(elevation), buffer = 1000), 
  nrow = ncol(elevation), ncol = nrow(elevation)
)



list = c(1,  2,    3,   4,   5,  6)

k=0

y = 0

x=0

z = 1

i = 1

for (i in list) {
  
  elev_matrix %>%
    sphere_shade(zscale = 10, texture = "unicorn") %>%
    
    plot_3d(elev_matrix, zscale = 50, fov = 70, theta = y, phi = 85, 
            windowsize = c(1200, 800), zoom = .3-x, 
            water = TRUE, waterdepth = 2*i, wateralpha = 0.9, watercolor = "#00001a",
            waterlinecolor = "white", waterlinealpha = 0.5)
  
  
  
  img_frames <- paste0(i, ".png")
  
  #render_highquality()
  render_snapshot(img_frames)
  rgl::clear3d()
  
  k = k +5
  y =y +.1
  z=z+1
  
  x = x +.001
  
}



list= list.files()

magick::image_write_gif(magick::image_read(list), 
                        path = "capetown.gif", 
                        delay = 1/7)


###### manila




examp_df <- data.frame(x = runif(100, min = 120.00, max = 121.00), y = runif(100, min = 14.00, 
                                                                           max = 15.00))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"




elevation <- get_elev_raster(examp_df, prj = prj_dd, z = 5)





elev_matrix <- matrix(
  raster::extract(elevation, raster::extent(elevation), buffer = 1000), 
  nrow = ncol(elevation), ncol = nrow(elevation)
)



list = c(1,  2,    3,   4,   5,  6)

k=0

y = 0

x=0

z = 1

i = 1

for (i in list) {
  
  elev_matrix %>%
    sphere_shade(zscale = 10, texture = "unicorn") %>%
    
    plot_3d(elev_matrix, zscale = 50, fov = 70, theta = y, phi = 85, 
            windowsize = c(1200, 800), zoom = .3-x, 
            water = TRUE, waterdepth = 2*i, wateralpha = 0.9, watercolor = "#00001a",
            waterlinecolor = "white", waterlinealpha = 0.5)
  
  
  
  img_frames <- paste0(i, ".png")
  
  #render_highquality()
  render_snapshot(img_frames)
  rgl::clear3d()
  
  k = k +5
  y =y +.1
  z=z+1
  
  x = x +.001
  
}



list= list.files()

magick::image_write_gif(magick::image_read(list), 
                        path = "pi.gif", 
                        delay = 1/7)


###### nyc




examp_df <- data.frame(x = runif(100, min = -79, max = -77.5), y = runif(100, min = 41.00, 
                                                                             max = 44.00))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"




elevation <- get_elev_raster(examp_df, prj = prj_dd, z = 5)





elev_matrix <- matrix(
  raster::extract(elevation, raster::extent(elevation), buffer = 1000), 
  nrow = ncol(elevation), ncol = nrow(elevation)
)



list = c(1,  2,    3,   4,   5,  6)

k=0

y = 0

x=0

z = 1

i = 1

for (i in list) {
  
  elev_matrix %>%
    sphere_shade(zscale = 10, texture = "unicorn") %>%
    
    plot_3d(elev_matrix, zscale = 50, fov = 70, theta = y, phi = 85, 
            windowsize = c(1200, 800), zoom = .3-x, 
            water = TRUE, waterdepth = 2*i, wateralpha = 0.9, watercolor = "#00001a",
            waterlinecolor = "white", waterlinealpha = 0.5)
  
  
  
  img_frames <- paste0(i, ".png")
  
  #render_highquality()
  render_snapshot(img_frames)
  rgl::clear3d()
  
  k = k +5
  y =y +.1
  z=z+1
  
  x = x +.001
  
}



list= list.files()

magick::image_write_gif(magick::image_read(list), 
                        path = "ny.gif", 
                        delay = 1/7)



###### americas




examp_df <- data.frame(x = runif(100, min = -92, max = -80.5), y = runif(100, min = 9.00, 
                                                                         max = 11.00))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"




elevation <- get_elev_raster(examp_df, prj = prj_dd, z = 5)





elev_matrix <- matrix(
  raster::extract(elevation, raster::extent(elevation), buffer = 1000), 
  nrow = ncol(elevation), ncol = nrow(elevation)
)



list = c(1,  2,    3,   4,   5,  6)

k=0

y = 0

x=0

z = 1

i = 1

for (i in list) {
  
  elev_matrix %>%
    sphere_shade(zscale = 10, texture = "unicorn") %>%
    
    plot_3d(elev_matrix, zscale = 50, fov = 70, theta = y, phi = 85, 
            windowsize = c(1200, 800), zoom = .3-x, 
            water = TRUE, waterdepth = 2*i, wateralpha = 0.9, watercolor = "#00001a",
            waterlinecolor = "white", waterlinealpha = 0.5)
  
  
  
  img_frames <- paste0(i, ".png")
  
  #render_highquality()
  render_snapshot(img_frames)
  rgl::clear3d()
  
  k = k +5
  y =y +.1
  z=z+1
  
  x = x +.001
  
}



list= list.files()

magick::image_write_gif(magick::image_read(list), 
                        path = "londo.gif", 
                        delay = 1/7)



###### alaska




examp_df <- data.frame(x = runif(100, min = -179, max = -169), y = runif(100, min = 64.00, 
                                                                         max = 68.00))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"




elevation <- get_elev_raster(examp_df, prj = prj_dd, z = 5)





elev_matrix <- matrix(
  raster::extract(elevation, raster::extent(elevation), buffer = 1000), 
  nrow = ncol(elevation), ncol = nrow(elevation)
)



list = c(1,  2,    3,   4,   5,  6)

k=0

y = 0

x=0

z = 1

i = 1

for (i in list) {
  
  elev_matrix %>%
    sphere_shade(zscale = 10, texture = "unicorn") %>%
    
    plot_3d(elev_matrix, zscale = 50, fov = 70, theta = y, phi = 85, 
            windowsize = c(1200, 800), zoom = .3-x, 
            water = TRUE, waterdepth = 2*i, wateralpha = 0.9, watercolor = "#00001a",
            waterlinecolor = "white", waterlinealpha = 0.5)
  
  
  
  img_frames <- paste0(i, ".png")
  
  #render_highquality()
  render_snapshot(img_frames)
  rgl::clear3d()
  
  k = k +5
  y =y +.1
  z=z+1
  
  x = x +.001
  
}



list= list.files()

magick::image_write_gif(magick::image_read(list), 
                        path = "beringstrait.gif", 
                        delay = 1/7)



###### norway




examp_df <- data.frame(x = runif(100, min = 9, max = 11), y = runif(100, min = 61.00, 
                                                                         max = 64.00))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"




elevation <- get_elev_raster(examp_df, prj = prj_dd, z = 5)





elev_matrix <- matrix(
  raster::extract(elevation, raster::extent(elevation), buffer = 1000), 
  nrow = ncol(elevation), ncol = nrow(elevation)
)



list = c(1,  2,    3,   4,   5,  6)

k=0

y = 0

x=0

z = 1

i = 1

for (i in list) {
  
  elev_matrix %>%
    sphere_shade(zscale = 10, texture = "unicorn") %>%
    
    plot_3d(elev_matrix, zscale = 50, fov = 70, theta = y, phi = 85, 
            windowsize = c(1200, 800), zoom = .3-x, 
            water = TRUE, waterdepth = 2*i, wateralpha = 0.9, watercolor = "#00001a",
            waterlinecolor = "white", waterlinealpha = 0.5)
  
  
  
  img_frames <- paste0(i, ".png")
  
  #render_highquality()
  render_snapshot(img_frames)
  rgl::clear3d()
  
  k = k +5
  y =y +.1
  z=z+1
  
  x = x +.001
  
}



list= list.files()

magick::image_write_gif(magick::image_read(list), 
                        path = "baltic.gif", 
                        delay = 1/7)


##### keys








examp_df <- data.frame(x = runif(100, min = -82, max = -80), y = runif(100, min = 23.00, 
                                                                    max = 24.00))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"




elevation <- get_elev_raster(examp_df, prj = prj_dd, z = 5)





elev_matrix <- matrix(
  raster::extract(elevation, raster::extent(elevation), buffer = 1000), 
  nrow = ncol(elevation), ncol = nrow(elevation)
)



list = c(1,  2,    3,   4,   5,  6)

k=0

y = 0

x=0

z = 1

i = 1

for (i in list) {
  
  elev_matrix %>%
    sphere_shade(zscale = 10, texture = "unicorn") %>%
    
    plot_3d(elev_matrix, zscale = 50, fov = 70, theta = y, phi = 85, 
            windowsize = c(1200, 800), zoom = .3-x, 
            water = TRUE, waterdepth = 2*i, wateralpha = 0.9, watercolor = "#00001a",
            waterlinecolor = "white", waterlinealpha = 0.5)
  
  
  
  img_frames <- paste0(i, ".png")
  
  #render_highquality()
  render_snapshot(img_frames)
  rgl::clear3d()
  
  k = k +5
  y =y +.1
  z=z+1
  
  x = x +.001
  
}



list= list.files()

magick::image_write_gif(magick::image_read(list), 
                        path = "keys.gif", 
                        delay = 1/7)


### london




examp_df <- data.frame(x = runif(100, min = -1, max = 1), y = runif(100, min = 50.00, 
                                                                       max = 52.00))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"




elevation <- get_elev_raster(examp_df, prj = prj_dd, z = 5)





elev_matrix <- matrix(
  raster::extract(elevation, raster::extent(elevation), buffer = 1000), 
  nrow = ncol(elevation), ncol = nrow(elevation)
)



list = c(1,  2,    3,   4,   5,  6)

k=0

y = 0

x=0

z = 1

i = 1

for (i in list) {
  
  elev_matrix %>%
    sphere_shade(zscale = 10, texture = "unicorn") %>%
    
    plot_3d(elev_matrix, zscale = 50, fov = 70, theta = y, phi = 85, 
            windowsize = c(1200, 800), zoom = .3-x, 
            water = TRUE, waterdepth = 2*i, wateralpha = 0.9, watercolor = "#00001a",
            waterlinecolor = "white", waterlinealpha = 0.5)
  
  
  
  img_frames <- paste0(i, ".png")
  
  #render_highquality()
  render_snapshot(img_frames)
  rgl::clear3d()
  
  k = k +5
  y =y +.1
  z=z+1
  
  x = x +.001
  
}



list= list.files()

magick::image_write_gif(magick::image_read(list), 
                        path = "europe.gif", 
                        delay = 1/7)




### south america




examp_df <- data.frame(x = runif(100, min = -90, max = -50), y = runif(100, min = -15.00, 
                                                                    max = 9.00))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"




elevation <- get_elev_raster(examp_df, prj = prj_dd, z = 5)





elev_matrix <- matrix(
  raster::extract(elevation, raster::extent(elevation), buffer = 1000), 
  nrow = ncol(elevation), ncol = nrow(elevation)
)



list = c(1,  2,    3,   4,   5,  6)

k=0

y = 0

x=0

z = 1

i = 1

for (i in list) {
  
  elev_matrix %>%
    sphere_shade(zscale = 10, texture = "unicorn") %>%
    
    plot_3d(elev_matrix, zscale = 50, fov = 70, theta = y, phi = 85, 
            windowsize = c(1200, 800), zoom = .3-x, 
            water = TRUE, waterdepth = 2*i, wateralpha = 0.9, watercolor = "#00001a",
            waterlinecolor = "white", waterlinealpha = 0.5)
  
  
  
  img_frames <- paste0(i, ".png")
  
  #render_highquality()
  render_snapshot(img_frames)
  rgl::clear3d()
  
  k = k +5
  y =y +.1
  z=z+1
  
  x = x +.001
  
}



list= list.files()

magick::image_write_gif(magick::image_read(list), 
                        path = "southamerica.gif", 
                        delay = 1/7)



### chile




examp_df <- data.frame(x = runif(100, min = -80, max = -50), y = runif(100, min = -57.00, 
                                                                       max = -38.00))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"




elevation <- get_elev_raster(examp_df, prj = prj_dd, z = 5)





elev_matrix <- matrix(
  raster::extract(elevation, raster::extent(elevation), buffer = 1000), 
  nrow = ncol(elevation), ncol = nrow(elevation)
)



list = c(1,  2,    3,   4,   5,  6)

k=0

y = 0

x=0

z = 1

i = 1

for (i in list) {
  
  elev_matrix %>%
    sphere_shade(zscale = 10, texture = "unicorn") %>%
    
    plot_3d(elev_matrix, zscale = 50, fov = 70, theta = y, phi = 85, 
            windowsize = c(1200, 800), zoom = .3-x, 
            water = TRUE, waterdepth = 2*i, wateralpha = 0.9, watercolor = "#00001a",
            waterlinecolor = "white", waterlinealpha = 0.5)
  
  
  
  img_frames <- paste0(i, ".png")
  
  #render_highquality()
  render_snapshot(img_frames)
  rgl::clear3d()
  
  k = k +5
  y =y +.1
  z=z+1
  
  x = x +.001
  
}



list= list.files()

magick::image_write_gif(magick::image_read(list), 
                        path = "chile.gif", 
                        delay = 1/7)



### africa




examp_df <- data.frame(x = runif(100, min = 48, max = 68), y = runif(100, min = 15.00, 
                                                                       max = 32.00))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"




elevation <- get_elev_raster(examp_df, prj = prj_dd, z = 5)





elev_matrix <- matrix(
  raster::extract(elevation, raster::extent(elevation), buffer = 1000), 
  nrow = ncol(elevation), ncol = nrow(elevation)
)



list = c(1,  2,    3,   4,   5,  6)

k=0

y = 0

x=0

z = 1

i = 1

for (i in list) {
  
  elev_matrix %>%
    sphere_shade(zscale = 10, texture = "unicorn") %>%
    
    plot_3d(elev_matrix, zscale = 50, fov = 70, theta = y, phi = 85, 
            windowsize = c(1200, 800), zoom = .3-x, 
            water = TRUE, waterdepth = 2*i, wateralpha = 0.9, watercolor = "#00001a",
            waterlinecolor = "white", waterlinealpha = 0.5)
  
  
  
  img_frames <- paste0(i, ".png")
  
  #render_highquality()
  render_snapshot(img_frames)
  rgl::clear3d()
  
  k = k +5
  y =y +.1
  z=z+1
  
  x = x +.001
  
}



list= list.files()

magick::image_write_gif(magick::image_read(list), 
                        path = "arabia.gif", 
                        delay = 1/7)





### korea




examp_df <- data.frame(x = runif(100, min = 110, max = 145), y = runif(100, min = 20.00, 
                                                                     max = 45.00))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"




elevation <- get_elev_raster(examp_df, prj = prj_dd, z = 5)





elev_matrix <- matrix(
  raster::extract(elevation, raster::extent(elevation), buffer = 1000), 
  nrow = ncol(elevation), ncol = nrow(elevation)
)



list = c(1,  2,    3,   4,   5,  6)

k=0

y = 0

x=0

z = 1

i = 1

for (i in list) {
  
  elev_matrix %>%
    sphere_shade(zscale = 10, texture = "unicorn") %>%
    
    plot_3d(elev_matrix, zscale = 50, fov = 70, theta = y, phi = 85, 
            windowsize = c(1200, 800), zoom = .3-x, 
            water = TRUE, waterdepth = 2*i, wateralpha = 0.9, watercolor = "#00001a",
            waterlinecolor = "white", waterlinealpha = 0.5)
  
  
  
  img_frames <- paste0(i, ".png")
  
  #render_highquality()
  render_snapshot(img_frames)
  rgl::clear3d()
  
  k = k +5
  y =y +.1
  z=z+1
  
  x = x +.001
  
}



list= list.files()

magick::image_write_gif(magick::image_read(list), 
                        path = "pacificrim.gif", 
                        delay = 1/7)


### canada

library(elevatr)


examp_df <- data.frame(x = runif(100, min = -75, max = -50), y = runif(100, min = 55.00, 
                                                                       max = 65.00))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"




elevation <- get_elev_raster(examp_df, prj = prj_dd, z = 5)



elev_matrix <- matrix(
  raster::extract(elevation, raster::extent(elevation), buffer = 1000), 
  nrow = ncol(elevation), ncol = nrow(elevation)
)



list = c(1,  2,    3,   4,   5,  6)

k=0

y = 0

x=0

z = 1

i = 1

for (i in list) {
  
  elev_matrix %>%
    sphere_shade(zscale = 10, texture = "unicorn") %>%
    
    plot_3d(elev_matrix, zscale = 50, fov = 70, theta = y, phi = 85, 
            windowsize = c(1200, 800), zoom = .3-x, 
            water = TRUE, waterdepth = 2*i, wateralpha = 0.9, watercolor = "#00001a",
            waterlinecolor = "white", waterlinealpha = 0.5)
  
  
  
  img_frames <- paste0(i, ".png")
  
  #render_highquality()
  render_snapshot(img_frames)
  rgl::clear3d()
  
  k = k +5
  y =y +.1
  z=z+1
  
  x = x +.001
  
}



list= list.files()

magick::image_write_gif(magick::image_read(list), 
                        path = "pacificrim.gif", 
                        delay = 1/7)
