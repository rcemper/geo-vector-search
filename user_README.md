# Geographic use of vector search
The example loads a list of worldwide capitals with their coordinates   
The coordinates are interpreted as vectors from geographic point 0°N/0 W  
(some very wet spot in the Gulf of Guinea, >400 km from the African Coast)   
Finding common directions from that spot is a quite theoretical case.   
So adjustment to your preferred starting point is implemented.   
Now finding **similar** directions for some target city makes sense.   
It's a methematical use of VECTOR_COSINE() function other than text search.   
    
### Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.
### Installation
Clone/git pull the repo into any local directory
```
$ git clone https://github.com/rcemper/geo-vector-search.git
```
To build and start the container run:
```
$ docker compose up -d && docker compose logs -f
```
To open IRIS Terminal do:
```
$ docker-compose exec iris iris session iris
USER>
```
or using **WebTerminal**
```
http://localhost:42773/terminal/
```
To access IRIS System Management Portal
```
http://localhost:42773/csp/sys/UtilHome.csp
```
### How to use it

