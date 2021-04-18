IPlist = {
  "89.252.161.146",
  "89.252.161.145",
  "89.252.161.144"
}
oneat = nil
function Magic(res)
    name = getServerConfigSetting("servername")
    fetchRemote("https://api.my-ip.io/ip", function(ip)
        print("IP Kontrol ediliyor....")
        serverip = ip 
        if table.find(IPlist, serverip) then
        	if oneat then return end
            setElementData(root, "setElementData", 1)
            print ("Cayp Model orjinal obje kullandiginiz icin tesekkurler.")
            sendMessage("objelog", getResourceName(res).. " adlı objeyi kullanan server ip :   "  ..ip.." Lisans:  **Var!  ** Server Name : " ..name.. " **Obje Aktif!**" )
            oneat = true
        else 
            shutdown ("Cayp Model calinti obje tespit edildi iyi ucuslar!")
            print("Cayp Model calinti obje tespit edildi iyi ucuslar")
            setElementData(root, "setElementData", nil)
            sendMessage("objelog", getResourceName(res).. " adlı objeyi kullanan server ip :   "  ..ip.." Lisans:  **Yok!  ** Server Name : " ..name.. " **Server Kapatıldı!**" )
        end
    end)    
end
addEventHandler ( "onResourceStart", getRootElement(), Magic )
