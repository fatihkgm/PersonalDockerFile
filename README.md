# PersonalDockerFile
Created used Linux - Ubuntu


In linux    
 mkdir web1 and wen2    
 echo 'WEB2 WLCOME MY PAGE'>>web2/index.html    
 echo 'WEB1 WLCOME MY PAGE'>>web1/index.html    

 create yml file    
 vi webApp.yml    


The same directory    

vim Dockerfile    
        FROM nginx:latest   
        VOLUME /killer    
        COPY ./web2 /usr/share/nginx/html   


vim docker-compose.yml    
        version: '3'    
        services:   
                web1:   
                        image: nginx        
                        ports:       
                                - "8080:80"      
                        volumes:        
                                - ./web1:/usr/share/nginx/html    
                                - depo:/tmp   
                        networks:   
                                - sw-br-network   
                web2:   
                        build: .    
                        ports:    
                                - "9080:80"   
                        networks:   
                                - sw-br-network   
        volumes:    
                depo:   
        networks:   
                sw-br-network:    
                        driver: bridge    



Start the dolder    
    docker-compose up -d    


List your Docker    
    docker-compose ps   
    
Look at the details of the networks  
    docker network ls   
    docker network inspect  

Look at the containers  
    docker container ls  

Look at the image  
    docker image ls  

Look at the volume we created  
    docker volume ls  

////Lest create a folder in the volume and manage it  
    docker volume inspect ID   
## get the path in mountoint   
    //cretae a folder in the path as mydata or myfile doenst matter  

//Connect web2 service  
   docker-compose exec web2 /bin/bash  

🟠 If you want to delete all  
   docker-compose down --rmi all --volumes  

   if you want to start your server   
   docker-compose up     
    
    
    
 <img width="1094" alt="Screen Shot 2021-05-10 at 2 45 18 AM" src="https://user-images.githubusercontent.com/63836841/117618352-d1719200-b13b-11eb-8ce9-6458bd43e38b.png">

<img width="1072" alt="Screen Shot 2021-05-10 at 2 45 48 AM" src="https://user-images.githubusercontent.com/63836841/117618370-d6cedc80-b13b-11eb-81dc-f2ebc98a4636.png">

<img width="752" alt="Screen Shot 2021-05-10 at 2 57 57 AM" src="https://user-images.githubusercontent.com/63836841/117618378-d9313680-b13b-11eb-9d48-cd27e2491f6c.png">

<img width="1195" alt="Screen Shot 2021-05-10 at 2 59 51 AM" src="https://user-images.githubusercontent.com/63836841/117618380-dafafa00-b13b-11eb-9e06-56e37585a34c.png">


<img width="857" alt="Screen Shot 2021-05-10 at 3 01 12 AM" src="https://user-images.githubusercontent.com/63836841/117618513-0b429880-b13c-11eb-89a7-c2a10aca2adf.png">

<img width="1184" alt="Screen Shot 2021-05-10 at 3 04 39 AM" src="https://user-images.githubusercontent.com/63836841/117618799-78eec480-b13c-11eb-99e7-3bebfc68eb38.png">

<img width="1218" alt="Screen Shot 2021-05-10 at 3 08 19 AM" src="https://user-images.githubusercontent.com/63836841/117619223-f9adc080-b13c-11eb-9e7e-c9bf5c326ba8.png">

<img width="1124" alt="Screen Shot 2021-05-10 at 3 08 49 AM" src="https://user-images.githubusercontent.com/63836841/117619260-0b8f6380-b13d-11eb-95e6-62d695cb7814.png">
