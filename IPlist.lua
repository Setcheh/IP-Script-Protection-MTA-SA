IPlist = {
  "89.252.161.146",
  "89.252.161.145",
  "89.252.161.144"
}

function Magic()
    for i,v in ipairs(IPlist) do  
        if (ip == v) then
        	if oneat then return end
            setElementData(root, "setElementData", 1)
            print ("Cayp Model orjinal obje kullandiginiz icin tesekkurler.")
            sendMessage("objelog", getResourceName(res).. " adlı objeyi kullanan server ip :   "  ..ip.." Lisans:  **Var!  ** Server Name : " ..name.. " **Obje Aktif!**" )
            oneat = true
        end
    end 
end
addEventHandler ( "onResourceStart", getRootElement(), Magic )
