# Geographic use of vector search
The example loads a list of worldwide capitals with their coordinates   
The coordinates are interpreted as vectors from geographic point 0°N/0 W  
(some very wet spot in the Gulf of Guinea, >400 km from the African Coast)   
Finding common directions from that spot is a quite theoretical case.   
So adjustment to your preferred starting point is implemented.   
Now finding **similar** directions for some target city makes sense.   
It's a methematical use of VECTOR_COSINE() function other than text search.   
Because test Vectora ar just 2-dimensional it's easy to follow the reults.
Though, you have to be aware that the calculation checks directions, not lenght.    
So a vector from Paris to Bejing is SIMILAR by direction to Budapest or Tashkent.  
    
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
Test data have been copied from     
https://www.fittotravel.net/index.php/international-data/257-coordinates-of-world-capitals     
To add your own cities just append it to geo.txt with a suitable layout   
### How to use it from Console or WebTerminal
```
USER>do ^AG.Demo
  Use Geographc Vectors
=========================
     1 - Initialize Tables
     2 - Import Data
     3 - Set Base Location
     4 - Generate Vectors
     5 - Select Target Location
     6 - Show Best Matches
Select Function or * to exit : 1
```
for multiple retries, you always restart at   
#3 set your starting location    
#4 adjust coordinates to your selected base    
#5 set your target location  defining your base vector     
#6 see what's in between or in front of your vector     
adjust tolerance from -1...+1    
**#2**     
```
Select Function or * to exit : 2
     200 records imported
     Location Vectors Updated: 200
```
**#3**   
```
Select Function or * to exit : 3

Select Base CITY by name (): mad
ID      CAPITAL COUNTRY
171     Madrid  Spain
1 Rows(s) Affected

Select ID: 171
     Vector Base set >> Madrid
     Location Vectors Updated: 200
```
**#4**  implicit to #3    
**#5**
```
Select Function or * to exit : 5

Select Target CITY by name (): Co
ID      CAPITAL COUNTRY
52      Copenhagen      Denmark
81      Conakry Guinea
2 Rows(s) Affected

Select ID: 52
     Vector Target set >> Copenhagen
```
**#6**
```
Select Function or * to exit : 6

Similarity limit (.995) :
     Similar Vectors from Madrid to Copenhagen

ID      VCOS    CAPITAL COUNTRY
52      1       Copenhagen      Denmark
110     .99999768522889842526   Luxembourg      Luxembourg
175     .99911210669970418329   Stockholm       Sweden
3 Rows(s) Affected
```
[DemoServer Mgmt Portal](https://geo-vector.demo.community.intersystems.com/csp/sys/UtilHome.csp)   
[DemoServer WebTerminal](https://geo-vector.demo.community.intersystems.com/terminal/)

[Article in DC #1](https://community.intersystems.com/post/geo-vector-search-1)     
[Article in DC #2](https://community.intersystems.com/post/geo-vector-search-2)
