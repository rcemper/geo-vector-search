Class AG.vec
{

ClassMethod mk(lat As %String = "", long As %String = "", rcc As %Integer = 0) As %String [ SqlName = MK, SqlProc ]
{
	set lat=$s($e(lat,*)="N":+lat,1:-lat)*100\1
	set long=$s($e(long,*)="W":+long,1:-long)*100\1
	if 'rcc quit lat_","_long
	quit lat-$lg($g(^rcc),1)_","_(long-$lg($g(^rcc),2))
}

}
