repeat task.wait() until game:IsLoaded()

local Players=game:GetService("Players")
local TS=game:GetService("TweenService")
local LP=Players.LocalPlayer
local PG=LP:WaitForChild("PlayerGui")

local CFG={
	Title="CHAO MUNG, %s!",
	Sub="@%s | uid:%s",
	V1_NAME="SCRIPT V1", V2_NAME="SCRIPT V2",
	V1_TAG="Redz", V2_TAG="Banana",
	V1_DESC={"No-Key","Ui-Redz","Top1"},
	V2_DESC={"No-Key","Banana-real","Pre"},
	V1_IMG="rbxassetid://78617112299549",
	V2_IMG="rbxassetid://73675787844710",
	ANIME_IMG="rbxassetid://96779554580445",
	V1_URL="loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiXHub/Scripts/refs/heads/main/DojoXHub.lua"))()",
	V2_URL="repeat wait() until game:IsLoaded() and game.Players.LocalPlayer  getgenv().Key = "XyZpQrStUvWxYzAbCdEfGhIjKl"  loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiXHub/vthangsitink/refs/heads/main/BananaHub.lua"))()",
}

local old=PG:FindFirstChild("PMT_SelectUI") if old then old:Destroy() end

local function c3(r,g,b) return Color3.fromRGB(r,g,b) end
local function mk(cl,p) local i=Instance.new(cl) for k,v in pairs(p) do i[k]=v end return i end
local function cr(p,r) local u=Instance.new("UICorner");u.CornerRadius=UDim.new(0,r or 10);u.Parent=p;return u end
local function st(p,t,col,tr) local s=Instance.new("UIStroke");s.Thickness=t or 1;s.Color=col or c3(255,80,160);s.Transparency=tr or 0;s.Parent=p;return s end
local function gr(p,a,b,rot) local g=Instance.new("UIGradient");g.Color=ColorSequence.new(a,b);g.Rotation=rot or 0;g.Parent=p;return g end
local function tw(o,t,props,es,ed)
	local x=TS:Create(o,TweenInfo.new(t,es or Enum.EasingStyle.Quad,ed or Enum.EasingDirection.Out),props)
	x:Play(); return x
end

local FONT=Enum.Font.Arcade

local gui=mk("ScreenGui",{Name="PMT_SelectUI",ResetOnSpawn=false,IgnoreGuiInset=true,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,Parent=PG})

local dim=mk("Frame",{BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=1,BorderSizePixel=0,Size=UDim2.fromScale(1,1),Parent=gui})

local main=mk("Frame",{
	Name="Main",
	AnchorPoint=Vector2.new(0.5,0.5),
	Position=UDim2.fromScale(1.15,0.12),
	Size=UDim2.new(0,560,0,310),
	BackgroundColor3=c3(10,10,14),
	BackgroundTransparency=0.05,
	BorderSizePixel=0,
	Parent=gui
})
cr(main,16) st(main,2,c3(255,70,170),0.12) gr(main,c3(18,18,28),c3(6,6,10),90)

local scale=mk("UIScale",{Scale=0.9,Parent=main})

local top=mk("Frame",{BackgroundTransparency=1,Position=UDim2.new(0,14,0,12),Size=UDim2.new(1,-28,0,54),Parent=main})

local av=mk("ImageLabel",{BackgroundColor3=c3(18,18,24),BorderSizePixel=0,Size=UDim2.new(0,42,0,42),Position=UDim2.new(0,0,0,6),
	Image=("rbxthumb://type=AvatarHeadShot&id=%d&w=150&h=150"):format(LP.UserId),Parent=top})
cr(av,12) st(av,1,c3(255,70,170),0.35)

local ttl=mk("TextLabel",{BackgroundTransparency=1,Position=UDim2.new(0,54,0,2),Size=UDim2.new(1,-54,0,26),
	Font=FONT,TextSize=18,TextXAlignment=Enum.TextXAlignment.Left,TextColor3=c3(240,240,255),
	Text=CFG.Title:format(LP.Name),Parent=top})
local sub=mk("TextLabel",{BackgroundTransparency=1,Position=UDim2.new(0,54,0,26),Size=UDim2.new(1,-54,0,22),
	Font=FONT,TextSize=12,TextXAlignment=Enum.TextXAlignment.Left,TextColor3=c3(170,170,190),
	Text=CFG.Sub:format(LP.Name,tostring(LP.UserId)),Parent=top})

local anime=mk("ImageLabel",{
	Name="LoLi",
	BackgroundTransparency=1,
	BorderSizePixel=0,
	AnchorPoint=Vector2.new(1,0),
	Position=UDim2.new(1,-18,0,18),
	Size=UDim2.new(0,140,0,92),
	Image=CFG.ANIME_IMG,
	ScaleType=Enum.ScaleType.Fit,
	Parent=main
})
cr(anime,12)

local pick=mk("TextLabel",{BackgroundTransparency=1,Position=UDim2.new(0,14,0,70),Size=UDim2.new(1,-28,0,18),
	Font=FONT,TextSize=12,TextXAlignment=Enum.TextXAlignment.Left,TextColor3=c3(220,220,235),
	Text=">> CHON MENU",Parent=main})

local cols=mk("Frame",{BackgroundTransparency=1,Position=UDim2.new(0,14,0,95),Size=UDim2.new(1,-28,0,150),Parent=main})

local function makeCard(side,tagText,nameText,imgId,desc)
	local card=mk("Frame",{BackgroundColor3=c3(14,14,20),BorderSizePixel=0,Size=UDim2.new(0.5,-6,1,0),
		Position=side=="V1" and UDim2.new(0,0,0,0) or UDim2.new(0.5,6,0,0),Parent=cols})
	cr(card,14)
	local stroke=st(card,2,c3(120,90,255),0.72)

	local tag=mk("TextLabel",{BackgroundColor3=side=="V1" and c3(255,70,140) or c3(130,80,255),BorderSizePixel=0,
		Position=UDim2.new(0,10,0,10),Size=UDim2.new(0,70,0,22),Font=FONT,TextSize=12,TextColor3=c3(255,255,255),
		Text=tagText,Parent=card})
	cr(tag,9)

	local img=mk("ImageLabel",{BackgroundColor3=c3(8,8,12),BorderSizePixel=0,Size=UDim2.new(0,54,0,54),
		Position=UDim2.new(1,-64,0,8),Image=imgId,ScaleType=Enum.ScaleType.Crop,Parent=card})
	cr(img,12) st(img,1,c3(255,70,170),0.35)

	local name=mk("TextLabel",{BackgroundTransparency=1,Position=UDim2.new(0,10,0,36),Size=UDim2.new(1,-74,0,20),
		Font=FONT,TextSize=14,TextXAlignment=Enum.TextXAlignment.Left,TextColor3=c3(235,235,250),
		Text=nameText,Parent=card})

	local descLbl=mk("TextLabel",{BackgroundTransparency=1,Position=UDim2.new(0,10,0,58),Size=UDim2.new(1,-20,0,56),
		Font=FONT,TextSize=11,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,
		TextColor3=c3(170,170,190),TextWrapped=true,Text=table.concat(desc,"\n"),Parent=card})

	local btn=mk("TextButton",{BackgroundColor3=c3(18,18,26),BorderSizePixel=0,Position=UDim2.new(0,10,1,-36),
		Size=UDim2.new(1,-20,0,28),Font=FONT,TextSize=12,TextColor3=c3(240,240,255),
		Text="CHON "..side,AutoButtonColor=false,Parent=card})
	cr(btn,10) st(btn,1,c3(255,70,170),0.7)

	return {Card=card,Stroke=stroke,Button=btn,Img=imgId,Name=nameText,Tag=tagText}
end

local C1=makeCard("V1",CFG.V1_TAG,CFG.V1_NAME,CFG.V1_IMG,CFG.V1_DESC)
local C2=makeCard("V2",CFG.V2_TAG,CFG.V2_NAME,CFG.V2_IMG,CFG.V2_DESC)

local start=mk("TextButton",{BackgroundColor3=c3(255,50,140),BorderSizePixel=0,AnchorPoint=Vector2.new(0.5,1),
	Position=UDim2.new(0.5,0,1,-14),Size=UDim2.new(1,-28,0,46),Font=FONT,TextSize=14,
	TextColor3=c3(255,255,255),Text="CHON SCRIPT DE DUNG",AutoButtonColor=false,Parent=main})
cr(start,14)

local preview=mk("Frame",{Visible=false,BackgroundColor3=c3(8,8,12),BorderSizePixel=0,AnchorPoint=Vector2.new(0.5,0.5),
	Position=UDim2.fromScale(0.5,0.5),Size=UDim2.new(0,360,0,220),Parent=gui})
cr(preview,16) st(preview,2,c3(255,70,170),0.15) gr(preview,c3(18,18,26),c3(6,6,10),90)
local pscale=mk("UIScale",{Scale=0.85,Parent=preview})
local pimg=mk("ImageLabel",{BackgroundColor3=c3(10,10,14),BorderSizePixel=0,AnchorPoint=Vector2.new(0.5,0),
	Position=UDim2.new(0.5,0,0,14),Size=UDim2.new(0,120,0,120),ScaleType=Enum.ScaleType.Crop,Parent=preview})
cr(pimg,18) st(pimg,1,c3(120,90,255),0.25)
local pttl=mk("TextLabel",{BackgroundTransparency=1,Position=UDim2.new(0,16,0,142),Size=UDim2.new(1,-32,0,26),
	Font=FONT,TextSize=16,TextColor3=c3(245,245,255),Text="--",Parent=preview})

local selected=nil
local function setSel(which, C)
	selected=which
	for _,it in ipairs({C1,C2}) do
		local on=(it==C)
		tw(it.Stroke,0.12,{Transparency=on and 0 or 0.72})
		tw(it.Card,0.12,{BackgroundColor3=on and c3(16,16,24) or c3(14,14,20)})
	end
	start.Text=("BAT DAU: %s"):format(which)

	preview.Visible=true
	pscale.Scale=0.78
	preview.BackgroundTransparency=1
	pimg.Image=C.Img
	pttl.Text=(">> %s (%s)"):format(C.Name,C.Tag)
	tw(preview,0.16,{BackgroundTransparency=0})
	tw(pscale,0.16,{Scale=1})

	task.delay(0.55,function()
		if preview and preview.Parent then
			tw(pscale,0.12,{Scale=0.9})
			tw(preview,0.12,{BackgroundTransparency=0.2})
			task.delay(0.12,function()
				if preview and preview.Parent then preview.Visible=false; preview.BackgroundTransparency=0 end
			end)
		end
	end)
end

C1.Button.MouseButton1Click:Connect(function() setSel("V1",C1) end)
C2.Button.MouseButton1Click:Connect(function() setSel("V2",C2) end)

local function RunV1()
	print("Anh Do MiXi")
end
local function RunV2()
	print("Kho ga t dau")
end

local function openUI()
	tw(dim,0.18,{BackgroundTransparency=0.45})
	tw(scale,0.28,{Scale=1})
	tw(main,0.36,{Position=UDim2.fromScale(0.5,0.53)},Enum.EasingStyle.Back,Enum.EasingDirection.Out)
end

local function closeUI(cb)
	tw(dim,0.18,{BackgroundTransparency=1})
	tw(scale,0.20,{Scale=0.92})
	tw(main,0.30,{Position=UDim2.fromScale(-0.15,-0.10)},Enum.EasingStyle.Quad,Enum.EasingDirection.In)
	task.delay(0.32,function()
		if gui then gui:Destroy() end
		if cb then cb() end
	end)
end

start.MouseButton1Click:Connect(function()
	if not selected then
		start.Text="CHON V1 / V2 TRUOC"
		task.delay(0.7,function() if start and start.Parent then start.Text="CHON CHE DO DE BAT DAU" end end)
		return
	end
	closeUI(function()
		if selected=="V1" then RunV1() else RunV2() end
	end)
end)

openUI()