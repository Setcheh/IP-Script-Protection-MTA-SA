IPlist = {
  ["ip"] = "89.252.161.144",
  ["ip"] = "89.252.161.145"
}

function Magic()
    for i,v in ipairs(IPlist) do 
        print("sexy")  
        if v["ip"] == ip then
           	if oneat then return end
                setElementData(root, "setElementData", 1)
                print ("Cayp Model orjinal obje kullandiginiz icin tesekkurler.")
--                  sendMessage("objelog", getResourceName(res).. " adlı objeyi kullanan server ip :   "  ..ip.." Lisans:  **Var!  ** Server Name : " ..name.. " **Obje Aktif!**" )
                oneat = true
        else 
                --shutdown ("Cayp Model calinti obje tespit edildi iyi ucuslar!")
                print("Cayp Model calinti obje tespit edildi iyi ucuslar")
                setElementData(root, "setElementData", nil)
--              sendMessage("objelog", getResourceName(res).. " adlı objeyi kullanan server ip :   "  ..ip.." Lisans:  **Yok!  ** Server Name : " ..name.. " **Server Kapatıldı!**" )
        end
    end 
end
