pico-8 cartridge // http://www.pico-8.com
version 15
__lua__
framecount=0

function _update()
	framecount+=1
	
	if framecount > 127 then
	 framecount=0
	end
end

function _draw()
	rectfill(0,0,127,127,0)
	
	for i=0,25 do
	 mx=i*2
	 clr=flr(mx%15)
	 rect(mx+framecount,mx+framecount,127-framecount-mx,127-framecount-mx,clr)
 end
end
