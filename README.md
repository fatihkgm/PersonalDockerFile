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
