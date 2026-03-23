local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Dojo Hub : Tổng Hợp",
   LoadingTitle = "Loading...",
   LoadingSubtitle = "by realskibidi",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "HoangAnh.lua",
      FileName = "Config"
   },
   KeySystem = false -- Đổi thành true nếu bạn muốn thêm hệ thống Key
})

-- TAB
local TabInfo = Window:CreateTab("Information")
local TabKaitun = Window:CreateTab("Kaitun")
local TabFarmKey = Window:CreateTab("Farm Key")
local TabPvP = Window:CreateTab("PvP")

--- PHẦN NỘI DUNG (Ví dụ cho Tab Farm Key) ---

TabFarmKey:AddSection("Farm Key")

TabFarmKey:AddButton({
   Name = "Hoho Hub",
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_GUI'))()
   end,
})

TabFarmKey:AddButton({
   Name = "Redz Hub",
   Callback = function()
       -- Dán script Redz Hub vào đây
       loadstring(game:HttpGet("https://raw.githubusercontent.com/REDZHUB/BloxFruits/main/redz09_V2.lua"))()
   end,
})

TabFarmKey:AddButton({
   Name = "Blue X Hub",
   Callback = function()
       -- Code script Blue X
       print("Đã kích hoạt Blue X Hub")
   end,
})
