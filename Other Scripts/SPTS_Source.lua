-- Script GUID: {D477B9BA-6AD4-4F69-91CC-5BE13E3CF3A3}
-- Decompiled with the Synapse X Luau decompiler.

while script.Parent do
	wait(1);
	script.Parent = nil;
end;
_G.PlrData = {};
local l__Chat__1 = game:GetService("Chat");
local l__Players__2 = game:GetService("Players");
local l__LocalPlayer__3 = l__Players__2.LocalPlayer;
local v4 = require(script:WaitForChild("ClientRemoteController_Module"));
v4.CreateOnClientRemoteEvent(l__LocalPlayer__3);
local v5 = script:WaitForChild("ClientRemoteController_Module");
local l__Terrain__6 = workspace:WaitForChild("Terrain");
local l__Map__7 = workspace:WaitForChild("Map");
local v8 = Random.new(tick());
math.random(tick());
local v9 = {
	fly = tick(), 
	bulletPunch = tick(), 
	teleport = tick(), 
	punch = tick(), 
	invisible = tick(), 
	spherePunch = tick(), 
	soulAttack = tick(), 
	concealAura = tick()
};
_G.Flying = false;
_G.NearTrainingRock = false;
_G.NearTrainingCrystal = false;
_G.NearStarFSTraining1 = false;
_G.NearStarFSTraining2 = false;
_G.NearStarFSTraining3 = false;
_G.NearPPTrainingPart1 = false;
_G.NearPPTrainingPart2 = false;
_G.NearPPTrainingPart3 = false;
_G.NearPPTrainingPart4 = false;
CurrentCamera = workspace.CurrentCamera;
Lighting = game:GetService("Lighting");
MarketplaceService = game:GetService("MarketplaceService");
HttpService = game:GetService("HttpService");
UserInputService = game:GetService("UserInputService");
RunService = game:GetService("RunService");
TweenService = game:GetService("TweenService");
Debris = game:GetService("Debris");
ReplicatedStorage = game:GetService("ReplicatedStorage");
RemoteEvent = ReplicatedStorage:WaitForChild("RemoteEvent");
RemoteFunction = ReplicatedStorage:WaitForChild("RemoteFunction");
ModuleStorage = ReplicatedStorage:WaitForChild("ModuleStorage");
TrainingArea = l__Map__7:WaitForChild("TrainingArea");
Players = game:GetService("Players");
player = Players.LocalPlayer;
PlayerGui = player:WaitForChild("PlayerGui");
IntroGui = PlayerGui:WaitForChild("IntroGui");
ScreenGui = PlayerGui:WaitForChild("ScreenGui");
MenuFrame = ScreenGui:WaitForChild("MenuFrame");
MainQuestFrame = ScreenGui:WaitForChild("MainQuestFrame");
RankEmblemFrame = ScreenGui:WaitForChild("RankEmblemFrame");
TokenImgBtn = ScreenGui:WaitForChild("CurrentGemImgBtn");
QuestMsgFrame = ScreenGui:WaitForChild("QuestMsgFrame");
QuestTalkBtn = ScreenGui:WaitForChild("QuestTalkBtn");
QuestTalkBtn.Visible = false;
RankImgBtn = ScreenGui:WaitForChild("RankImgBtn");
MenuBtn = ScreenGui:WaitForChild("MenuBtn");
SafeZoneTxt = ScreenGui:WaitForChild("SafeZoneTxt");
WeightFrame = ScreenGui:WaitForChild("WeightFrame");
WarnTxt = ScreenGui:WaitForChild("WarnTxt");
skillHotkey_Frame = ScreenGui:WaitForChild("SkillHotkey_Frame");
leaderstats = player:WaitForChild("leaderstats");
Status = leaderstats:WaitForChild("Status");
PrivateStats = player:WaitForChild("PrivateStats");
Token = PrivateStats:WaitForChild("Token");
Rank = PrivateStats:WaitForChild("Rank");
Reputation = PrivateStats:WaitForChild("Reputation");
SelectedRank = PrivateStats:WaitForChild("SelectedRank");
FistStrength = PrivateStats:WaitForChild("FistStrength");
BodyToughness = PrivateStats:WaitForChild("BodyToughness");
MovementSpeed = PrivateStats:WaitForChild("MovementSpeed");
JumpForce = PrivateStats:WaitForChild("JumpForce");
PsychicPower = PrivateStats:WaitForChild("PsychicPower");
InnocentKilled = PrivateStats:WaitForChild("InnocentKilled");
VillainKilled = PrivateStats:WaitForChild("VillainKilled");
HeroKilled = PrivateStats:WaitForChild("HeroKilled");
LastVisitTime = PrivateStats:WaitForChild("LastVisitTime");
AliveTime = PrivateStats:WaitForChild("AliveTime");
QuestData = PrivateStats:WaitForChild("QuestData");
Inventory = PrivateStats:WaitForChild("Inventory");
Setting = PrivateStats:WaitForChild("Setting");
DevProductPurschased = PrivateStats:WaitForChild("DevProductPurschased");
QuestDataModule = v4.QuestDataModule;
SathDialogModule = script:WaitForChild("ClientRemoteController_Module"):WaitForChild("SathDialogModule");
IntroPlayBtnGuiCount = 0;
while true do
	wait(1);
	if IntroPlayBtnGuiCount == 0 then
		IntroGui:WaitForChild("PlayBtn").Text = " Loading ";
		IntroPlayBtnGuiCount = IntroPlayBtnGuiCount + 1;
	elseif IntroPlayBtnGuiCount == 1 then
		IntroGui:WaitForChild("PlayBtn").Text = " Loading. ";
		IntroPlayBtnGuiCount = IntroPlayBtnGuiCount + 1;
	elseif IntroPlayBtnGuiCount == 2 then
		IntroGui:WaitForChild("PlayBtn").Text = " Loading.. ";
		IntroPlayBtnGuiCount = IntroPlayBtnGuiCount + 1;
	else
		IntroGui:WaitForChild("PlayBtn").Text = " Loading... ";
		IntroPlayBtnGuiCount = 0;
	end;
	if QuestData.Value ~= "" and Inventory.Value ~= "" and Setting.Value ~= "" then
		break;
	end;
end;
IntroGui:WaitForChild("PlayBtn").Text = "PLAY";
local l__Map__10 = workspace:WaitForChild("Map");
local l__LocalSoundStorage__11 = game:GetService("SoundService"):WaitForChild("LocalSoundStorage");
BackgroundSound = l__LocalSoundStorage__11:WaitForChild("BackgroundSound");
BadgeGivenSound = l__LocalSoundStorage__11:WaitForChild("BadgeGivenSound");
LevelUpSound = l__LocalSoundStorage__11:WaitForChild("LevelUpSound");
QuestDoneSound = l__LocalSoundStorage__11:WaitForChild("QuestDoneSound");
ClickSound = l__LocalSoundStorage__11:WaitForChild("ClickSound");
Click2Sound = l__LocalSoundStorage__11:WaitForChild("Click2Sound");
ConfirmSound = l__LocalSoundStorage__11:WaitForChild("ConfirmSound");
Confirm2Sound = l__LocalSoundStorage__11:WaitForChild("Confirm2Sound");
ErrorSound = l__LocalSoundStorage__11:WaitForChild("ErrorSound");
CollectSound = l__LocalSoundStorage__11:WaitForChild("CollectSound");
DeathSound = l__LocalSoundStorage__11:WaitForChild("DeathSound");
KillSound = l__LocalSoundStorage__11:WaitForChild("KillSound");
EquipSound = l__LocalSoundStorage__11:WaitForChild("EquipSound");
BackgroundSound:Play();
CanFly = false;
Flying = false;
Swimming = false;
TalkingOnQuest = false;
mouse = player:GetMouse();
mouse.TargetFilter = l__Map__10:WaitForChild("MouseIgnoreGroup");
MenuCamCFrame = CFrame.new(705.671021, 941.897827, 864.893188, 0.459262937, -0.712803423, 0.530083895, -0, 0.596739471, 0.8024351, -0.888300419, -0.368528694, 0.274060309);
MenuCamFocus = CFrame.new(695.069336, 925.849121, 859.411987, 1, 0, 0, 0, 1, 0, 0, 0, 1);
local u1 = { "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No", "Dc", "Ud", "Dd", "Td", "Qad", "Qid", "Sxd", "Spd", "Ocd", "Nod", "Vg", "Uvg", "Dvg", "Tvg", "Qavg", "Qivg", "Sxvg", "Spvg", "Ocvg", "Novg", "Tg", "Utg", "Dtg", "Ttg", "Qatg", "Qitg", "Sxtg", "Sptg", "Octg", "Notg" };
local u2 = {};
function PlayAnim(p1)
	if not u2[p1.Name] then
		u2[p1.Name] = Humanoid:LoadAnimation(p1);
	end;
	if p1.Name == "KillingIntentAttackerAnim" then
		u2.KillingIntentAttackerAnim:Play(0.1, 1, 1.5);
		return;
	end;
	if p1.Name == "FlyIdleAnim" then
		u2.FlyIdleAnim:Play(0.2, 1, 1);
		return;
	end;
	if p1.Name == "FlyForwardAnim" then
		local u3 = nil;
		u3 = u2[p1.Name].KeyframeReached:Connect(function(p2)
			if p2 == "Pause" then
				u2[p1.Name]:AdjustSpeed(0);
				u3:Disconnect();
			end;
		end);
		u2.FlyForwardAnim:Play(0.1, 1, 2);
		return;
	end;
	if p1.Name == "FlyBackAnim" then
		local u4 = nil;
		u4 = u2[p1.Name].KeyframeReached:Connect(function(p3)
			if p3 == "Pause" then
				u2[p1.Name]:AdjustSpeed(0);
				u4:Disconnect();
			end;
		end);
		u2.FlyBackAnim:Play(0.1, 1, 2);
		return;
	end;
	if p1.Name == "FlyLeftAnim" then
		local u5 = nil;
		u5 = u2[p1.Name].KeyframeReached:Connect(function(p4)
			if p4 == "Pause" then
				u2[p1.Name]:AdjustSpeed(0);
				u5:Disconnect();
			end;
		end);
		u2.FlyLeftAnim:Play(0.1, 1, 2.5);
		return;
	end;
	if p1.Name == "FlyRightAnim" then
		local u6 = nil;
		u6 = u2[p1.Name].KeyframeReached:Connect(function(p5)
			if p5 == "Pause" then
				u2[p1.Name]:AdjustSpeed(0);
				u6:Disconnect();
			end;
		end);
		u2.FlyRightAnim:Play(0.1, 1, 2.5);
		return;
	end;
	if p1.Name == "FlyUpAnim" then
		local u7 = nil;
		u7 = u2[p1.Name].KeyframeReached:Connect(function(p6)
			if p6 == "Pause" then
				u2[p1.Name]:AdjustSpeed(0);
				u7:Disconnect();
			end;
		end);
		u2.FlyUpAnim:Play(0.1, 1, 2);
		return;
	end;
	if p1.Name == "FlyDownAnim" then
		local u8 = nil;
		u8 = u2[p1.Name].KeyframeReached:Connect(function(p7)
			if p7 == "Pause" then
				u2[p1.Name]:AdjustSpeed(0);
				u8:Disconnect();
			end;
		end);
		u2.FlyDownAnim:Play(0.1, 1, 2);
		return;
	end;
	if p1.Name == "BulletPunch1Anim" then
		u2.BulletPunch1Anim:Play(0.1, 1, 2);
		return;
	end;
	if p1.Name == "BulletPunch2Anim" then
		u2.BulletPunch2Anim:Play(0.1, 1, 2);
		return;
	end;
	if p1.Name == "BulletPunch1_AirAnim" then
		u2.BulletPunch1_AirAnim:Play(0.1, 1, 2);
		return;
	end;
	if p1.Name == "BulletPunch2_AirAnim" then
		u2.BulletPunch2_AirAnim:Play(0.1, 1, 2);
		return;
	end;
	if p1.Name == "Punch1Anim" then
		u2.Punch1Anim:Play(0.1, 1, 1);
		return;
	end;
	if p1.Name == "Punch2Anim" then
		u2.Punch2Anim:Play(0.1, 1, 1);
		return;
	end;
	if p1.Name == "Punch1_AirAnim" then
		u2.Punch1_AirAnim:Play(0.1, 1, 1);
		return;
	end;
	if p1.Name == "Punch2_AirAnim" then
		u2.Punch2_AirAnim:Play(0.1, 1, 1);
		return;
	end;
	if p1.Name == "SpherePunchAnim" then
		u2.SpherePunchAnim:Play(0.1, 1, 1);
		return;
	end;
	if p1.Name == "SpherePunch_AirAnim" then
		u2.SpherePunch_AirAnim:Play(0.1, 1, 1);
		return;
	end;
	if p1.Name == "FallAnim" then
		u2.FallAnim:Play();
		return;
	end;
	u2[p1.Name]:Play(0.1, 1, 1);
end;
function StopAnim(p8)
	if u2[p8.Name] then
		u2[p8.Name]:Stop();
	end;
end;
function StopAllAnim(p9)
	local v12, v13, v14 = pairs(u2);
	while true do
		local v15, v16 = v12(v13, v14);
		if v15 then

		else
			break;
		end;
		v14 = v15;
		v16:Stop();	
	end;
end;
function OpenOrCloseGuiFunc(p10)
	if p10.Visible == false then
		p10.Visible = true;
		return;
	end;
	p10.Visible = false;
end;
function MenuOpenFrameFunc(p11)
	local v17, v18, v19 = pairs(MenuFrame:GetChildren());
	while true do
		local v20, v21 = v17(v18, v19);
		if v20 then

		else
			break;
		end;
		v19 = v20;
		if not v21:IsA("Frame") then
			if v21:IsA("ScrollingFrame") then
				if v21.Name ~= "BorderFrame" then
					if v21 ~= p11 then
						v21.Visible = false;
					end;
				end;
			end;
		elseif v21.Name ~= "BorderFrame" then
			if v21 ~= p11 then
				v21.Visible = false;
			end;
		end;	
	end;
	p11.Visible = true;
end;
local function u9(p12)
	if not tonumber(p12) then
		return "Nan";
	end;
	if p12 == math.huge then
		return "Inf";
	end;
	for v22 = #u1, 1, -1 do
		local v23 = math.pow(10, v22 * 3);
		if v23 <= p12 then
			local v24 = p12 / v23;
			return tostring(v24 - v24 % 0.001):sub(1, 5) .. u1[v22];
		end;
	end;
	return tostring(p12);
end;
function CreateXpGuiFunc(p13, p14, p15)
	if Character then
		if Humanoid then
			if 0 < Humanoid.Health then
				if p14.Name == "MSImg" then
					if ScreenGui:FindFirstChild("MSXpFrame") then
						return;
					end;
				end;
				if p14.Name == "JFImg" then
					if ScreenGui:FindFirstChild("JFXpFrame") then
						return;
					end;
				end;
				if p14.Name == "BTImg" then
					if ScreenGui:FindFirstChild("BTXpFrame") then
						return;
					end;
				end;
				local v25 = p13:Clone();
				local v26 = p14:Clone();
				v26.Parent = v25;
				local l__Txt__27 = v26:WaitForChild("Txt");
				local v28 = HttpService:JSONDecode(Inventory.Value);
				local v29 = 1;
				local v30 = 0.05;
				if p14.Name == "MSImg" then
					if v28 then
						if v28.MSMultiplier then
							l__Txt__27.Text = "+" .. u9(p15 * v28.MSMultiplier) .. " Movement Speed";
							v25.Name = "MSXpFrame";
							wait(0.25);
						elseif p14.Name == "JFImg" then
							if v28 then
								if v28.JFMultiplier then
									l__Txt__27.Text = "+" .. u9(p15 * v28.JFMultiplier) .. " Jump Force";
									v25.Name = "JFXpFrame";
									wait(0.25);
								elseif p14.Name == "BTImg" then
									l__Txt__27.Text = "+" .. u9(p15) .. " Body Toughness";
									v25.Name = "BTXpFrame";
									v29 = 0.5;
									v30 = 0.005;
								end;
							elseif p14.Name == "BTImg" then
								l__Txt__27.Text = "+" .. u9(p15) .. " Body Toughness";
								v25.Name = "BTXpFrame";
								v29 = 0.5;
								v30 = 0.005;
							end;
						elseif p14.Name == "BTImg" then
							l__Txt__27.Text = "+" .. u9(p15) .. " Body Toughness";
							v25.Name = "BTXpFrame";
							v29 = 0.5;
							v30 = 0.005;
						end;
					elseif p14.Name == "JFImg" then
						if v28 then
							if v28.JFMultiplier then
								l__Txt__27.Text = "+" .. u9(p15 * v28.JFMultiplier) .. " Jump Force";
								v25.Name = "JFXpFrame";
								wait(0.25);
							elseif p14.Name == "BTImg" then
								l__Txt__27.Text = "+" .. u9(p15) .. " Body Toughness";
								v25.Name = "BTXpFrame";
								v29 = 0.5;
								v30 = 0.005;
							end;
						elseif p14.Name == "BTImg" then
							l__Txt__27.Text = "+" .. u9(p15) .. " Body Toughness";
							v25.Name = "BTXpFrame";
							v29 = 0.5;
							v30 = 0.005;
						end;
					elseif p14.Name == "BTImg" then
						l__Txt__27.Text = "+" .. u9(p15) .. " Body Toughness";
						v25.Name = "BTXpFrame";
						v29 = 0.5;
						v30 = 0.005;
					end;
				elseif p14.Name == "JFImg" then
					if v28 then
						if v28.JFMultiplier then
							l__Txt__27.Text = "+" .. u9(p15 * v28.JFMultiplier) .. " Jump Force";
							v25.Name = "JFXpFrame";
							wait(0.25);
						elseif p14.Name == "BTImg" then
							l__Txt__27.Text = "+" .. u9(p15) .. " Body Toughness";
							v25.Name = "BTXpFrame";
							v29 = 0.5;
							v30 = 0.005;
						end;
					elseif p14.Name == "BTImg" then
						l__Txt__27.Text = "+" .. u9(p15) .. " Body Toughness";
						v25.Name = "BTXpFrame";
						v29 = 0.5;
						v30 = 0.005;
					end;
				elseif p14.Name == "BTImg" then
					l__Txt__27.Text = "+" .. u9(p15) .. " Body Toughness";
					v25.Name = "BTXpFrame";
					v29 = 0.5;
					v30 = 0.005;
				end;
				v25.Parent = ScreenGui;
				local v31 = math.random(2, 7) / 10;
				local v32 = math.random(1, 5) / 10;
				if p14.Name == "MSImg" then
					v25.Position = UDim2.new(0.25, 0, 0.8, 0);
				elseif p14.Name == "JFImg" then
					v25.Position = UDim2.new(0.6, 0, 0.8, 0);
				else
					v25.Position = UDim2.new(v32, 0, v31, 0);
				end;
				pcall(function()
					v25:TweenSize(UDim2.new(0.06, 0, 0.102, 0), "Out", "Back", 0.5, true);
				end);
				wait(v29);
				local v33 = 0 - 1;
				while true do
					v26.ImageTransparency = v26.ImageTransparency + 0.1;
					l__Txt__27.TextTransparency = l__Txt__27.TextTransparency + 0.1;
					l__Txt__27.TextStrokeTransparency = l__Txt__27.TextStrokeTransparency + 0.1;
					wait(v30);
					if 0 <= 1 then
						if v33 < 10 then

						else
							break;
						end;
					elseif 10 < v33 then

					else
						break;
					end;
					v33 = v33 + 1;				
				end;
				v25:Destroy();
			end;
		end;
	end;
end;
function QuestTalkFunc()
	QuestTalkBtn:TweenPosition(UDim2.new(0.387, 0, -0.2, 0), "Out", "Back", 0.5, true);
	QuestTalkBtn.Visible = false;
	local v34 = HttpService:JSONDecode(QuestData.Value);
	local v35 = 0;
	local v36 = SathDialogModule;
	if QuestTalkBtn:WaitForChild("Npc").Value == "Sath" then
		if v34 then
			if v34.MainQuest then
				if v34.MainQuest.No then
					v35 = v34.MainQuest.No;
					v36 = SathDialogModule;
				end;
			end;
		end;
	end;
	local l__Page__37 = QuestMsgFrame:WaitForChild("Page");
	require(v36).CreateDialog(player, v35, l__Page__37, (QuestMsgFrame:WaitForChild("MsgTxt")));
	if 0 < l__Page__37.Value then
		l__Page__37.Value = l__Page__37.Value + 1;
		return;
	end;
	l__Page__37.Value = 1;
	QuestMsgFrame.Visible = false;
	if not UserInputService.MouseEnabled then
		if UserInputService.TouchEnabled then
			skillHotkey_Frame.Visible = true;
		end;
	end;
	if Character then
		if Character:FindFirstChild("Head") then
			if workspace.CurrentCamera.CameraType == Enum.CameraType.Scriptable then
				workspace.CurrentCamera:Interpolate(CFrame.new(BeforeTalkToQuestNPCCameraCFrame.p), CFrame.new(Character.Head.Position), 1);
				wait(1);
			end;
		end;
	end;
	QuestDoneSound:Play();
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom;
	workspace.CurrentCamera.CameraSubject = player.Character.Humanoid;
	Humanoid.WalkSpeed = 11;
	Humanoid.JumpPower = 51;
	RemoteEvent:FireServer({ "QuestTalkEnd", QuestTalkBtn:WaitForChild("Npc").Value });
	TalkingOnQuest = false;
	if QuestTalkBtn:WaitForChild("Npc").Value ~= "GhostRider" then
		spawn(function()
			local v38 = ReplicatedStorage:WaitForChild("MissionCompleteTxt"):Clone();
			v38.Parent = ScreenGui;
			v38:TweenSizeAndPosition(UDim2.new(0.5, 0, 0.2, 0), UDim2.new(0.25, 0, 0.4, 0), "In", "Bounce", 2, true);
			wait(4);
			local v39 = 0 - 1;
			while true do
				v38.TextTransparency = v38.TextTransparency + 0.05;
				v38.TextStrokeTransparency = v38.TextStrokeTransparency + 0.05;
				wait(0.05);
				if 0 <= 1 then
					if v39 < 20 then

					else
						break;
					end;
				elseif 20 < v39 then

				else
					break;
				end;
				v39 = v39 + 1;			
			end;
			v38:Destroy();
		end);
	end;
end;
local function u10(p16)
	if p16 and p16.Character and p16.Character.PrimaryPart and p16.Character:FindFirstChildOfClass("Humanoid") and p16.Character:FindFirstChildOfClass("Humanoid").Health > 0 and p16.Character:FindFirstChildOfClass("Humanoid"):GetState() ~= Enum.HumanoidStateType.Dead then
		return true;
	end;
	return false;
end;
local u11 = 0;
function onJumpRequest()
	if not Swimming then
		if Character then
			if Humanoid then
				if Character:IsDescendantOf(workspace) then
					if Humanoid:GetState() ~= Enum.HumanoidStateType.Dead then
						if Humanoid.JumpPower <= 0 then

						else
							local v40 = HttpService:JSONDecode(Setting.Value);
							local v41 = HttpService:JSONDecode(QuestData.Value);
							if CanFly then
								if not Flying then
									if not TalkingOnQuest then
										if v41 then
											if v41.MainQuest then
												if v41.MainQuest.No then
													if 10 <= v41.MainQuest.No then
														if 10000 <= JumpForce.Value then
															if 10000 <= PsychicPower.Value then
																if v40 then
																	if v40.ToggleFlight then
																		CanFly = false;
																		Flying = true;
																		_G.Flying = true;
																		u11 = 0;
																		Humanoid:SetStateEnabled(4, false);
																		Humanoid:SetStateEnabled(5, false);
																		Humanoid:SetStateEnabled(7, false);
																		Humanoid:SetStateEnabled(8, false);
																		PlayAnim(script:WaitForChild("FlyIdleAnim"));
																		if not wUp then
																			PlayAnim(script:WaitForChild("FlyForwardAnim"));
																		elseif not sUp then
																			PlayAnim(script:WaitForChild("FlyBackAnim"));
																		elseif not aUp then
																			PlayAnim(script:WaitForChild("FlyLeftAnim"));
																		elseif not dUp then
																			PlayAnim(script:WaitForChild("FlyRightAnim"));
																		elseif not eUp then
																			PlayAnim(script:WaitForChild("FlyUpAnim"));
																		elseif not qUp then
																			PlayAnim(script:WaitForChild("FlyDownAnim"));
																		end;
																		FlyFunc();
																		return;
																	else
																		if Flying == true then
																			if 10000 <= JumpForce.Value then
																				if 10000 <= PsychicPower.Value then
																					local v42, v43 = pcall(function()
																						Flying = false;
																						_G.Flying = false;
																						Humanoid:SetStateEnabled(7, true);
																						if FlyRunService then
																							FlyRunService:Disconnect();
																						end;
																						HumanoidRootPart.FlyBodyVel:Destroy();
																						HumanoidRootPart.FlyBodyGyro:Destroy();
																						StopAnim(script:WaitForChild("FlyIdleAnim"));
																						StopAnim(script:WaitForChild("FlyForwardAnim"));
																						StopAnim(script:WaitForChild("FlyBackAnim"));
																						StopAnim(script:WaitForChild("FlyLeftAnim"));
																						StopAnim(script:WaitForChild("FlyRightAnim"));
																						StopAnim(script:WaitForChild("FlyUpAnim"));
																						StopAnim(script:WaitForChild("FlyDownAnim"));
																						Humanoid:SetStateEnabled(4, true);
																						Humanoid:SetStateEnabled(5, true);
																						Humanoid:SetStateEnabled(8, true);
																						delay(0.25, function()
																							if not Landed then
																								CanFly = true;
																							end;
																						end);
																					end);
																					if not v42 then
																						print("Error info :", v43);
																					end;
																				end;
																			end;
																		end;
																		return;
																	end;
																else
																	if Flying == true then
																		if 10000 <= JumpForce.Value then
																			if 10000 <= PsychicPower.Value then
																				v42, v43 = pcall(function()
																					Flying = false;
																					_G.Flying = false;
																					Humanoid:SetStateEnabled(7, true);
																					if FlyRunService then
																						FlyRunService:Disconnect();
																					end;
																					HumanoidRootPart.FlyBodyVel:Destroy();
																					HumanoidRootPart.FlyBodyGyro:Destroy();
																					StopAnim(script:WaitForChild("FlyIdleAnim"));
																					StopAnim(script:WaitForChild("FlyForwardAnim"));
																					StopAnim(script:WaitForChild("FlyBackAnim"));
																					StopAnim(script:WaitForChild("FlyLeftAnim"));
																					StopAnim(script:WaitForChild("FlyRightAnim"));
																					StopAnim(script:WaitForChild("FlyUpAnim"));
																					StopAnim(script:WaitForChild("FlyDownAnim"));
																					Humanoid:SetStateEnabled(4, true);
																					Humanoid:SetStateEnabled(5, true);
																					Humanoid:SetStateEnabled(8, true);
																					delay(0.25, function()
																						if not Landed then
																							CanFly = true;
																						end;
																					end);
																				end);
																				if not v42 then
																					print("Error info :", v43);
																				end;
																			end;
																		end;
																	end;
																	return;
																end;
															else
																if Flying == true then
																	if 10000 <= JumpForce.Value then
																		if 10000 <= PsychicPower.Value then
																			v42, v43 = pcall(function()
																				Flying = false;
																				_G.Flying = false;
																				Humanoid:SetStateEnabled(7, true);
																				if FlyRunService then
																					FlyRunService:Disconnect();
																				end;
																				HumanoidRootPart.FlyBodyVel:Destroy();
																				HumanoidRootPart.FlyBodyGyro:Destroy();
																				StopAnim(script:WaitForChild("FlyIdleAnim"));
																				StopAnim(script:WaitForChild("FlyForwardAnim"));
																				StopAnim(script:WaitForChild("FlyBackAnim"));
																				StopAnim(script:WaitForChild("FlyLeftAnim"));
																				StopAnim(script:WaitForChild("FlyRightAnim"));
																				StopAnim(script:WaitForChild("FlyUpAnim"));
																				StopAnim(script:WaitForChild("FlyDownAnim"));
																				Humanoid:SetStateEnabled(4, true);
																				Humanoid:SetStateEnabled(5, true);
																				Humanoid:SetStateEnabled(8, true);
																				delay(0.25, function()
																					if not Landed then
																						CanFly = true;
																					end;
																				end);
																			end);
																			if not v42 then
																				print("Error info :", v43);
																			end;
																		end;
																	end;
																end;
																return;
															end;
														else
															if Flying == true then
																if 10000 <= JumpForce.Value then
																	if 10000 <= PsychicPower.Value then
																		v42, v43 = pcall(function()
																			Flying = false;
																			_G.Flying = false;
																			Humanoid:SetStateEnabled(7, true);
																			if FlyRunService then
																				FlyRunService:Disconnect();
																			end;
																			HumanoidRootPart.FlyBodyVel:Destroy();
																			HumanoidRootPart.FlyBodyGyro:Destroy();
																			StopAnim(script:WaitForChild("FlyIdleAnim"));
																			StopAnim(script:WaitForChild("FlyForwardAnim"));
																			StopAnim(script:WaitForChild("FlyBackAnim"));
																			StopAnim(script:WaitForChild("FlyLeftAnim"));
																			StopAnim(script:WaitForChild("FlyRightAnim"));
																			StopAnim(script:WaitForChild("FlyUpAnim"));
																			StopAnim(script:WaitForChild("FlyDownAnim"));
																			Humanoid:SetStateEnabled(4, true);
																			Humanoid:SetStateEnabled(5, true);
																			Humanoid:SetStateEnabled(8, true);
																			delay(0.25, function()
																				if not Landed then
																					CanFly = true;
																				end;
																			end);
																		end);
																		if not v42 then
																			print("Error info :", v43);
																		end;
																	end;
																end;
															end;
															return;
														end;
													else
														if Flying == true then
															if 10000 <= JumpForce.Value then
																if 10000 <= PsychicPower.Value then
																	v42, v43 = pcall(function()
																		Flying = false;
																		_G.Flying = false;
																		Humanoid:SetStateEnabled(7, true);
																		if FlyRunService then
																			FlyRunService:Disconnect();
																		end;
																		HumanoidRootPart.FlyBodyVel:Destroy();
																		HumanoidRootPart.FlyBodyGyro:Destroy();
																		StopAnim(script:WaitForChild("FlyIdleAnim"));
																		StopAnim(script:WaitForChild("FlyForwardAnim"));
																		StopAnim(script:WaitForChild("FlyBackAnim"));
																		StopAnim(script:WaitForChild("FlyLeftAnim"));
																		StopAnim(script:WaitForChild("FlyRightAnim"));
																		StopAnim(script:WaitForChild("FlyUpAnim"));
																		StopAnim(script:WaitForChild("FlyDownAnim"));
																		Humanoid:SetStateEnabled(4, true);
																		Humanoid:SetStateEnabled(5, true);
																		Humanoid:SetStateEnabled(8, true);
																		delay(0.25, function()
																			if not Landed then
																				CanFly = true;
																			end;
																		end);
																	end);
																	if not v42 then
																		print("Error info :", v43);
																	end;
																end;
															end;
														end;
														return;
													end;
												else
													if Flying == true then
														if 10000 <= JumpForce.Value then
															if 10000 <= PsychicPower.Value then
																v42, v43 = pcall(function()
																	Flying = false;
																	_G.Flying = false;
																	Humanoid:SetStateEnabled(7, true);
																	if FlyRunService then
																		FlyRunService:Disconnect();
																	end;
																	HumanoidRootPart.FlyBodyVel:Destroy();
																	HumanoidRootPart.FlyBodyGyro:Destroy();
																	StopAnim(script:WaitForChild("FlyIdleAnim"));
																	StopAnim(script:WaitForChild("FlyForwardAnim"));
																	StopAnim(script:WaitForChild("FlyBackAnim"));
																	StopAnim(script:WaitForChild("FlyLeftAnim"));
																	StopAnim(script:WaitForChild("FlyRightAnim"));
																	StopAnim(script:WaitForChild("FlyUpAnim"));
																	StopAnim(script:WaitForChild("FlyDownAnim"));
																	Humanoid:SetStateEnabled(4, true);
																	Humanoid:SetStateEnabled(5, true);
																	Humanoid:SetStateEnabled(8, true);
																	delay(0.25, function()
																		if not Landed then
																			CanFly = true;
																		end;
																	end);
																end);
																if not v42 then
																	print("Error info :", v43);
																end;
															end;
														end;
													end;
													return;
												end;
											else
												if Flying == true then
													if 10000 <= JumpForce.Value then
														if 10000 <= PsychicPower.Value then
															v42, v43 = pcall(function()
																Flying = false;
																_G.Flying = false;
																Humanoid:SetStateEnabled(7, true);
																if FlyRunService then
																	FlyRunService:Disconnect();
																end;
																HumanoidRootPart.FlyBodyVel:Destroy();
																HumanoidRootPart.FlyBodyGyro:Destroy();
																StopAnim(script:WaitForChild("FlyIdleAnim"));
																StopAnim(script:WaitForChild("FlyForwardAnim"));
																StopAnim(script:WaitForChild("FlyBackAnim"));
																StopAnim(script:WaitForChild("FlyLeftAnim"));
																StopAnim(script:WaitForChild("FlyRightAnim"));
																StopAnim(script:WaitForChild("FlyUpAnim"));
																StopAnim(script:WaitForChild("FlyDownAnim"));
																Humanoid:SetStateEnabled(4, true);
																Humanoid:SetStateEnabled(5, true);
																Humanoid:SetStateEnabled(8, true);
																delay(0.25, function()
																	if not Landed then
																		CanFly = true;
																	end;
																end);
															end);
															if not v42 then
																print("Error info :", v43);
															end;
														end;
													end;
												end;
												return;
											end;
										else
											if Flying == true then
												if 10000 <= JumpForce.Value then
													if 10000 <= PsychicPower.Value then
														v42, v43 = pcall(function()
															Flying = false;
															_G.Flying = false;
															Humanoid:SetStateEnabled(7, true);
															if FlyRunService then
																FlyRunService:Disconnect();
															end;
															HumanoidRootPart.FlyBodyVel:Destroy();
															HumanoidRootPart.FlyBodyGyro:Destroy();
															StopAnim(script:WaitForChild("FlyIdleAnim"));
															StopAnim(script:WaitForChild("FlyForwardAnim"));
															StopAnim(script:WaitForChild("FlyBackAnim"));
															StopAnim(script:WaitForChild("FlyLeftAnim"));
															StopAnim(script:WaitForChild("FlyRightAnim"));
															StopAnim(script:WaitForChild("FlyUpAnim"));
															StopAnim(script:WaitForChild("FlyDownAnim"));
															Humanoid:SetStateEnabled(4, true);
															Humanoid:SetStateEnabled(5, true);
															Humanoid:SetStateEnabled(8, true);
															delay(0.25, function()
																if not Landed then
																	CanFly = true;
																end;
															end);
														end);
														if not v42 then
															print("Error info :", v43);
														end;
													end;
												end;
											end;
											return;
										end;
									else
										if Flying == true then
											if 10000 <= JumpForce.Value then
												if 10000 <= PsychicPower.Value then
													v42, v43 = pcall(function()
														Flying = false;
														_G.Flying = false;
														Humanoid:SetStateEnabled(7, true);
														if FlyRunService then
															FlyRunService:Disconnect();
														end;
														HumanoidRootPart.FlyBodyVel:Destroy();
														HumanoidRootPart.FlyBodyGyro:Destroy();
														StopAnim(script:WaitForChild("FlyIdleAnim"));
														StopAnim(script:WaitForChild("FlyForwardAnim"));
														StopAnim(script:WaitForChild("FlyBackAnim"));
														StopAnim(script:WaitForChild("FlyLeftAnim"));
														StopAnim(script:WaitForChild("FlyRightAnim"));
														StopAnim(script:WaitForChild("FlyUpAnim"));
														StopAnim(script:WaitForChild("FlyDownAnim"));
														Humanoid:SetStateEnabled(4, true);
														Humanoid:SetStateEnabled(5, true);
														Humanoid:SetStateEnabled(8, true);
														delay(0.25, function()
															if not Landed then
																CanFly = true;
															end;
														end);
													end);
													if not v42 then
														print("Error info :", v43);
													end;
												end;
											end;
										end;
										return;
									end;
								else
									if Flying == true then
										if 10000 <= JumpForce.Value then
											if 10000 <= PsychicPower.Value then
												v42, v43 = pcall(function()
													Flying = false;
													_G.Flying = false;
													Humanoid:SetStateEnabled(7, true);
													if FlyRunService then
														FlyRunService:Disconnect();
													end;
													HumanoidRootPart.FlyBodyVel:Destroy();
													HumanoidRootPart.FlyBodyGyro:Destroy();
													StopAnim(script:WaitForChild("FlyIdleAnim"));
													StopAnim(script:WaitForChild("FlyForwardAnim"));
													StopAnim(script:WaitForChild("FlyBackAnim"));
													StopAnim(script:WaitForChild("FlyLeftAnim"));
													StopAnim(script:WaitForChild("FlyRightAnim"));
													StopAnim(script:WaitForChild("FlyUpAnim"));
													StopAnim(script:WaitForChild("FlyDownAnim"));
													Humanoid:SetStateEnabled(4, true);
													Humanoid:SetStateEnabled(5, true);
													Humanoid:SetStateEnabled(8, true);
													delay(0.25, function()
														if not Landed then
															CanFly = true;
														end;
													end);
												end);
												if not v42 then
													print("Error info :", v43);
												end;
											end;
										end;
									end;
									return;
								end;
							else
								if Flying == true then
									if 10000 <= JumpForce.Value then
										if 10000 <= PsychicPower.Value then
											v42, v43 = pcall(function()
												Flying = false;
												_G.Flying = false;
												Humanoid:SetStateEnabled(7, true);
												if FlyRunService then
													FlyRunService:Disconnect();
												end;
												HumanoidRootPart.FlyBodyVel:Destroy();
												HumanoidRootPart.FlyBodyGyro:Destroy();
												StopAnim(script:WaitForChild("FlyIdleAnim"));
												StopAnim(script:WaitForChild("FlyForwardAnim"));
												StopAnim(script:WaitForChild("FlyBackAnim"));
												StopAnim(script:WaitForChild("FlyLeftAnim"));
												StopAnim(script:WaitForChild("FlyRightAnim"));
												StopAnim(script:WaitForChild("FlyUpAnim"));
												StopAnim(script:WaitForChild("FlyDownAnim"));
												Humanoid:SetStateEnabled(4, true);
												Humanoid:SetStateEnabled(5, true);
												Humanoid:SetStateEnabled(8, true);
												delay(0.25, function()
													if not Landed then
														CanFly = true;
													end;
												end);
											end);
											if not v42 then
												print("Error info :", v43);
											end;
										end;
									end;
								end;
								return;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end;
_G.AnimTracks = {};
local u12 = 0;
local function v44(p17)
	if not UserInputService.MouseEnabled and UserInputService.TouchEnabled then
		skillHotkey_Frame.Visible = true;
	else
		skillHotkey_Frame.Visible = false;
	end;
	v4.Storage.TouchingQuestPart = false;
	Character = player.Character or player.CharacterAdded:wait();
	Humanoid = Character:WaitForChild("Humanoid");
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom;
	workspace.CurrentCamera.CameraSubject = Humanoid;
	HumanoidRootPart = Character:WaitForChild("HumanoidRootPart");
	CanFly = false;
	Flying = false;
	Swimming = false;
	_G.Flying = false;
	Landed = true;
	TalkingOnQuest = false;
	Combat_FirstPunch = false;
	CanPunch = true;
	CanBeInvisible = true;
	Invisible = false;
	CanSpherePunch = true;
	CanSoulReap = true;
	CanUseDevilFlame = true;
	CanTeleport = true;
	CanBulletPunch = true;
	_G.NearTrainingRock = false;
	_G.NearTrainingCrystal = false;
	_G.NearStarFSTraining1 = false;
	_G.NearStarFSTraining2 = false;
	_G.NearStarFSTraining3 = false;
	_G.NearPPTrainingPart1 = false;
	_G.NearPPTrainingPart2 = false;
	_G.NearPPTrainingPart3 = false;
	_G.NearPPTrainingPart4 = false;
	CanConcealAura = true;
	CanSoulAttack = true;
	CanKillingIntent = true;
	SoulAttacking = false;
	u2 = {};
	if MovementSpeed.Value <= 400 then
		local v45 = 10 + MovementSpeed.Value / 10;
	elseif MovementSpeed.Value <= 5400 then
		v45 = 46 + MovementSpeed.Value / 100;
	elseif MovementSpeed.Value <= 65400 then
		v45 = 91 + MovementSpeed.Value / 600;
	elseif MovementSpeed.Value <= 665400 then
		v45 = 170 + (MovementSpeed.Value - 5400) / 2000;
	else
		v45 = 440 + (MovementSpeed.Value - 65400) / 10000;
	end;
	if v4.Storage.CustomMS > 10 and v4.Storage.CustomMS < v45 then
		v45 = v4.Storage.CustomMS;
	end;
	if v45 > 1000 then
		v45 = 1000;
	end;
	Humanoid.WalkSpeed = v45;
	if JumpForce.Value <= 2500 then
		local v46 = 50 + JumpForce.Value / 50;
	elseif JumpForce.Value <= 8750 then
		v46 = 65 + JumpForce.Value / 250;
	elseif JumpForce.Value <= 33750 then
		v46 = 84 + (JumpForce.Value - 750) / 500;
	elseif JumpForce.Value <= 83750 then
		v46 = 120 + (JumpForce.Value - 3750) / 1000;
	elseif JumpForce.Value <= 665000 then
		v46 = 193 + (JumpForce.Value - 65000) / 2500;
	else
		v46 = 400 + JumpForce.Value / 20000;
	end;
	if v4.Storage.CustomJP > 50 and v4.Storage.CustomJP < v46 then
		v46 = v4.Storage.CustomJP;
	end;
	if v46 > 500 then
		v46 = 500;
	end;
	Humanoid.JumpPower = v46;
	Humanoid:SetStateEnabled(0, false);
	Humanoid:SetStateEnabled(1, false);
	if Character:FindFirstChild("Animate") and Character.Animate:FindFirstChild("fall") and (Character.Animate.fall:FindFirstChild("FallAnim") and Character.Animate.fall.FallAnim.AnimationId == "http://www.roblox.com/asset/?id=507767968") then
		Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606";
	end;
	if Character:FindFirstChild("Animate") and Character.Animate:FindFirstChild("jump") and (Character.Animate.jump:FindFirstChild("JumpAnim") and Character.Animate.jump.JumpAnim.AnimationId == "http://www.roblox.com/asset/?id=507765000") then
		Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878";
	end;
	Humanoid.StateChanged:connect(function(p18, p19)
		if p19 == Enum.HumanoidStateType.Landed then
			CanFly = false;
			Flying = false;
			Swimming = false;
			Landed = true;
			return;
		end;
		if p19 == Enum.HumanoidStateType.Freefall then
			CanFly = true;
			Flying = false;
			Swimming = false;
			Landed = false;
			return;
		end;
		if p19 == Enum.HumanoidStateType.Swimming then
			Swimming = true;
			Landed = true;
		end;
	end);
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("RepTxt").Text = "Reputation : " .. tostring(Reputation.Value);
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("StatusTxt").Text = "Status : " .. Status.Value;
	u11 = 0;
	Humanoid.Running:Connect(function(p20)
		u11 = p20;
	end);
	local u13 = 0;
	Humanoid.Jumping:Connect(function(p21)
		if p21 then
			if not _G.Flying and not (Humanoid.JumpPower <= 9) then
				u13 = u13 + 1;
				if math.random(2, 3) <= u13 then
					u13 = 0;
					pcall(function()
						if HttpService:JSONDecode(QuestData.Value) ~= nil and QuestMsgFrame.Visible == false and HttpService:JSONDecode(QuestData.Value).MainQuest.No >= 2 and Character then
							local v47 = 1;
							local v48 = 1;
							if Character:FindFirstChild("LeftWeight1") then
								v47 = 2;
								v48 = 2;
							elseif Character:FindFirstChild("LeftWeight2") then
								v47 = 5;
								v48 = 3;
							elseif Character:FindFirstChild("LeftWeight3") then
								v47 = 10;
								v48 = 4;
							elseif Character:FindFirstChild("LeftWeight4") then
								v47 = 20;
								v48 = 5;
							end;
							RemoteEvent:FireServer({ "Add_JF_Request", v48 });
							if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt4"):WaitForChild("ToggleBtn").Text, "On") then
								CreateXpGuiFunc(v5:WaitForChild("XpFrame"), v5:WaitForChild("JFImg"), v47);
							end;
						end;
					end);
				end;
				return;
			end;
		else
			return;
		end;
		if not _G.Flying and Humanoid.JumpPower <= 9 and HumanoidRootPart and HumanoidRootPart.Anchored == false then
			WarnTxt.Text = "too heavy to train Jump Force!";
			v4.PopUpAndAutoHideGui(WarnTxt, 1);
		end;
	end);
	Humanoid.Changed:Connect(function(p22)
		if p22 == "WalkSpeed" then
			if Humanoid.WalkSpeed == 0 or Humanoid.WalkSpeed == 10 then
				if Humanoid.WalkSpeed == 10 then
					if MovementSpeed.Value <= 400 then
						local v49 = 10 + MovementSpeed.Value / 10;
					elseif MovementSpeed.Value <= 5400 then
						v49 = 46 + MovementSpeed.Value / 100;
					elseif MovementSpeed.Value <= 65400 then
						v49 = 91 + MovementSpeed.Value / 600;
					elseif MovementSpeed.Value <= 665400 then
						v49 = 170 + (MovementSpeed.Value - 5400) / 2000;
					else
						v49 = 440 + (MovementSpeed.Value - 65400) / 10000;
					end;
					if Character and Character:FindFirstChild("LeftWeight1") then
						v49 = v49 / 2;
						if v49 < 4 then
							v49 = 1;
						end;
					elseif Character and Character:FindFirstChild("LeftWeight2") then
						v49 = v49 / 10;
						if v49 < 4 then
							v49 = 1;
						end;
					elseif Character and Character:FindFirstChild("LeftWeight3") then
						v49 = v49 / 50;
						if v49 < 4 then
							v49 = 1;
						end;
					elseif Character and Character:FindFirstChild("LeftWeight4") then
						v49 = v49 / 100;
						if v49 < 4 then
							v49 = 1;
						end;
					end;
					if v49 >= 10 then
						return;
					else
						if MovementSpeed.Value <= 400 then
							local v50 = 10 + MovementSpeed.Value / 10;
						elseif MovementSpeed.Value <= 5400 then
							v50 = 46 + MovementSpeed.Value / 100;
						elseif MovementSpeed.Value <= 65400 then
							v50 = 91 + MovementSpeed.Value / 600;
						elseif MovementSpeed.Value <= 665400 then
							v50 = 170 + (MovementSpeed.Value - 5400) / 2000;
						else
							v50 = 440 + (MovementSpeed.Value - 65400) / 10000;
						end;
						if Character and Character:FindFirstChild("LeftWeight1") then
							v50 = v50 / 2;
							if v50 < 4 then
								v50 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight2") then
							v50 = v50 / 10;
							if v50 < 4 then
								v50 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight3") then
							v50 = v50 / 50;
							if v50 < 4 then
								v50 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight4") then
							v50 = v50 / 100;
							if v50 < 4 then
								v50 = 1;
							end;
						end;
						if v4.Storage.CustomMS > 10 and v4.Storage.CustomMS < v50 then
							v50 = v4.Storage.CustomMS;
						end;
						if v50 > 1000 then
							v50 = 1000;
						end;
						Humanoid.WalkSpeed = v50;
						if JumpForce.Value <= 2500 then
							local v51 = 50 + JumpForce.Value / 50;
						elseif JumpForce.Value <= 8750 then
							v51 = 65 + JumpForce.Value / 250;
						elseif JumpForce.Value <= 33750 then
							v51 = 84 + (JumpForce.Value - 750) / 500;
						elseif JumpForce.Value <= 83750 then
							v51 = 120 + (JumpForce.Value - 3750) / 1000;
						elseif JumpForce.Value <= 665000 then
							v51 = 193 + (JumpForce.Value - 65000) / 2500;
						else
							v51 = 400 + JumpForce.Value / 20000;
						end;
						if Character and Character:FindFirstChild("LeftWeight1") then
							v51 = v51 / 2;
							if v51 < 50 then
								v51 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight2") then
							v51 = v51 / 5;
							if v51 < 50 then
								v51 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight3") then
							v51 = v51 / 10;
							if v51 < 50 then
								v51 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight4") then
							v51 = v51 / 20;
							if v51 < 50 then
								v51 = 1;
							end;
						end;
						if v4.Storage.CustomJP > 50 and v4.Storage.CustomJP < v51 then
							v51 = v4.Storage.CustomJP;
						end;
						if v51 > 500 then
							v51 = 500;
						end;
						Humanoid.JumpPower = v51;
						return;
					end;
				else
					return;
				end;
			else
				if MovementSpeed.Value <= 400 then
					local v52 = 10 + MovementSpeed.Value / 10;
				elseif MovementSpeed.Value <= 5400 then
					v52 = 46 + MovementSpeed.Value / 100;
				elseif MovementSpeed.Value <= 65400 then
					v52 = 91 + MovementSpeed.Value / 600;
				elseif MovementSpeed.Value <= 665400 then
					v52 = 170 + (MovementSpeed.Value - 5400) / 2000;
				else
					v52 = 440 + (MovementSpeed.Value - 65400) / 10000;
				end;
				if Humanoid.WalkSpeed ~= 0 and Humanoid.WalkSpeed ~= 10 then
					if Character and Character:FindFirstChild("LeftWeight1") then
						v52 = v52 / 2;
						if v52 < 4 then
							v52 = 1;
						end;
					elseif Character and Character:FindFirstChild("LeftWeight2") then
						v52 = v52 / 10;
						if v52 < 4 then
							v52 = 1;
						end;
					elseif Character and Character:FindFirstChild("LeftWeight3") then
						v52 = v52 / 50;
						if v52 < 4 then
							v52 = 1;
						end;
					elseif Character and Character:FindFirstChild("LeftWeight4") then
						v52 = v52 / 100;
						if v52 < 4 then
							v52 = 1;
						end;
					end;
				end;
				if v4.Storage.CustomMS > 10 and v4.Storage.CustomMS < v52 then
					v52 = v4.Storage.CustomMS;
				end;
				if v52 > 1000 then
					v52 = 1000;
				end;
				Humanoid.WalkSpeed = v52;
				if Humanoid.JumpPower == 0 or Humanoid.JumpPower == 50 then
					return;
				end;
				if JumpForce.Value <= 2500 then
					local v53 = 50 + JumpForce.Value / 50;
				elseif JumpForce.Value <= 8750 then
					v53 = 65 + JumpForce.Value / 250;
				elseif JumpForce.Value <= 33750 then
					v53 = 84 + (JumpForce.Value - 750) / 500;
				elseif JumpForce.Value <= 83750 then
					v53 = 120 + (JumpForce.Value - 3750) / 1000;
				elseif JumpForce.Value <= 665000 then
					v53 = 193 + (JumpForce.Value - 65000) / 2500;
				else
					v53 = 400 + JumpForce.Value / 20000;
				end;
				if Humanoid.JumpPower ~= 0 and Humanoid.JumpPower ~= 50 then
					if Character and Character:FindFirstChild("LeftWeight1") then
						v53 = v53 / 2;
						if v53 < 50 then
							v53 = 1;
						end;
					elseif Character and Character:FindFirstChild("LeftWeight2") then
						v53 = v53 / 5;
						if v53 < 50 then
							v53 = 1;
						end;
					elseif Character and Character:FindFirstChild("LeftWeight3") then
						v53 = v53 / 10;
						if v53 < 50 then
							v53 = 1;
						end;
					elseif Character and Character:FindFirstChild("LeftWeight4") then
						v53 = v53 / 20;
						if v53 < 50 then
							v53 = 1;
						end;
					end;
				end;
				if v4.Storage.CustomJP > 50 and v4.Storage.CustomJP < v53 then
					v53 = v4.Storage.CustomJP;
				end;
				if v53 > 500 then
					v53 = 500;
				end;
				Humanoid.JumpPower = v53;
			end;
		end;
	end);
	Humanoid.Died:Connect(function()
		CanFly = false;
		Flying = false;
		Swimming = false;
		_G.Flying = false;
		Landed = true;
		TalkingOnQuest = false;
		v4.Storage.TouchingQuestPart = false;
		Combat_FirstPunch = false;
		CanPunch = true;
		CanBeInvisible = true;
		CanSpherePunch = true;
		CanSoulReap = true;
		CanUseDevilFlame = true;
		CanTeleport = true;
		CanBulletPunch = true;
		_G.NearTrainingRock = false;
		_G.NearTrainingCrystal = false;
		_G.NearStarFSTraining1 = false;
		_G.NearStarFSTraining2 = false;
		_G.NearStarFSTraining3 = false;
		_G.NearPPTrainingPart1 = false;
		_G.NearPPTrainingPart2 = false;
		_G.NearPPTrainingPart3 = false;
		_G.NearPPTrainingPart4 = false;
		Invisible = false;
		u2 = {};
		ScreenGui.Enabled = false;
		WeightFrame.Visible = false;
		skillHotkey_Frame.Visible = false;
		QuestTalkBtn.Visible = false;
		QuestTalkBtn.Position = UDim2.new(0.387, 0, -0.2, 0);
		QuestMsgFrame.Visible = false;
		QuestMsgFrame:WaitForChild("Page").Value = 1;
		u12 = 0;
		DeathSound:Play();
		workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable;
		TweenService:Create(workspace.CurrentCamera, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
			CFrame = MenuCamCFrame, 
			Focus = MenuCamFocus
		}):Play();
		if ScreenGui:FindFirstChild("XpFrame") then
			ScreenGui:FindFirstChild("XpFrame"):Destroy();
		end;
		if ScreenGui:FindFirstChild("XpFrame") then
			ScreenGui:FindFirstChild("XpFrame"):Destroy();
		end;
		if ScreenGui:FindFirstChild("XpFrame") then
			ScreenGui:FindFirstChild("XpFrame"):Destroy();
		end;
		wait(3);
		IntroGui:WaitForChild("PlayBtn").Text = " SPAWN ";
		local l__Blur__54 = Lighting:WaitForChild("Blur");
		l__Blur__54.Enabled = true;
		IntroGui.Enabled = true;
		for v55 = 0, 20 do
			local v56 = v55 + 1;
			wait(0.05);
			for v57, v58 in pairs(IntroGui:GetChildren()) do
				if v58.Name == "PlayBtn" then
					v58.TextTransparency = (20 - v56) / 20;
					v58.BackgroundTransparency = (20 - v56) / 20;
				elseif v58.Name == "VersionTxt" then
					v58.TextTransparency = (20 - v56) / 20;
				elseif v58.Name == "HeaderTxt" then
					v58.TextTransparency = (20 - v56) / 20;
					v58.TextStrokeTransparency = (20 - v56) / 20;
					v58.UIStroke.Transparency = (20 - v56) / 20;
				end;
			end;
			l__Blur__54.Size = l__Blur__54.Size + 0.5;
		end;
		for v59, v60 in pairs(IntroGui:GetChildren()) do
			if v60.Name == "PlayBtn" then
				v60.TextTransparency = 0;
				v60.BackgroundTransparency = 0;
			elseif v60.Name == "VersionTxt" then
				v60.TextTransparency = 0;
			elseif v60.Name == "HeaderTxt" then
				v60.TextTransparency = 0;
				v60.TextStrokeTransparency = 0;
				v60.UIStroke.Transparency = 0;
			end;
		end;
	end);
	local v61 = HttpService:JSONDecode(QuestData.Value);
	if v61 and v61.MainQuest and (v61.MainQuest.No == 0 or v61.MainQuest.Done ~= nil and v61.MainQuest.Done == true) then
		workspace:WaitForChild("Map"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("QuestBbGui").Enabled = true;
		if Character and Character:FindFirstChild("UpperTorso") and not Character:FindFirstChild("QuestBeam") then
			local v62 = Instance.new("Attachment", Character.UpperTorso);
			v62.Name = "Attachment0";
			local v63 = Instance.new("Attachment", workspace:WaitForChild("Map"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("UpperTorso"));
			v63.Name = "Attachment1";
			local v64 = ReplicatedStorage:WaitForChild("QuestBeam"):Clone();
			v64.Attachment0 = v62;
			v64.Attachment1 = v63;
			v64.Parent = Character;
		end;
	else
		workspace:WaitForChild("Map"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("QuestBbGui").Enabled = false;
		if Character and Character:FindFirstChild("QuestBeam") then
			Character.QuestBeam:Destroy();
			if Character:FindFirstChild("UpperTorso") and Character.UpperTorso:FindFirstChild("Attachment0") then
				Character.UpperTorso.Attachment0:Destroy();
			end;
			if workspace:WaitForChild("Map"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("UpperTorso"):FindFirstChild("Attachment1") then
				workspace:WaitForChild("Map"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("UpperTorso"):FindFirstChild("Attachment1"):Destroy();
			end;
		end;
	end;
	wait(1);
	if not HttpService:JSONDecode(Setting.Value).ShowNameTag and Character and Character:FindFirstChild("Head") and Character.PrimaryPart:FindFirstChild("SPTS_RK_BG") and Character.PrimaryPart:FindFirstChild("SPTS_PN_BG") then
		Character.PrimaryPart:FindFirstChild("SPTS_RK_BG").Enabled = false;
		Character.PrimaryPart:FindFirstChild("SPTS_PN_BG").Enabled = false;
	end;
end;
if l__LocalPlayer__3.Character then
	v44(l__LocalPlayer__3.Character);
end;
l__LocalPlayer__3.CharacterAdded:Connect(v44);
Players.PlayerAdded:Connect(function(p23)
	wait(3);
	if player and player.Character and (player.Character:FindFirstChild("Head") and player.Character.Head.Transparency > 0) then
		RemoteEvent:FireServer({ "CheckInvisible", p23 });
	end;
	wait(7);
	if player and player.Character and (player.Character:FindFirstChild("Head") and player.Character.Head.Transparency > 0) then
		RemoteEvent:FireServer({ "CheckInvisible", p23 });
	end;
	wait(10);
	if player and player.Character and (player.Character:FindFirstChild("Head") and player.Character.Head.Transparency > 0) then
		RemoteEvent:FireServer({ "CheckInvisible", p23 });
	end;
end);
local function v65()
	if Humanoid and Humanoid.WalkSpeed > 10 then
		Humanoid.WalkSpeed = 10;
		if Humanoid.JumpPower > 50 then
			Humanoid.JumpPower = 50;
		end;
		if v4.Storage.FlySpeed >= 30 then
			v4.Storage.FlySpeed = 30;
			return;
		end;
	elseif Humanoid and Humanoid.WalkSpeed == 10 and Humanoid.JumpPower == 50 then
		local v66 = HttpService:JSONDecode(Setting.Value);
		if v66 then
			if v66.SelectedMS then
				v4.Storage.CustomMS = v66.SelectedMS;
				if MovementSpeed.Value <= 400 then
					local v67 = 10 + MovementSpeed.Value / 10;
				elseif MovementSpeed.Value <= 5400 then
					v67 = 46 + MovementSpeed.Value / 100;
				elseif MovementSpeed.Value <= 65400 then
					v67 = 91 + MovementSpeed.Value / 600;
				elseif MovementSpeed.Value <= 665400 then
					v67 = 170 + (MovementSpeed.Value - 5400) / 2000;
				else
					v67 = 440 + (MovementSpeed.Value - 65400) / 10000;
				end;
				if Character and Character:FindFirstChild("LeftWeight1") then
					v67 = v67 / 2;
					if v67 < 4 then
						v67 = 1;
					end;
				elseif Character and Character:FindFirstChild("LeftWeight2") then
					v67 = v67 / 10;
					if v67 < 4 then
						v67 = 1;
					end;
				elseif Character and Character:FindFirstChild("LeftWeight3") then
					v67 = v67 / 50;
					if v67 < 4 then
						v67 = 1;
					end;
				elseif Character and Character:FindFirstChild("LeftWeight4") then
					v67 = v67 / 100;
					if v67 < 4 then
						v67 = 1;
					end;
				end;
				if v4.Storage.CustomMS > 10 and v4.Storage.CustomMS < v67 then
					v67 = v4.Storage.CustomMS;
				end;
				if v67 > 1000 then
					v67 = 1000;
				end;
				Humanoid.WalkSpeed = v67;
			end;
			if v66.SelectedJP then
				v4.Storage.CustomJP = v66.SelectedJP;
				if JumpForce.Value <= 2500 then
					local v68 = 50 + JumpForce.Value / 50;
				elseif JumpForce.Value <= 8750 then
					v68 = 65 + JumpForce.Value / 250;
				elseif JumpForce.Value <= 33750 then
					v68 = 84 + (JumpForce.Value - 750) / 500;
				elseif JumpForce.Value <= 83750 then
					v68 = 120 + (JumpForce.Value - 3750) / 1000;
				elseif JumpForce.Value <= 665000 then
					v68 = 193 + (JumpForce.Value - 65000) / 2500;
				else
					v68 = 400 + JumpForce.Value / 20000;
				end;
				if Character and Character:FindFirstChild("LeftWeight1") then
					v68 = v68 / 2;
					if v68 < 50 then
						v68 = 1;
					end;
				elseif Character and Character:FindFirstChild("LeftWeight2") then
					v68 = v68 / 5;
					if v68 < 50 then
						v68 = 1;
					end;
				elseif Character and Character:FindFirstChild("LeftWeight3") then
					v68 = v68 / 10;
					if v68 < 50 then
						v68 = 1;
					end;
				elseif Character and Character:FindFirstChild("LeftWeight4") then
					v68 = v68 / 20;
					if v68 < 50 then
						v68 = 1;
					end;
				end;
				if v4.Storage.CustomJP > 50 and v4.Storage.CustomJP < v68 then
					v68 = v4.Storage.CustomJP;
				end;
				if v68 > 500 then
					v68 = 500;
				end;
				Humanoid.JumpPower = v68;
			end;
			if v4.Storage.CustomFS then
				if JumpForce.Value < 100000 then
					v4.Storage.FlySpeed = JumpForce.Value / 200;
				elseif JumpForce.Value < 1000000 then
					v4.Storage.FlySpeed = 400 + JumpForce.Value / 1000;
				elseif JumpForce.Value < 10000000 then
					v4.Storage.FlySpeed = 1300 + JumpForce.Value / 10000;
				else
					v4.Storage.FlySpeed = 2200 + JumpForce.Value / 100000;
				end;
				if Humanoid.JumpPower ~= 0 and Humanoid.JumpPower ~= 50 then
					if Character and Character:FindFirstChild("LeftWeight1") then
						v4.Storage.FlySpeed = v4.Storage.FlySpeed / 2;
					elseif Character and Character:FindFirstChild("LeftWeight2") then
						v4.Storage.FlySpeed = v4.Storage.FlySpeed / 5;
					elseif Character and Character:FindFirstChild("LeftWeight3") then
						v4.Storage.FlySpeed = v4.Storage.FlySpeed / 10;
					elseif Character and Character:FindFirstChild("LeftWeight4") then
						v4.Storage.FlySpeed = v4.Storage.FlySpeed / 20;
					end;
				end;
				if v4.Storage.CustomFS > 0 and v4.Storage.CustomFS < v4.Storage.FlySpeed then
					v4.Storage.FlySpeed = v4.Storage.CustomFS;
				end;
				if v4.Storage.FlySpeed > 1000 then
					v4.Storage.FlySpeed = 1000;
				end;
			end;
		end;
	end;
end;
local function u14(p24)
	if Humanoid and Humanoid.Health > 0 and HumanoidRootPart and p24 then
		HumanoidRootPart.CFrame = CFrame.new(HumanoidRootPart.Position, Vector3.new(p24.Position.X, HumanoidRootPart.Position.Y, p24.Position.Z));
	end;
end;
local function v69()
	local v70 = HttpService:JSONDecode(QuestData.Value);
	if CanBulletPunch and Character and Character:FindFirstChild("HumanoidRootPart") and FistStrength.Value >= 100000 and v70 and v70.MainQuest and v70.MainQuest.No and v70.MainQuest.No >= 11 and mouse and mouse.hit then
		CanBulletPunch = false;
		if not Flying and mouse and mouse.Hit then
			u14(mouse.hit);
		end;
		if Character.Head.Transparency ~= 0 then
			RemoteEvent:FireServer({ "Skill_Invisible", "Stop" });
		end;
		if not Combat_FirstPunch then
			Combat_FirstPunch = true;
			RemoteEvent:FireServer({ "Skill_BulletPunch", "Right", mouse.hit.p });
			if Landed then
				PlayAnim(script:WaitForChild("BulletPunch1Anim"));
			else
				PlayAnim(script:WaitForChild("BulletPunch1_AirAnim"));
			end;
		else
			Combat_FirstPunch = false;
			RemoteEvent:FireServer({ "Skill_BulletPunch", "Left", mouse.hit.p });
			if Landed then
				PlayAnim(script:WaitForChild("BulletPunch2Anim"));
			else
				PlayAnim(script:WaitForChild("BulletPunch2_AirAnim"));
			end;
		end;
		local v71 = HttpService:JSONDecode(Inventory.Value);
		if v71 and v71.x2SkillSpeed then
			delay(0.25, function()
				CanBulletPunch = true;
			end);
			return;
		end;
		delay(0.5, function()
			CanBulletPunch = true;
		end);
	end;
end;
local function v72()
	local v73 = HttpService:JSONDecode(QuestData.Value);
	if CanTeleport and Character and Character:FindFirstChild("HumanoidRootPart") and MovementSpeed.Value >= 10000 and v73 and v73.MainQuest and v73.MainQuest.No and v73.MainQuest.No >= 9 and not SoulAttacking then
		if (HumanoidRootPart.CFrame.p - mouse.Hit.p).magnitude < MovementSpeed.Value / 1000 then
			CanTeleport = false;
			WarnTxt.Visible = false;
			if mouse and mouse.Target then
				RemoteEvent:FireServer({ "Skill_Teleport", mouse.Hit.p });
			end;
			local v74 = HttpService:JSONDecode(Inventory.Value);
			if v74 and v74.x2SkillSpeed then
				delay(0.5, function()
					CanTeleport = true;
				end);
				return;
			else
				delay(1, function()
					CanTeleport = true;
				end);
				return;
			end;
		else
			ErrorSound:Play();
			WarnTxt.Text = "too far to teleport!";
			v4.PopUpAndAutoHideGui(WarnTxt, 1);
			return;
		end;
	end;
	if CanTeleport and SoulAttacking then
		WarnTxt.Text = "Can't use with soul attack!";
		v4.PopUpAndAutoHideGui(WarnTxt, 1);
	end;
end;
local function v75()
	if CanPunch and not Combat_FirstPunch then
		CanPunch = false;
		if Character.Head.Transparency ~= 0 then
			RemoteEvent:FireServer({ "Skill_Invisible", "Stop" });
		end;
		Combat_FirstPunch = true;
		RemoteEvent:FireServer({ "Skill_Punch", "Right" });
		if Landed then
			PlayAnim(script:WaitForChild("Punch1Anim"));
		else
			PlayAnim(script:WaitForChild("Punch1_AirAnim"));
		end;
		local v76 = HttpService:JSONDecode(Inventory.Value);
		if v76 and v76.x2SkillSpeed then
			delay(0.25, function()
				CanPunch = true;
			end);
			return;
		else
			delay(0.5, function()
				CanPunch = true;
			end);
			return;
		end;
	end;
	if CanPunch then
		CanPunch = false;
		if Character.Head.Transparency ~= 0 then
			RemoteEvent:FireServer({ "Skill_Invisible", "Stop" });
		end;
		Combat_FirstPunch = false;
		RemoteEvent:FireServer({ "Skill_Punch", "Left" });
		if Landed then
			PlayAnim(script:WaitForChild("Punch2Anim"));
		else
			PlayAnim(script:WaitForChild("Punch2_AirAnim"));
		end;
		local v77 = HttpService:JSONDecode(Inventory.Value);
		if v77 and v77.x2SkillSpeed then
			delay(0.25, function()
				CanPunch = true;
			end);
			return;
		end;
		delay(0.5, function()
			CanPunch = true;
		end);
	end;
end;
local function v78()
	local v79 = HttpService:JSONDecode(QuestData.Value);
	if CanBeInvisible and PsychicPower.Value >= 100 and v79 and v79.MainQuest and v79.MainQuest.No and v79.MainQuest.No >= 4 and not SoulAttacking then
		CanBeInvisible = false;
		if Character and Character:FindFirstChild("Head") then
			if Character.Head.Transparency == 0 then
				RemoteEvent:FireServer({ "Skill_Invisible", "Start" });
				Invisible = true;
			else
				RemoteEvent:FireServer({ "Skill_Invisible", "Stop" });
				Invisible = false;
			end;
		end;
		local v80 = HttpService:JSONDecode(Inventory.Value);
		if v80 and v80.x2SkillSpeed then
			delay(0.5, function()
				CanBeInvisible = true;
			end);
			return;
		else
			delay(1, function()
				CanBeInvisible = true;
			end);
			return;
		end;
	end;
	if CanBeInvisible and SoulAttacking then
		ErrorSound:Play();
		WarnTxt.Text = "Can't use with soul attack!";
		v4.PopUpAndAutoHideGui(WarnTxt, 1);
	end;
end;
local function v81()
	local v82 = HttpService:JSONDecode(QuestData.Value);
	if CanSpherePunch and FistStrength.Value >= 1000 and v82 and v82.MainQuest and v82.MainQuest.No and v82.MainQuest.No >= 5 and mouse and mouse.hit then
		CanSpherePunch = false;
		if not Flying then
			u14(mouse.hit);
		end;
		if Character.Head.Transparency ~= 0 then
			RemoteEvent:FireServer({ "Skill_Invisible", "Stop" });
		end;
		if Landed then
			PlayAnim(script:WaitForChild("SpherePunchAnim"));
		else
			PlayAnim(script:WaitForChild("SpherePunch_AirAnim"));
		end;
		RemoteEvent:FireServer({ "Skill_SpherePunch", mouse.hit.p });
		local v83 = HttpService:JSONDecode(Inventory.Value);
		if v83 and v83.x2SkillSpeed then
			delay(0.5, function()
				CanSpherePunch = true;
			end);
			return;
		end;
		delay(1, function()
			CanSpherePunch = true;
		end);
	end;
end;
local function u15(p25, p26, p27)
	if p25 and p25:FindFirstAncestorOfClass("Model") and l__Players__2:GetPlayerFromCharacter(p25:FindFirstAncestorOfClass("Model")) and (not (not p27) and l__Players__2:GetPlayerFromCharacter(p25:FindFirstAncestorOfClass("Model")) ~= p27 or not p27) then
		if p26 then
			if u10(l__Players__2:GetPlayerFromCharacter(p25:FindFirstAncestorOfClass("Model"))) then
				return l__Players__2:GetPlayerFromCharacter(p25:FindFirstAncestorOfClass("Model"));
			else
				return false;
			end;
		else
			return l__Players__2:GetPlayerFromCharacter(p25:FindFirstAncestorOfClass("Model"));
		end;
	end;
	return nil;
end;
local function u16()
	if not Flying and Humanoid and Humanoid.Health > 0 and HumanoidRootPart and SoulAttack_Target then
		HumanoidRootPart.CFrame = CFrame.new(HumanoidRootPart.Position, Vector3.new(SoulAttack_Target.Position.X, HumanoidRootPart.Position.Y, SoulAttack_Target.Position.Z));
	end;
end;
local function v84()
	local v85 = HttpService:JSONDecode(QuestData.Value);
	if CanSoulAttack and not SoulAttacking and v85 and v85.MainQuest and v85.MainQuest.No and v85.MainQuest.No >= 12 and mouse and mouse.Target and (player:DistanceFromCharacter(mouse.Target.Position) < PsychicPower.Value / 10000 and player:DistanceFromCharacter(mouse.Target.Position) <= 250) then
		local v86 = u15(mouse.Target, true, l__LocalPlayer__3);
		if v86 and v86 ~= player and v86.Character and (v86.Character:FindFirstChild("Humanoid") and v86.Character.Humanoid.Health > 0) and not v86.Character:FindFirstChildOfClass("ForceField") then
			CanSoulAttack = false;
			SoulAttacking = true;
			if Character.Head.Transparency ~= 0 then
				RemoteEvent:FireServer({ "Skill_Invisible", "Stop" });
			end;
			RemoteEvent:FireServer({ "Skill_SoulAttack_Start", v86 });
			SoulAttack_Target = v86.Character.HumanoidRootPart;
			game:GetService("RunService"):BindToRenderStep("TargetLock", 500, u16);
			local v87 = HttpService:JSONDecode(Inventory.Value);
			if v87 and v87.x2SkillSpeed then
				delay(0.5, function()
					CanSoulAttack = true;
				end);
				return;
			else
				delay(1, function()
					CanSoulAttack = true;
				end);
				return;
			end;
		end;
		if v86 and v86 ~= player and v86.Character and v86.Character:FindFirstChild("SafeZoneShield") then
			if SafeZoneTxt.Text == "Can't Attack People in Safe Zone!" and SafeZoneTxt.Visible == true then
				return;
			else
				SafeZoneTxt.Text = "Can't Attack People in Safe Zone!";
				SafeZoneTxt.Visible = true;
				delay(2, function()
					if SafeZoneTxt.Text == "Can't Attack People in Safe Zone!" then
						SafeZoneTxt.Visible = false;
					end;
				end);
				return;
			end;
		end;
	elseif CanSoulAttack and not SoulAttacking and v85 and v85.MainQuest and v85.MainQuest.No and v85.MainQuest.No >= 12 and mouse and mouse.Target and (PsychicPower.Value / 10000 < player:DistanceFromCharacter(mouse.Target.Position) or player:DistanceFromCharacter(mouse.Target.Position) > 250) then
		WarnTxt.Text = "too far to attack!";
		v4.PopUpAndAutoHideGui(WarnTxt, 1);
	end;
end;
local function v88()
	local v89 = HttpService:JSONDecode(QuestData.Value);
	if CanConcealAura and v89 and v89.MainQuest and v89.MainQuest.No and v89.MainQuest.No >= 13 then
		CanConcealAura = false;
		RemoteEvent:FireServer({ "ConcealRevealAura" });
		local v90 = HttpService:JSONDecode(Inventory.Value);
		if v90 and v90.x2SkillSpeed then
			delay(0.5, function()
				CanConcealAura = true;
			end);
			return;
		end;
		delay(1, function()
			CanConcealAura = true;
		end);
	end;
end;
local function v91()
	local v92 = HttpService:JSONDecode(QuestData.Value);
	if PsychicPower.Value >= 100000000 and v92 and v92.MainQuest and v92.MainQuest.No and v92.MainQuest.No >= 14 then
		if Character and not Character:FindFirstChild("KillingIntentPart") and not Character:FindFirstChildOfClass("ForceField") then
			if Character.Head.Transparency ~= 0 then
				RemoteEvent:FireServer({ "Skill_Invisible", "Stop" });
			end;
			if not Character:FindFirstChild("SafeZoneShield") then
				PlayAnim(script:WaitForChild("KillingIntentAttackerAnim"));
			end;
			RemoteEvent:FireServer({ "Skill_KillingIntent_Start" });
			return;
		elseif Character and Character:FindFirstChild("KillingIntentPart") then
			RemoteEvent:FireServer({ "Skill_KillingIntent_End" });
		end;
	end;
end;
wUp = true;
aUp = true;
sUp = true;
dUp = true;
eUp = true;
qUp = true;
local u17 = 0;
local u18 = 0;
local u19 = 0;
function FlyFunc()
	local v93 = Instance.new("BodyVelocity");
	v93.Name = "FlyBodyVel";
	v93.MaxForce = Vector3.new(math.huge, math.huge, math.huge);
	v93.Velocity = Vector3.new(0, 0, 0);
	local v94 = Instance.new("BodyGyro");
	v94.Name = "FlyBodyGyro";
	v94.MaxTorque = Vector3.new(math.huge, math.huge, math.huge);
	v94.D = 100;
	v94.P = 20000;
	v94.CFrame = HumanoidRootPart.CFrame;
	v93.Parent = HumanoidRootPart;
	v94.Parent = HumanoidRootPart;
	if 10 < Humanoid.WalkSpeed then
		if 50 < Humanoid.JumpPower then
			if JumpForce.Value < 100000 then
				v4.Storage.FlySpeed = JumpForce.Value / 200;
			elseif JumpForce.Value < 1000000 then
				v4.Storage.FlySpeed = 400 + JumpForce.Value / 1000;
			elseif JumpForce.Value < 10000000 then
				v4.Storage.FlySpeed = 1300 + JumpForce.Value / 10000;
			else
				v4.Storage.FlySpeed = 2200 + JumpForce.Value / 100000;
			end;
			if Humanoid.JumpPower ~= 0 then
				if Humanoid.JumpPower ~= 50 then
					if Character then
						if Character:FindFirstChild("LeftWeight1") then
							v4.Storage.FlySpeed = v4.Storage.FlySpeed / 2;
						elseif Character then
							if Character:FindFirstChild("LeftWeight2") then
								v4.Storage.FlySpeed = v4.Storage.FlySpeed / 5;
							elseif Character then
								if Character:FindFirstChild("LeftWeight3") then
									v4.Storage.FlySpeed = v4.Storage.FlySpeed / 10;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v4.Storage.FlySpeed = v4.Storage.FlySpeed / 20;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight4") then
									v4.Storage.FlySpeed = v4.Storage.FlySpeed / 20;
								end;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight3") then
								v4.Storage.FlySpeed = v4.Storage.FlySpeed / 10;
							elseif Character then
								if Character:FindFirstChild("LeftWeight4") then
									v4.Storage.FlySpeed = v4.Storage.FlySpeed / 20;
								end;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight4") then
								v4.Storage.FlySpeed = v4.Storage.FlySpeed / 20;
							end;
						end;
					elseif Character then
						if Character:FindFirstChild("LeftWeight2") then
							v4.Storage.FlySpeed = v4.Storage.FlySpeed / 5;
						elseif Character then
							if Character:FindFirstChild("LeftWeight3") then
								v4.Storage.FlySpeed = v4.Storage.FlySpeed / 10;
							elseif Character then
								if Character:FindFirstChild("LeftWeight4") then
									v4.Storage.FlySpeed = v4.Storage.FlySpeed / 20;
								end;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight4") then
								v4.Storage.FlySpeed = v4.Storage.FlySpeed / 20;
							end;
						end;
					elseif Character then
						if Character:FindFirstChild("LeftWeight3") then
							v4.Storage.FlySpeed = v4.Storage.FlySpeed / 10;
						elseif Character then
							if Character:FindFirstChild("LeftWeight4") then
								v4.Storage.FlySpeed = v4.Storage.FlySpeed / 20;
							end;
						end;
					elseif Character then
						if Character:FindFirstChild("LeftWeight4") then
							v4.Storage.FlySpeed = v4.Storage.FlySpeed / 20;
						end;
					end;
				end;
			end;
			if 0 < v4.Storage.CustomFS then
				if v4.Storage.CustomFS < v4.Storage.FlySpeed then
					v4.Storage.FlySpeed = v4.Storage.CustomFS;
				end;
			end;
			if 1000 < v4.Storage.FlySpeed then
				v4.Storage.FlySpeed = 1000;
			end;
		end;
	end;
	FlyRunService = RunService.RenderStepped:Connect(function()
		v94.CFrame = CurrentCamera.CFrame;
		if u17 ~= 0 then
			v93.Velocity = CFrame.new(CurrentCamera.CFrame.p, (CurrentCamera.CFrame * CFrame.new(u18, u17, u19)).p).lookVector * v4.Storage.FlySpeed;
		elseif u18 == 0 then
			if u19 ~= 0 then
				v93.Velocity = CFrame.new(CurrentCamera.CFrame.p, (CurrentCamera.CFrame * CFrame.new(u18, 0, u19)).p).lookVector * v4.Storage.FlySpeed;
			else
				v93.Velocity = Vector3.new(0, 0, 0);
			end;
		else
			v93.Velocity = CFrame.new(CurrentCamera.CFrame.p, (CurrentCamera.CFrame * CFrame.new(u18, 0, u19)).p).lookVector * v4.Storage.FlySpeed;
		end;
		if wUp then
			if aUp then
				if sUp then
					if dUp then
						if eUp then
							if qUp then
								if u18 == 0 then
									if u17 == 0 then
										if u19 ~= 0 then
											u18 = 0;
											u17 = 0;
											u19 = 0;
											v93.Velocity = Vector3.new(0, 0, 0);
										end;
									else
										u18 = 0;
										u17 = 0;
										u19 = 0;
										v93.Velocity = Vector3.new(0, 0, 0);
									end;
								else
									u18 = 0;
									u17 = 0;
									u19 = 0;
									v93.Velocity = Vector3.new(0, 0, 0);
								end;
							end;
						end;
					end;
				end;
			end;
		end;
		if not Flying then
			FlyRunService:Disconnect();
		end;
	end);
end;
Token.Changed:Connect(function(p28)
	TokenImgBtn:WaitForChild("AmountTxtBtn").Text = tostring(p28);
end);
SelectedRank.Changed:Connect(function(p29)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("RankImgBtn").Image = require(ModuleStorage:WaitForChild("RankImgVariable"))[p29];
end);
Rank.Changed:Connect(function(p30)
	local v95 = nil;
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("RankTxt").Text = "Rank : " .. require(ModuleStorage:WaitForChild("RankNameVariable"))[Rank.Value];
	if Rank.Value < 11 then
		RankImgBtn.Image = require(ModuleStorage:WaitForChild("RankImgVariable"))[Rank.Value + 1];
		RankImgBtn.Visible = true;
	else
		RankImgBtn.Visible = false;
	end;
	if Rank.Value > 1 then
		RankEmblemFrame:WaitForChild("Rank2ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank2ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank2ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 2 then
		RankEmblemFrame:WaitForChild("Rank3ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank3ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank3ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 3 then
		RankEmblemFrame:WaitForChild("Rank4ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank4ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank4ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 4 then
		RankEmblemFrame:WaitForChild("Rank5ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank5ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank5ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 5 then
		RankEmblemFrame:WaitForChild("Rank6ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank6ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank6ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 6 then
		RankEmblemFrame:WaitForChild("Rank7ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank7ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank7ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 7 then
		RankEmblemFrame:WaitForChild("Rank8ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank8ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank8ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 8 then
		RankEmblemFrame:WaitForChild("Rank9ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank9ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank9ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 9 then
		RankEmblemFrame:WaitForChild("Rank10ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank10ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank10ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 10 then
		RankEmblemFrame:WaitForChild("Rank11ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank11ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank11ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	local l__Frame__96 = RankImgBtn:WaitForChild("Frame");
	v95 = FistStrength.Value + BodyToughness.Value + MovementSpeed.Value + JumpForce.Value + PsychicPower.Value;
	local v97 = HeroKilled.Value + VillainKilled.Value;
	if Rank.Value == 1 then
		l__Frame__96:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame2").Visible = false;
		l__Frame__96:WaitForChild("MaxFrame3").Visible = false;
		l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100 Total Power";
		if v95 <= 100 then
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = tostring(v95) .. " / 100";
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v95 / 100, 0, 1, 0);
			return;
		else
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100 / 100";
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 2 then
		l__Frame__96:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame3").Visible = false;
		l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1K Total Power";
		if v95 <= 1000 then
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v95) .. " / 1K";
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v95 / 1000, 0, 1, 0);
		else
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1K / 1K";
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 1 Hero or Villain";
		if v97 <= 1 then
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v97) .. " / 1";
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v97 / 1, 0, 1, 0);
			return;
		else
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "1 / 1";
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 3 then
		l__Frame__96:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame3").Visible = false;
		l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10K Total Power";
		if v95 <= 10000 then
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v95) .. " / 10K";
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v95 / 10000, 0, 1, 0);
		else
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10K / 10K";
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 5 Hero or Villain";
		if v97 <= 5 then
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v97) .. " / 5";
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v97 / 5, 0, 1, 0);
			return;
		else
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "5 / 5";
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 4 then
		l__Frame__96:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame3").Visible = false;
		l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100K Total Power";
		if v95 <= 100000 then
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v95) .. " / 100K";
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v95 / 100000, 0, 1, 0);
		else
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100K / 100K";
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 10 Hero or Villain";
		if v97 <= 10 then
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v97) .. " / 10";
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v97 / 10, 0, 1, 0);
			return;
		else
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "10 / 10";
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 5 then
		l__Frame__96:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame3").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1M Total Power";
		if v95 <= 1000000 then
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v95) .. " / 1M";
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v95 / 1000000, 0, 1, 0);
		else
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1M / 1M";
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 20 Hero or Villain";
		if v97 <= 20 then
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v97) .. " / 20";
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v97 / 20, 0, 1, 0);
		else
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "20 / 20";
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 60 mins";
		if AliveTime.Value < 60 then
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = tostring(AliveTime.Value) .. "m / 60m";
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 60, 0, 1, 0);
			return;
		else
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "60m / 60m";
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 6 then
		l__Frame__96:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame3").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10M Total Power";
		if v95 <= 10000000 then
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v95) .. " / 10M";
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v95 / 10000000, 0, 1, 0);
		else
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10M / 10M";
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 50 Hero or Villain";
		if v97 <= 50 then
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v97) .. " / 50";
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v97 / 50, 0, 1, 0);
		else
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "50 / 50";
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 8 hours";
		if AliveTime.Value < 480 then
			local v98 = tostring(math.floor(AliveTime.Value / 60));
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v98 .. "h " .. tostring(math.floor(AliveTime.Value - v98 * 60)) .. "m / 8h";
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 480, 0, 1, 0);
			return;
		else
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "8h / 8h";
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 7 then
		l__Frame__96:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame3").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100M Total Power";
		if v95 <= 100000000 then
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v95) .. " / 100M";
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v95 / 100000000, 0, 1, 0);
		else
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100M / 100M";
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 100 Hero or Villain";
		if v97 <= 100 then
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v97) .. " / 100";
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v97 / 100, 0, 1, 0);
		else
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "100 / 100";
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 16 hours";
		if AliveTime.Value < 960 then
			local v99 = tostring(math.floor(AliveTime.Value / 60));
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v99 .. "h " .. tostring(math.floor(AliveTime.Value - v99 * 60)) .. "m / 16h";
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 960, 0, 1, 0);
			return;
		else
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "16h / 16h";
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 8 then
		l__Frame__96:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame3").Visible = true;
		l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1B Total Power";
		if v95 <= 1000000000 then
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v95) .. " / 1B";
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v95 / 1000000000, 0, 1, 0);
		else
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1B / 1B";
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 200 Hero or Villain";
		if v97 <= 200 then
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v97) .. " / 200";
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v97 / 200, 0, 1, 0);
		else
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "200 / 200";
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 1 day";
		if AliveTime.Value < 1440 then
			local v100 = tostring(math.floor(AliveTime.Value / 1440));
			local v101 = tostring(math.floor((AliveTime.Value - v100 * 1440) / 60));
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v100 .. "d " .. v101 .. "h " .. tostring(math.floor(AliveTime.Value - v100 * 1440 - v101 * 60)) .. "m / 1d";
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 1440, 0, 1, 0);
			return;
		else
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "1d / 1d";
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value ~= 9 then
		if Rank.Value == 10 then
			l__Frame__96:WaitForChild("MaxFrame1").Visible = true;
			l__Frame__96:WaitForChild("MaxFrame2").Visible = true;
			l__Frame__96:WaitForChild("MaxFrame3").Visible = true;
			l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100B Total Power";
			if v95 <= 100000000000 then
				l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v95) .. " / 100B";
				l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v95 / 100000000000, 0, 1, 0);
			else
				l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100B / 100B";
				l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			end;
			l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 1000 Hero or Villain";
			if v97 <= 1000 then
				l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v97) .. " / 1000";
				l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v97 / 1000, 0, 1, 0);
			else
				l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "1000 / 1000";
				l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			end;
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Become a Squad Leader";
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "0 / 1";
			l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(0, 0, 1, 0);
			return;
		else
			if Rank.Value == 11 then
				l__Frame__96:WaitForChild("MaxFrame1").Visible = false;
				l__Frame__96:WaitForChild("MaxFrame2").Visible = false;
				l__Frame__96:WaitForChild("MaxFrame3").Visible = false;
			end;
			return;
		end;
	end;
	l__Frame__96:WaitForChild("MaxFrame1").Visible = true;
	l__Frame__96:WaitForChild("MaxFrame2").Visible = true;
	l__Frame__96:WaitForChild("MaxFrame3").Visible = true;
	l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10B Total Power";
	if v95 <= 10000000000 then
		l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v95) .. " / 10B";
		l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v95 / 10000000000, 0, 1, 0);
	else
		l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10B / 10B";
		l__Frame__96:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
	end;
	l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 500 Hero or Villain";
	if v97 <= 500 then
		l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v97) .. " / 500";
		l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v97 / 500, 0, 1, 0);
	else
		l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "500 / 500";
		l__Frame__96:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
	end;
	l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 2 days";
	if not (AliveTime.Value < 2880) then
		l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "2d / 2d";
		l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		return;
	end;
	local v102 = tostring(math.floor(AliveTime.Value / 1440));
	local v103 = tostring(math.floor((AliveTime.Value - v102 * 1440) / 60));
	l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v102 .. "d " .. v103 .. "h " .. tostring(math.floor(AliveTime.Value - v102 * 1440 - v103 * 60)) .. "m / 2d";
	l__Frame__96:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 2880, 0, 1, 0);
end);
Reputation.Changed:Connect(function(p31)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("RepTxt").Text = "Reputation : " .. tostring(p31);
end);
Status.Changed:Connect(function(p32)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("StatusTxt").Text = "Status : " .. p32;
end);
AliveTime.Changed:Connect(function(p33)
	local v104 = nil;
	local l__Frame__105 = RankImgBtn:WaitForChild("Frame");
	v104 = FistStrength.Value + BodyToughness.Value + MovementSpeed.Value + JumpForce.Value + PsychicPower.Value;
	local v106 = HeroKilled.Value + VillainKilled.Value;
	if Rank.Value == 1 then
		l__Frame__105:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame2").Visible = false;
		l__Frame__105:WaitForChild("MaxFrame3").Visible = false;
		l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100 Total Power";
		if v104 <= 100 then
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = tostring(v104) .. " / 100";
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v104 / 100, 0, 1, 0);
			return;
		else
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100 / 100";
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 2 then
		l__Frame__105:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame3").Visible = false;
		l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1K Total Power";
		if v104 <= 1000 then
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v104) .. " / 1K";
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v104 / 1000, 0, 1, 0);
		else
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1K / 1K";
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 1 Hero or Villain";
		if v106 <= 1 then
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v106) .. " / 1";
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v106 / 1, 0, 1, 0);
			return;
		else
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "1 / 1";
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 3 then
		l__Frame__105:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame3").Visible = false;
		l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10K Total Power";
		if v104 <= 10000 then
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v104) .. " / 10K";
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v104 / 10000, 0, 1, 0);
		else
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10K / 10K";
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 5 Hero or Villain";
		if v106 <= 5 then
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v106) .. " / 5";
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v106 / 5, 0, 1, 0);
			return;
		else
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "5 / 5";
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 4 then
		l__Frame__105:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame3").Visible = false;
		l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100K Total Power";
		if v104 <= 100000 then
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v104) .. " / 100K";
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v104 / 100000, 0, 1, 0);
		else
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100K / 100K";
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 10 Hero or Villain";
		if v106 <= 10 then
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v106) .. " / 10";
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v106 / 10, 0, 1, 0);
			return;
		else
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "10 / 10";
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 5 then
		l__Frame__105:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame3").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1M Total Power";
		if v104 <= 1000000 then
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v104) .. " / 1M";
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v104 / 1000000, 0, 1, 0);
		else
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1M / 1M";
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 20 Hero or Villain";
		if v106 <= 20 then
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v106) .. " / 20";
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v106 / 20, 0, 1, 0);
		else
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "20 / 20";
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 60 mins";
		if AliveTime.Value < 60 then
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = tostring(AliveTime.Value) .. "m / 60m";
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 60, 0, 1, 0);
			return;
		else
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "60m / 60m";
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 6 then
		l__Frame__105:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame3").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10M Total Power";
		if v104 <= 10000000 then
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v104) .. " / 10M";
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v104 / 10000000, 0, 1, 0);
		else
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10M / 10M";
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 50 Hero or Villain";
		if v106 <= 50 then
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v106) .. " / 50";
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v106 / 50, 0, 1, 0);
		else
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "50 / 50";
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 8 hours";
		if AliveTime.Value < 480 then
			local v107 = tostring(math.floor(AliveTime.Value / 60));
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v107 .. "h " .. tostring(math.floor(AliveTime.Value - v107 * 60)) .. "m / 8h";
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 480, 0, 1, 0);
			return;
		else
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "8h / 8h";
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 7 then
		l__Frame__105:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame3").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100M Total Power";
		if v104 <= 100000000 then
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v104) .. " / 100M";
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v104 / 100000000, 0, 1, 0);
		else
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100M / 100M";
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 100 Hero or Villain";
		if v106 <= 100 then
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v106) .. " / 100";
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v106 / 100, 0, 1, 0);
		else
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "100 / 100";
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 16 hours";
		if AliveTime.Value < 960 then
			local v108 = tostring(math.floor(AliveTime.Value / 60));
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v108 .. "h " .. tostring(math.floor(AliveTime.Value - v108 * 60)) .. "m / 16h";
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 960, 0, 1, 0);
			return;
		else
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "16h / 16h";
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 8 then
		l__Frame__105:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame3").Visible = true;
		l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1B Total Power";
		if v104 <= 1000000000 then
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v104) .. " / 1B";
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v104 / 1000000000, 0, 1, 0);
		else
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1B / 1B";
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 200 Hero or Villain";
		if v106 <= 200 then
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v106) .. " / 200";
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v106 / 200, 0, 1, 0);
		else
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "200 / 200";
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 1 day";
		if AliveTime.Value < 1440 then
			local v109 = tostring(math.floor(AliveTime.Value / 1440));
			local v110 = tostring(math.floor((AliveTime.Value - v109 * 1440) / 60));
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v109 .. "d " .. v110 .. "h " .. tostring(math.floor(AliveTime.Value - v109 * 1440 - v110 * 60)) .. "m / 1d";
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 1440, 0, 1, 0);
			return;
		else
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "1d / 1d";
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value ~= 9 then
		if Rank.Value == 10 then
			l__Frame__105:WaitForChild("MaxFrame1").Visible = true;
			l__Frame__105:WaitForChild("MaxFrame2").Visible = true;
			l__Frame__105:WaitForChild("MaxFrame3").Visible = true;
			l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100B Total Power";
			if v104 <= 100000000000 then
				l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v104) .. " / 100B";
				l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v104 / 100000000000, 0, 1, 0);
			else
				l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100B / 100B";
				l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			end;
			l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 1000 Hero or Villain";
			if v106 <= 1000 then
				l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v106) .. " / 1000";
				l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v106 / 1000, 0, 1, 0);
			else
				l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "1000 / 1000";
				l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			end;
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Become a Squad Leader";
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "0 / 1";
			l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(0, 0, 1, 0);
		end;
		return;
	end;
	l__Frame__105:WaitForChild("MaxFrame1").Visible = true;
	l__Frame__105:WaitForChild("MaxFrame2").Visible = true;
	l__Frame__105:WaitForChild("MaxFrame3").Visible = true;
	l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10B Total Power";
	if v104 <= 10000000000 then
		l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v104) .. " / 10B";
		l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v104 / 10000000000, 0, 1, 0);
	else
		l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10B / 10B";
		l__Frame__105:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
	end;
	l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 500 Hero or Villain";
	if v106 <= 500 then
		l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v106) .. " / 500";
		l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v106 / 500, 0, 1, 0);
	else
		l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "500 / 500";
		l__Frame__105:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
	end;
	l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 2 days";
	if not (AliveTime.Value < 2880) then
		l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "2d / 2d";
		l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		return;
	end;
	local v111 = tostring(math.floor(AliveTime.Value / 1440));
	local v112 = tostring(math.floor((AliveTime.Value - v111 * 1440) / 60));
	l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v111 .. "d " .. v112 .. "h " .. tostring(math.floor(AliveTime.Value - v111 * 1440 - v112 * 60)) .. "m / 2d";
	l__Frame__105:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 2880, 0, 1, 0);
end);
InnocentKilled.Changed:Connect(function(p34)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("KilledTxt").Text = "Innocents Killed : " .. tostring(InnocentKilled.Value) .. " , Villains Killed : " .. tostring(VillainKilled.Value) .. " , Heroes Killed : " .. tostring(HeroKilled.Value);
end);
VillainKilled.Changed:Connect(function(p35)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("KilledTxt").Text = "Innocents Killed : " .. tostring(InnocentKilled.Value) .. " , Villains Killed : " .. tostring(VillainKilled.Value) .. " , Heroes Killed : " .. tostring(HeroKilled.Value);
end);
HeroKilled.Changed:Connect(function(p36)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("KilledTxt").Text = "Innocents Killed : " .. tostring(InnocentKilled.Value) .. " , Villains Killed : " .. tostring(VillainKilled.Value) .. " , Heroes Killed : " .. tostring(HeroKilled.Value);
end);
FistStrength.Changed:Connect(function(p37)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("FSTxt").Text = "Fist Strength : " .. u9(p37);
end);
BodyToughness.Changed:Connect(function(p38)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("BTTxt").Text = "Body Toughness : " .. u9(p38);
end);
MovementSpeed.Changed:Connect(function(p39)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("MSTxt").Text = "Movement Speed : " .. u9(p39);
	if Humanoid.WalkSpeed == 0 or Humanoid.WalkSpeed == 10 then
		return;
	end;
	if MovementSpeed.Value <= 400 then
		local v113 = 10 + MovementSpeed.Value / 10;
	elseif MovementSpeed.Value <= 5400 then
		v113 = 46 + MovementSpeed.Value / 100;
	elseif MovementSpeed.Value <= 65400 then
		v113 = 91 + MovementSpeed.Value / 600;
	elseif MovementSpeed.Value <= 665400 then
		v113 = 170 + (MovementSpeed.Value - 5400) / 2000;
	else
		v113 = 440 + (MovementSpeed.Value - 65400) / 10000;
	end;
	if Humanoid.WalkSpeed ~= 0 and Humanoid.WalkSpeed ~= 10 then
		if Character and Character:FindFirstChild("LeftWeight1") then
			v113 = v113 / 2;
			if v113 < 4 then
				v113 = 1;
			end;
		elseif Character and Character:FindFirstChild("LeftWeight2") then
			v113 = v113 / 5;
			if v113 < 4 then
				v113 = 1;
			end;
		elseif Character and Character:FindFirstChild("LeftWeight3") then
			v113 = v113 / 10;
			if v113 < 4 then
				v113 = 1;
			end;
		elseif Character and Character:FindFirstChild("LeftWeight4") then
			v113 = v113 / 20;
			if v113 < 4 then
				v113 = 1;
			end;
		end;
	end;
	if v4.Storage.CustomMS > 10 and v4.Storage.CustomMS < v113 then
		v113 = v4.Storage.CustomMS;
	end;
	if v113 > 1000 then
		v113 = 1000;
	end;
	Humanoid.WalkSpeed = v113;
end);
JumpForce.Changed:Connect(function(p40)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("JFTxt").Text = "Jump Force : " .. u9(p40);
	if Humanoid.JumpPower == 0 or Humanoid.JumpPower == 50 then
		return;
	end;
	if JumpForce.Value <= 2500 then
		local v114 = 50 + JumpForce.Value / 50;
	elseif JumpForce.Value <= 8750 then
		v114 = 65 + JumpForce.Value / 250;
	elseif JumpForce.Value <= 33750 then
		v114 = 84 + (JumpForce.Value - 750) / 500;
	elseif JumpForce.Value <= 83750 then
		v114 = 120 + (JumpForce.Value - 3750) / 1000;
	elseif JumpForce.Value <= 665000 then
		v114 = 193 + (JumpForce.Value - 65000) / 2500;
	else
		v114 = 400 + JumpForce.Value / 20000;
	end;
	if Humanoid.JumpPower ~= 0 and Humanoid.JumpPower ~= 50 then
		if Character and Character:FindFirstChild("LeftWeight1") then
			v114 = v114 / 2;
			if v114 < 50 then
				v114 = 1;
			end;
		elseif Character and Character:FindFirstChild("LeftWeight2") then
			v114 = v114 / 3;
			if v114 < 50 then
				v114 = 1;
			end;
		elseif Character and Character:FindFirstChild("LeftWeight3") then
			v114 = v114 / 4;
			if v114 < 50 then
				v114 = 1;
			end;
		elseif Character and Character:FindFirstChild("LeftWeight4") then
			v114 = v114 / 5;
			if v114 < 50 then
				v114 = 1;
			end;
		end;
	end;
	if v4.Storage.CustomJP > 50 and v4.Storage.CustomJP < v114 then
		v114 = v4.Storage.CustomJP;
	end;
	if v114 > 500 then
		v114 = 500;
	end;
	Humanoid.JumpPower = v114;
end);
PsychicPower.Changed:Connect(function(p41)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("PPTxt").Text = "Psychic Power : " .. u9(p41);
end);
Setting.Changed:Connect(function(p42)
	local v115 = HttpService:JSONDecode(p42);
	if v115 then
		for v116, v117 in pairs(MenuFrame:WaitForChild("SettingFrame"):GetChildren()) do
			if v117.Name == "SettingTxt0" then
				if v115.OnlyDmgVillain ~= nil then
					if v115.OnlyDmgVillain == true then
						v117:WaitForChild("ToggleBtn").Text = "On";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v117:WaitForChild("ToggleBtn").Text = "Off";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v117.Name == "SettingTxt1" then
				if v115.FSXpTxt ~= nil then
					if v115.FSXpTxt == true then
						v117:WaitForChild("ToggleBtn").Text = "On";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v117:WaitForChild("ToggleBtn").Text = "Off";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v117.Name == "SettingTxt2" then
				if v115.BTXpTxt ~= nil then
					if v115.BTXpTxt == true then
						v117:WaitForChild("ToggleBtn").Text = "On";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v117:WaitForChild("ToggleBtn").Text = "Off";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v117.Name == "SettingTxt3" then
				if v115.MSXpTxt ~= nil then
					if v115.MSXpTxt == true then
						v117:WaitForChild("ToggleBtn").Text = "On";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v117:WaitForChild("ToggleBtn").Text = "Off";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v117.Name == "SettingTxt4" then
				if v115.JFXpTxt ~= nil then
					if v115.JFXpTxt == true then
						v117:WaitForChild("ToggleBtn").Text = "On";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v117:WaitForChild("ToggleBtn").Text = "Off";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v117.Name == "SettingTxt5" then
				if v115.PPXpTxt ~= nil then
					if v115.PPXpTxt == true then
						v117:WaitForChild("ToggleBtn").Text = "On";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v117:WaitForChild("ToggleBtn").Text = "Off";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v117.Name == "SettingTxt6" then
				if v115.BGMusic ~= nil then
					if v115.BGMusic == true then
						BackgroundSound.Volume = 0.2;
						v117:WaitForChild("ToggleBtn").Text = "On";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						BackgroundSound.Volume = 0;
						v117:WaitForChild("ToggleBtn").Text = "Off";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v117.Name == "SettingTxt7" then
				if v115.DmgToOpp ~= nil then
					if v115.DmgToOpp == true then
						v117:WaitForChild("ToggleBtn").Text = "On";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v117:WaitForChild("ToggleBtn").Text = "Off";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v117.Name == "SettingTxt8" then
				if v115.DmgToSelf ~= nil then
					if v115.DmgToSelf == true then
						v117:WaitForChild("ToggleBtn").Text = "On";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v117:WaitForChild("ToggleBtn").Text = "Off";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v117.Name == "SettingTxt9" then
				if v115.ShowNameTag ~= nil then
					if v115.ShowNameTag == true then
						if Character and Character:FindFirstChild("Head") and Character.PrimaryPart:FindFirstChild("SPTS_RK_BG") and Character.PrimaryPart:FindFirstChild("SPTS_PN_BG") then
							Character.PrimaryPart:FindFirstChild("SPTS_RK_BG").Enabled = true;
							Character.PrimaryPart:FindFirstChild("SPTS_PN_BG").Enabled = true;
						end;
						v117:WaitForChild("ToggleBtn").Text = "On";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						if Character and Character:FindFirstChild("Head") and Character.PrimaryPart:FindFirstChild("SPTS_RK_BG") and Character.PrimaryPart:FindFirstChild("SPTS_PN_BG") then
							Character.PrimaryPart:FindFirstChild("SPTS_RK_BG").Enabled = false;
							Character.PrimaryPart:FindFirstChild("SPTS_PN_BG").Enabled = false;
						end;
						v117:WaitForChild("ToggleBtn").Text = "Off";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v117.Name == "SettingTxt11" then
				if v115.ToggleWaterRun ~= nil then
					if v115.ToggleWaterRun == true then
						v117:WaitForChild("ToggleBtn").Text = "On";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
						local v118 = HttpService:JSONDecode(QuestData.Value);
						if v118 and v118.MainQuest and v118.MainQuest.No >= 7 and MovementSpeed.Value >= 1000 and PsychicPower.Value >= 1000 then
							local v119, v120, v121 = ipairs(l__Map__10:WaitForChild("Decorations"):WaitForChild("WaterWalkFloor"):GetChildren());
							while true do
								v119(v120, v121);
								if not v119 then
									break;
								end;
								v121 = v119;
								v120.CanCollide = true;							
							end;
						end;
					else
						v117:WaitForChild("ToggleBtn").Text = "Off";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
						local v122, v123, v124 = ipairs(l__Map__10:WaitForChild("Decorations"):WaitForChild("WaterWalkFloor"):GetChildren());
						while true do
							v122(v123, v124);
							if not v122 then
								break;
							end;
							v124 = v122;
							v123.CanCollide = false;						
						end;
					end;
				end;
			elseif v117.Name == "SettingTxt14" then
				if v115.ToggleFlight ~= nil then
					if v115.ToggleFlight == true then
						v117:WaitForChild("ToggleBtn").Text = "On";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v117:WaitForChild("ToggleBtn").Text = "Off";
						v117:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v117:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v117.Name == "SettingTxt15" then
				if v115.SelectedMS ~= nil then
					v117:WaitForChild("TextBox").Text = tostring(v115.SelectedMS);
					v4.Storage.CustomMS = v115.SelectedMS;
					if Humanoid.WalkSpeed == 0 then
						return;
					end;
					if MovementSpeed.Value <= 400 then
						local v125 = 10 + MovementSpeed.Value / 10;
					elseif MovementSpeed.Value <= 5400 then
						v125 = 46 + MovementSpeed.Value / 100;
					elseif MovementSpeed.Value <= 65400 then
						v125 = 91 + MovementSpeed.Value / 600;
					elseif MovementSpeed.Value <= 665400 then
						v125 = 170 + (MovementSpeed.Value - 5400) / 2000;
					else
						v125 = 440 + (MovementSpeed.Value - 65400) / 10000;
					end;
					if Humanoid.WalkSpeed ~= 0 and Humanoid.WalkSpeed ~= 10 then
						if Character and Character:FindFirstChild("LeftWeight1") then
							v125 = v125 / 2;
							if v125 < 4 then
								v125 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight2") then
							v125 = v125 / 10;
							if v125 < 4 then
								v125 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight3") then
							v125 = v125 / 50;
							if v125 < 4 then
								v125 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight4") then
							v125 = v125 / 100;
							if v125 < 4 then
								v125 = 1;
							end;
						end;
					end;
					if v4.Storage.CustomMS > 10 and v4.Storage.CustomMS < v125 then
						v125 = v4.Storage.CustomMS;
					end;
					if v125 > 1000 then
						v125 = 1000;
					end;
					Humanoid.WalkSpeed = v125;
				end;
			elseif v117.Name == "SettingTxt16" then
				if v115.SelectedJP ~= nil then
					v117:WaitForChild("TextBox").Text = tostring(v115.SelectedJP);
					v4.Storage.CustomJP = v115.SelectedJP;
					if Humanoid.JumpPower == 0 then
						return;
					end;
					if JumpForce.Value <= 2500 then
						local v126 = 50 + JumpForce.Value / 50;
					elseif JumpForce.Value <= 8750 then
						v126 = 65 + JumpForce.Value / 250;
					elseif JumpForce.Value <= 33750 then
						v126 = 84 + (JumpForce.Value - 750) / 500;
					elseif JumpForce.Value <= 83750 then
						v126 = 120 + (JumpForce.Value - 3750) / 1000;
					elseif JumpForce.Value <= 665000 then
						v126 = 193 + (JumpForce.Value - 65000) / 2500;
					else
						v126 = 400 + JumpForce.Value / 20000;
					end;
					if Humanoid.JumpPower ~= 0 and Humanoid.JumpPower ~= 50 then
						if Character and Character:FindFirstChild("LeftWeight1") then
							v126 = v126 / 2;
							if v126 < 50 then
								v126 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight2") then
							v126 = v126 / 5;
							if v126 < 50 then
								v126 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight3") then
							v126 = v126 / 10;
							if v126 < 50 then
								v126 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight4") then
							v126 = v126 / 20;
							if v126 < 50 then
								v126 = 1;
							end;
						end;
					end;
					if v4.Storage.CustomJP > 50 and v4.Storage.CustomJP < v126 then
						v126 = v4.Storage.CustomJP;
					end;
					if v126 > 500 then
						v126 = 500;
					end;
					Humanoid.JumpPower = v126;
				end;
			elseif v117.Name == "SettingTxt17" and v115.SelectedFS ~= nil then
				v117:WaitForChild("TextBox").Text = tostring(v115.SelectedFS);
				v4.Storage.CustomFS = v115.SelectedFS;
				if JumpForce.Value < 100000 then
					v4.Storage.FlySpeed = JumpForce.Value / 200;
				elseif JumpForce.Value < 1000000 then
					v4.Storage.FlySpeed = 400 + JumpForce.Value / 1000;
				elseif JumpForce.Value < 10000000 then
					v4.Storage.FlySpeed = 1300 + JumpForce.Value / 10000;
				else
					v4.Storage.FlySpeed = 2200 + JumpForce.Value / 100000;
				end;
				if Humanoid.JumpPower ~= 0 and Humanoid.JumpPower ~= 50 then
					if Character and Character:FindFirstChild("LeftWeight1") then
						v4.Storage.FlySpeed = v4.Storage.FlySpeed / 2;
					elseif Character and Character:FindFirstChild("LeftWeight2") then
						v4.Storage.FlySpeed = v4.Storage.FlySpeed / 5;
					elseif Character and Character:FindFirstChild("LeftWeight3") then
						v4.Storage.FlySpeed = v4.Storage.FlySpeed / 10;
					elseif Character and Character:FindFirstChild("LeftWeight4") then
						v4.Storage.FlySpeed = v4.Storage.FlySpeed / 20;
					end;
				end;
				if v4.Storage.CustomFS > 0 and v4.Storage.CustomFS < v4.Storage.FlySpeed then
					v4.Storage.FlySpeed = v4.Storage.CustomFS;
				end;
				if v4.Storage.FlySpeed > 1000 then
					v4.Storage.FlySpeed = 1000;
				end;
			end;
		end;
	end;
end);
Inventory.Changed:Connect(function(p43)
	local v127 = HttpService:JSONDecode(p43);
	if v127 and v127.FSMultiplier and v127.BTMultiplier and v127.MSMultiplier and v127.JFMultiplier and v127.PPMultiplier then
		MenuFrame:WaitForChild("InfoFrame"):WaitForChild("FSMultiplierTxt").Text = "x" .. tostring(v127.FSMultiplier);
		MenuFrame:WaitForChild("InfoFrame"):WaitForChild("BTMultiplierTxt").Text = "x" .. tostring(v127.BTMultiplier);
		MenuFrame:WaitForChild("InfoFrame"):WaitForChild("MSMultiplierTxt").Text = "x" .. tostring(v127.MSMultiplier);
		MenuFrame:WaitForChild("InfoFrame"):WaitForChild("JFMultiplierTxt").Text = "x" .. tostring(v127.JFMultiplier);
		MenuFrame:WaitForChild("InfoFrame"):WaitForChild("PPMultiplierTxt").Text = "x" .. tostring(v127.PPMultiplier);
	end;
end);
QuestData.Changed:Connect(function(p44)
	local v128 = HttpService:JSONDecode(p44);
	local v129 = HttpService:JSONDecode(Inventory.Value);
	if v128 and v129 then
		QuestDataModule.UpdateQuestDataFunc(v128, v129, u9, MenuFrame, Character, MainQuestFrame, FistStrength, BodyToughness, MovementSpeed, JumpForce, PsychicPower, VillainKilled, HeroKilled);
	end;
end);
Combat_FirstPunch = false;
CanPunch = true;
CanBeInvisible = true;
CanSpherePunch = true;
CanSoulReap = true;
CanUseDevilFlame = true;
CanTeleport = true;
CanBulletPunch = true;
Invisible = false;
CanConcealAura = true;
CanSoulAttack = true;
CanKillingIntent = true;
SoulAttacking = false;
local u20 = nil;
local function v130()
	local v131 = require(player:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule"):WaitForChild("ControlModule"));
	local l__JumpButton__132 = player:WaitForChild("PlayerGui"):WaitForChild("TouchGui"):WaitForChild("TouchControlFrame"):FindFirstChild("JumpButton");
	if not l__JumpButton__132 then
		u20 = true;
		return;
	end;
	l__JumpButton__132.MouseButton1Down:Connect(function()
		onJumpRequest();
	end);
	local u21 = nil;
	local u22 = nil;
	local u23 = nil;
	local u24 = nil;
	coroutine.resume(coroutine.create(function()
		while wait(0.1) do
			local v133 = v131:GetMoveVector();
			if v133.X == 0 and v133.Z == 0 then
				u18 = 0;
				dUp = true;
				if Flying and u21 then
					u21 = false;
					StopAnim(script:WaitForChild("FlyRightAnim"));
				end;
				u18 = 0;
				aUp = true;
				if Flying and u22 then
					u22 = false;
					StopAnim(script:WaitForChild("FlyLeftAnim"));
				end;
				u19 = 0;
				wUp = true;
				if Flying and u23 then
					u23 = false;
					StopAnim(script:WaitForChild("FlyForwardAnim"));
				end;
				u19 = 0;
				sUp = true;
				if Flying and u24 then
					u24 = false;
					StopAnim(script:WaitForChild("FlyBackAnim"));
				end;
			elseif math.abs(v133.X) < math.abs(v133.Z) then
				u18 = 0;
				dUp = true;
				if Flying and u21 then
					u21 = false;
					StopAnim(script:WaitForChild("FlyRightAnim"));
				end;
				u18 = 0;
				aUp = true;
				if Flying and u22 then
					u22 = false;
					StopAnim(script:WaitForChild("FlyLeftAnim"));
				end;
				if v133.Z < 0 then
					u19 = -1;
					wUp = false;
					if Flying and not u23 then
						u23 = true;
						PlayAnim(script:WaitForChild("FlyForwardAnim"));
					end;
				else
					if sUp then
						u19 = 0;
					end;
					wUp = true;
					if Flying and u23 then
						u23 = false;
						StopAnim(script:WaitForChild("FlyForwardAnim"));
					end;
				end;
				if v133.Z > 0 then
					u19 = 1;
					sUp = false;
					if Flying and not u24 then
						u24 = true;
						PlayAnim(script:WaitForChild("FlyBackAnim"));
					end;
				else
					if wUp then
						u19 = 0;
					end;
					sUp = true;
					if Flying and u24 then
						u24 = false;
						StopAnim(script:WaitForChild("FlyBackAnim"));
					end;
				end;
			else
				u19 = 0;
				wUp = true;
				if Flying and u23 then
					u23 = false;
					StopAnim(script:WaitForChild("FlyForwardAnim"));
				end;
				u19 = 0;
				sUp = true;
				if Flying and u24 then
					u24 = false;
					StopAnim(script:WaitForChild("FlyBackAnim"));
				end;
				if v133.X > 0 then
					u18 = 1;
					dUp = false;
					if Flying and not u21 then
						u21 = true;
						PlayAnim(script:WaitForChild("FlyRightAnim"));
					end;
				else
					if aUp then
						u18 = 0;
					end;
					dUp = true;
					if Flying and u21 then
						u21 = false;
						StopAnim(script:WaitForChild("FlyRightAnim"));
					end;
				end;
				if v133.X < 0 then
					u18 = -1;
					aUp = false;
					if Flying and not u22 then
						u22 = true;
						PlayAnim(script:WaitForChild("FlyLeftAnim"));
					end;
				else
					if dUp then
						u18 = 0;
					end;
					aUp = true;
					if Flying and u22 then
						u22 = false;
						StopAnim(script:WaitForChild("FlyLeftAnim"));
					end;
				end;
			end;		
		end;
	end));
end;
if not UserInputService.MouseEnabled and UserInputService.TouchEnabled then
	v130();
	if ScreenGui.AbsoluteSize.Y < 500 then
		skillHotkey_Frame:WaitForChild("UIListLayout").Padding = UDim.new(0.07, 0);
		local v134 = 2;
		skillHotkey_Frame.Visible = true;
		MenuFrame.Position = UDim2.new(0.5, 0, 0.15, 0);
		MenuFrame.Size = UDim2.new(0.4, 0, 0.625, 0);
	else
		skillHotkey_Frame:WaitForChild("UIListLayout").Padding = UDim.new(0.085, 0);
		skillHotkey_Frame.Position = UDim2.new(0.5, 0, 0.85, 0);
		skillHotkey_Frame.Size = UDim2.new(0.5, 0, 0.05, 0);
		v134 = 4;
		skillHotkey_Frame.Visible = true;
		MenuFrame.Size = UDim2.new(0.45, 0, 0.5, 0);
	end;
	desktop = false;
	UserInputService.TouchStarted:Connect(function(p45, p46)
		if not p46 and not TalkingOnQuest and Character and Humanoid and not (Humanoid.Health <= 0) and Character:IsDescendantOf(workspace) and Humanoid:GetState() ~= Enum.HumanoidStateType.Dead then
			if u12 ~= 0 then
				if u12 == 3 then
					v81();
					return;
				elseif u12 == 4 then
					v72();
					return;
				elseif u12 == 5 then
					v69();
					return;
				else
					if u12 == 6 then
						v84();
					end;
					return;
				end;
			else
				return;
			end;
		end;
	end);
	UserInputService.TouchEnded:Connect(function(p47, p48)
		if SoulAttacking then
			RemoteEvent:FireServer({ "Skill_SoulAttack_End" });
			game:GetService("RunService"):UnbindFromRenderStep("TargetLock");
			SoulAttack_Target = nil;
			SoulAttacking = false;
		end;
	end);
	local v135, v136, v137 = ipairs(skillHotkey_Frame:GetChildren());
	while true do
		v135(v136, v137);
		if not v135 then
			break;
		end;
		v137 = v135;
		if v136:IsA("TextButton") then
			v136.BorderSizePixel = v134;
			v136.Activated:Connect(function()
				if not TalkingOnQuest and Character and Humanoid and not (Humanoid.Health <= 0) and Character:IsDescendantOf(workspace) and Humanoid:GetState() ~= Enum.HumanoidStateType.Dead then
					if v136.Name == "TxtBtn_0" then
						v65();
						return;
					elseif v136.Name == "TxtBtn_1" then
						v75();
						return;
					elseif v136.Name == "TxtBtn_2" then
						v78();
						return;
					elseif v136.Name == "TxtBtn_3" then
						if u12 ~= 3 then
							u12 = 3;
							skillHotkey_Frame.TxtBtn_3.BorderColor3 = Color3.fromRGB(0, 0, 0);
							skillHotkey_Frame.TxtBtn_3.Info_Txt.TextColor3 = Color3.fromRGB(0, 0, 0);
							skillHotkey_Frame.TxtBtn_4.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_4.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_5.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_5.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_6.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_6.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							return;
						else
							u12 = 0;
							skillHotkey_Frame.TxtBtn_3.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_3.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_4.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_4.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_5.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_5.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_6.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_6.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							return;
						end;
					elseif v136.Name == "TxtBtn_4" then
						if u12 ~= 4 then
							u12 = 4;
							skillHotkey_Frame.TxtBtn_4.BorderColor3 = Color3.fromRGB(0, 0, 0);
							skillHotkey_Frame.TxtBtn_4.Info_Txt.TextColor3 = Color3.fromRGB(0, 0, 0);
							skillHotkey_Frame.TxtBtn_3.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_3.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_5.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_5.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_6.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_6.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							return;
						else
							u12 = 0;
							skillHotkey_Frame.TxtBtn_3.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_3.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_4.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_4.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_5.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_5.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_6.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_6.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							return;
						end;
					elseif v136.Name == "TxtBtn_5" then
						if u12 ~= 5 then
							u12 = 5;
							skillHotkey_Frame.TxtBtn_5.BorderColor3 = Color3.fromRGB(0, 0, 0);
							skillHotkey_Frame.TxtBtn_5.Info_Txt.TextColor3 = Color3.fromRGB(0, 0, 0);
							skillHotkey_Frame.TxtBtn_3.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_3.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_4.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_4.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_6.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_6.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							return;
						else
							u12 = 0;
							skillHotkey_Frame.TxtBtn_3.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_3.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_4.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_4.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_5.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_5.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_6.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_6.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							return;
						end;
					elseif v136.Name == "TxtBtn_6" then
						if u12 ~= 6 then
							u12 = 6;
							skillHotkey_Frame.TxtBtn_6.BorderColor3 = Color3.fromRGB(0, 0, 0);
							skillHotkey_Frame.TxtBtn_6.Info_Txt.TextColor3 = Color3.fromRGB(0, 0, 0);
							skillHotkey_Frame.TxtBtn_3.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_3.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_4.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_4.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_5.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_5.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							return;
						else
							u12 = 0;
							skillHotkey_Frame.TxtBtn_3.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_3.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_4.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_4.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_5.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_5.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							skillHotkey_Frame.TxtBtn_6.BorderColor3 = Color3.fromRGB(255, 206, 128);
							skillHotkey_Frame.TxtBtn_6.Info_Txt.TextColor3 = Color3.fromRGB(255, 155, 0);
							return;
						end;
					elseif v136.Name == "TxtBtn_7" then
						v88();
						return;
					else
						if v136.Name == "TxtBtn_8" then
							v91();
						end;
						return;
					end;
				end;
			end);
		end;	
	end;
	skillHotkey_Frame.Visible = true;
else
	UserInputService.InputBegan:Connect(function(p49, p50)
		if not p50 then
			local l__KeyCode__138 = p49.KeyCode;
			if l__KeyCode__138 == Enum.KeyCode.W then
				u19 = -1;
				wUp = false;
				if Flying then
					PlayAnim(script:WaitForChild("FlyForwardAnim"));
				end;
			elseif l__KeyCode__138 == Enum.KeyCode.A then
				u18 = -1;
				aUp = false;
				if Flying then
					PlayAnim(script:WaitForChild("FlyLeftAnim"));
				end;
			elseif l__KeyCode__138 == Enum.KeyCode.S then
				u19 = 1;
				sUp = false;
				if Flying then
					PlayAnim(script:WaitForChild("FlyBackAnim"));
				end;
			elseif l__KeyCode__138 == Enum.KeyCode.D then
				u18 = 1;
				dUp = false;
				if Flying then
					PlayAnim(script:WaitForChild("FlyRightAnim"));
				end;
			elseif l__KeyCode__138 == Enum.KeyCode.E then
				u17 = 1;
				eUp = false;
				if Flying then
					PlayAnim(script:WaitForChild("FlyUpAnim"));
				end;
			elseif l__KeyCode__138 == Enum.KeyCode.Q then
				u17 = -1;
				qUp = false;
				if Flying then
					PlayAnim(script:WaitForChild("FlyDownAnim"));
				end;
			end;
			if not TalkingOnQuest then
				if not Character or not Humanoid or Humanoid.Health <= 0 or not Character:IsDescendantOf(workspace) or Humanoid:GetState() == Enum.HumanoidStateType.Dead then
					return;
				else
					if l__KeyCode__138 == Enum.KeyCode.Space then
						onJumpRequest();
						return;
					end;
					if l__KeyCode__138 == Enum.KeyCode.LeftControl then
						v65();
						return;
					end;
					if l__KeyCode__138 == Enum.KeyCode.F then
						v69();
						return;
					end;
					if l__KeyCode__138 == Enum.KeyCode.V then
						v72();
						return;
					end;
					if l__KeyCode__138 == Enum.KeyCode.C then
						v75();
						return;
					end;
					if l__KeyCode__138 == Enum.KeyCode.T then
						v78();
						return;
					end;
					if l__KeyCode__138 == Enum.KeyCode.R then
						v81();
						return;
					end;
					if l__KeyCode__138 == Enum.KeyCode.B then
						v84();
						return;
					end;
					if l__KeyCode__138 == Enum.KeyCode.G then
						return;
					end;
					if l__KeyCode__138 == Enum.KeyCode.M then
						MenuOpenFrameFunc(MenuFrame:WaitForChild("InfoFrame"));
						OpenOrCloseGuiFunc(MenuFrame);
						return;
					end;
					if l__KeyCode__138 == Enum.KeyCode.N then
						return;
					end;
					if l__KeyCode__138 == Enum.KeyCode.Z then
						v91();
						return;
					end;
					if l__KeyCode__138 == Enum.KeyCode.X then
						v88();
						return;
					end;
				end;
			elseif l__KeyCode__138 == Enum.KeyCode.Space then
				QuestTalkFunc();
			end;
		end;
	end);
	UserInputService.InputEnded:Connect(function(p51, p52)
		if not p52 then
			local l__KeyCode__139 = p51.KeyCode;
			if l__KeyCode__139 == Enum.KeyCode.W then
				if sUp then
					u19 = 0;
				end;
				wUp = true;
				if Flying then
					StopAnim(script:WaitForChild("FlyForwardAnim"));
				end;
			elseif l__KeyCode__139 == Enum.KeyCode.A then
				if dUp then
					u18 = 0;
				end;
				aUp = true;
				if Flying then
					StopAnim(script:WaitForChild("FlyLeftAnim"));
				end;
			elseif l__KeyCode__139 == Enum.KeyCode.S then
				if wUp then
					u19 = 0;
				end;
				sUp = true;
				if Flying then
					StopAnim(script:WaitForChild("FlyBackAnim"));
				end;
			elseif l__KeyCode__139 == Enum.KeyCode.D then
				if aUp then
					u18 = 0;
				end;
				dUp = true;
				if Flying then
					StopAnim(script:WaitForChild("FlyRightAnim"));
				end;
			elseif l__KeyCode__139 == Enum.KeyCode.E then
				if qUp then
					u17 = 0;
				end;
				eUp = true;
				if Flying then
					StopAnim(script:WaitForChild("FlyUpAnim"));
				end;
			elseif l__KeyCode__139 == Enum.KeyCode.Q then
				if eUp then
					u17 = 0;
				end;
				qUp = true;
				if Flying then
					StopAnim(script:WaitForChild("FlyDownAnim"));
				end;
			end;
		end;
		if p51.KeyCode == Enum.KeyCode.B and SoulAttacking then
			RemoteEvent:FireServer({ "Skill_SoulAttack_End" });
			game:GetService("RunService"):UnbindFromRenderStep("TargetLock");
			SoulAttack_Target = nil;
			SoulAttacking = false;
		end;
	end);
end;
local u25 = false;
IntroGui:WaitForChild("PlayBtn").MouseButton1Click:Connect(function()
	if IntroGui:WaitForChild("PlayBtn").BackgroundTransparency == 0 and IntroGui:WaitForChild("PlayBtn").TextTransparency == 0 then
		local l__Blur__140 = Lighting:WaitForChild("Blur");
		if not u25 then
			u25 = true;
			spawn(function()
				for v141 = 0, 20 do
					wait(0.05);
					BackgroundSound.Volume = 0.2 - 0.01 * (v141 + 1);
				end;
				BackgroundSound:Stop();
				if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt6"):WaitForChild("ToggleBtn").Text, "Off") then
					BackgroundSound.Volume = 0;
					return;
				end;
				BackgroundSound.Volume = 0.2;
			end);
		end;
		for v142 = 0, 20 do
			wait(0.05);
			for v143, v144 in pairs(IntroGui:GetChildren()) do
				if v144.Name == "PlayBtn" then
					v144.TextTransparency = v144.TextTransparency + 0.05;
					v144.BackgroundTransparency = v144.BackgroundTransparency + 0.05;
				elseif v144.Name == "VersionTxt" then
					v144.TextTransparency = v144.TextTransparency + 0.05;
				elseif v144.Name == "HeaderTxt" then
					v144.TextTransparency = v144.TextTransparency + 0.05;
					v144.TextStrokeTransparency = v144.TextStrokeTransparency + 0.05;
					v144.UIStroke.Transparency = v144.UIStroke.Transparency + 0.05 <= 1 and v144.UIStroke.Transparency + 0.05 or 1;
				end;
			end;
			l__Blur__140.Size = l__Blur__140.Size - 0.5;
		end;
		for v145, v146 in pairs(IntroGui:GetChildren()) do
			if v146.Name == "PlayBtn" then
				v146.TextTransparency = 1;
				v146.BackgroundTransparency = 1;
			elseif v146.Name == "VersionTxt" then
				v146.TextTransparency = 1;
			elseif v146.Name == "HeaderTxt" then
				v146.TextTransparency = 1;
				v146.TextStrokeTransparency = 1;
				v146.UIStroke.Transparency = 1;
			end;
		end;
		l__Blur__140.Size = 0;
		l__Blur__140.Enabled = false;
		IntroGui.Enabled = false;
		ScreenGui.Enabled = true;
		RemoteEvent:FireServer({ "Respawn" });
	end;
end);
for v147, v148 in pairs(ScreenGui:GetChildren()) do
	if v148.Name == "MenuBtn" then
		v148.MouseButton1Click:Connect(function()
			MenuOpenFrameFunc(MenuFrame:WaitForChild("InfoFrame"));
			OpenOrCloseGuiFunc(MenuFrame);
		end);
	elseif v148.Name == "WeightFrame" then
		for v149, v150 in pairs(v148:GetChildren()) do
			if v150.Name == "TxtBtn1" then
				v150.MouseButton1Click:Connect(function()
					if Character and (not (not Character:FindFirstChild("LeftWeight1")) or not (not Character:FindFirstChild("LeftWeight2")) or not (not Character:FindFirstChild("LeftWeight3")) or Character:FindFirstChild("LeftWeight4")) then
						RemoteEvent:FireServer({ "Weight", "Unequip" });
						EquipSound:Play();
						Humanoid:UnequipTools();
					end;
				end);
			elseif v150.Name == "TxtBtn2" then
				v150.MouseButton1Click:Connect(function()
					if Character and not Character:FindFirstChild("LeftWeight1") then
						RemoteEvent:FireServer({ "Weight", "Weight1" });
						EquipSound:Play();
						Humanoid:UnequipTools();
					end;
				end);
			elseif v150.Name == "TxtBtn3" then
				v150.MouseButton1Click:Connect(function()
					if Character and not Character:FindFirstChild("LeftWeight2") then
						RemoteEvent:FireServer({ "Weight", "Weight2" });
						EquipSound:Play();
						Humanoid:UnequipTools();
					end;
				end);
			elseif v150.Name == "TxtBtn4" then
				v150.MouseButton1Click:Connect(function()
					if Character and not Character:FindFirstChild("LeftWeight3") then
						RemoteEvent:FireServer({ "Weight", "Weight3" });
						EquipSound:Play();
						Humanoid:UnequipTools();
					end;
				end);
			elseif v150.Name == "TxtBtn5" then
				v150.MouseButton1Click:Connect(function()
					if Character and not Character:FindFirstChild("LeftWeight4") then
						RemoteEvent:FireServer({ "Weight", "Weight4" });
						EquipSound:Play();
						Humanoid:UnequipTools();
					end;
				end);
			end;
		end;
	elseif v148.Name == "CurrentGemImgBtn" then
		v148.MouseButton1Click:Connect(function()
			MenuFrame.Visible = true;
			MenuOpenFrameFunc(MenuFrame:WaitForChild("SpecialFrame"));
		end);
		v148:WaitForChild("AmountTxtBtn").MouseButton1Click:Connect(function()
			MenuFrame.Visible = true;
			MenuOpenFrameFunc(MenuFrame:WaitForChild("SpecialFrame"));
		end);
		v148.MouseEnter:Connect(function()
			v148:WaitForChild("InfoTxt").Visible = true;
		end);
		v148.MouseLeave:Connect(function()
			v148:WaitForChild("InfoTxt").Visible = false;
		end);
		v148:WaitForChild("AmountTxtBtn").MouseEnter:Connect(function()
			v148:WaitForChild("InfoTxt").Visible = true;
		end);
		v148:WaitForChild("AmountTxtBtn").MouseLeave:Connect(function()
			v148:WaitForChild("InfoTxt").Visible = false;
		end);
	elseif v148.Name == "MenuFrame" then
		for v151, v152 in pairs(v148:GetChildren()) do
			if v152.Name == "InfoBtn" then
				v152.MouseButton1Click:Connect(function()
					MenuOpenFrameFunc(v148.InfoFrame);
				end);
			elseif v152.Name == "SkilBtn" then
				v152.MouseButton1Click:Connect(function()
					MenuOpenFrameFunc(v148.SkillFrame);
				end);
			elseif v152.Name == "GangBtn" then
				v152.MouseButton1Click:Connect(function()
					MenuOpenFrameFunc(v148.GangFrame);
				end);
			elseif v152.Name == "SpecialBtn" then
				v152.MouseButton1Click:Connect(function()
					MenuOpenFrameFunc(v148.SpecialFrame);
				end);
			elseif v152.Name == "SettingBtn" then
				v152.MouseButton1Click:Connect(function()
					MenuOpenFrameFunc(v148.SettingFrame);
				end);
			elseif v152.Name == "CloseBtn" then
				v152.MouseButton1Click:Connect(function()
					MenuFrame.Visible = false;
				end);
			elseif v152.Name == "SpecialFrame" then
				for v153, v154 in pairs(v152:GetChildren()) do
					if v154.Name == "BuyBtn1" then
						v154.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							MarketplaceService:PromptProductPurchase(player, 1311684286);
						end);
					elseif v154.Name == "BuyBtn2" then
						v154.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							MarketplaceService:PromptProductPurchase(player, 1311684332);
						end);
					elseif v154.Name == "BuyBtn3" then
						v154.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							MarketplaceService:PromptProductPurchase(player, 1311684357);
						end);
					elseif v154.Name == "BuyBtn4" then
						v154.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							MarketplaceService:PromptProductPurchase(player, 1311684385);
						end);
					elseif v154.Name == "BuyBtn5" then
						v154.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							MarketplaceService:PromptProductPurchase(player, 1311684422);
						end);
					elseif v154.Name == "BuyBtn6" then
						v154.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							MarketplaceService:PromptProductPurchase(player, 1311684466);
						end);
					end;
				end;
			elseif v152.Name == "SettingFrame" then
				for v155, v156 in pairs(v152:GetChildren()) do
					if string.find(v156.Name, "SettingTxt") and v156:FindFirstChild("ToggleBtn") then
						v156:WaitForChild("ToggleBtn").MouseButton1Click:Connect(function()
							if v156.Name == "SettingTxt10" then
								return;
							end;
							Confirm2Sound:Play();
							if v156:WaitForChild("ToggleBtn").Text == "On" then
								v156:WaitForChild("ToggleBtn").Text = "Off";
								v156:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
								v156:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
								if v156.Name == "SettingTxt0" then
									RemoteEvent:FireServer({ "Setting", "OnlyDmgVillain", false });
									return;
								elseif v156.Name == "SettingTxt1" then
									RemoteEvent:FireServer({ "Setting", "FSXpTxt", false });
									return;
								elseif v156.Name == "SettingTxt2" then
									RemoteEvent:FireServer({ "Setting", "BTXpTxt", false });
									return;
								elseif v156.Name == "SettingTxt3" then
									RemoteEvent:FireServer({ "Setting", "MSXpTxt", false });
									return;
								elseif v156.Name == "SettingTxt4" then
									RemoteEvent:FireServer({ "Setting", "JFXpTxt", false });
									return;
								elseif v156.Name == "SettingTxt5" then
									RemoteEvent:FireServer({ "Setting", "PPXpTxt", false });
									return;
								elseif v156.Name == "SettingTxt6" then
									RemoteEvent:FireServer({ "Setting", "BGMusic", false });
									return;
								elseif v156.Name == "SettingTxt7" then
									RemoteEvent:FireServer({ "Setting", "DmgToOpp", false });
									return;
								elseif v156.Name == "SettingTxt8" then
									RemoteEvent:FireServer({ "Setting", "DmgToSelf", false });
									return;
								elseif v156.Name == "SettingTxt9" then
									RemoteEvent:FireServer({ "Setting", "ShowNameTag", false });
									return;
								elseif v156.Name == "SettingTxt11" then
									RemoteEvent:FireServer({ "Setting", "ToggleWaterRun", false });
									return;
								elseif v156.Name == "SettingTxt14" then
									RemoteEvent:FireServer({ "Setting", "ToggleFlight", false });
									return;
								else
									return;
								end;
							else
								v156:WaitForChild("ToggleBtn").Text = "On";
								v156:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
								v156:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
								if v156.Name == "SettingTxt0" then
									RemoteEvent:FireServer({ "Setting", "OnlyDmgVillain", true });
									return;
								end;
								if v156.Name == "SettingTxt1" then
									RemoteEvent:FireServer({ "Setting", "FSXpTxt", true });
									return;
								end;
								if v156.Name == "SettingTxt2" then
									RemoteEvent:FireServer({ "Setting", "BTXpTxt", true });
									return;
								end;
								if v156.Name == "SettingTxt3" then
									RemoteEvent:FireServer({ "Setting", "MSXpTxt", true });
									return;
								end;
								if v156.Name == "SettingTxt4" then
									RemoteEvent:FireServer({ "Setting", "JFXpTxt", true });
									return;
								end;
								if v156.Name == "SettingTxt5" then
									RemoteEvent:FireServer({ "Setting", "PPXpTxt", true });
									return;
								end;
								if v156.Name == "SettingTxt6" then
									RemoteEvent:FireServer({ "Setting", "BGMusic", true });
									return;
								end;
								if v156.Name == "SettingTxt7" then
									RemoteEvent:FireServer({ "Setting", "DmgToOpp", true });
									return;
								end;
								if v156.Name == "SettingTxt8" then
									RemoteEvent:FireServer({ "Setting", "DmgToSelf", true });
									return;
								end;
								if v156.Name == "SettingTxt9" then
									RemoteEvent:FireServer({ "Setting", "ShowNameTag", true });
									return;
								end;
								if v156.Name ~= "SettingTxt11" then
									if v156.Name == "SettingTxt14" then
										RemoteEvent:FireServer({ "Setting", "ToggleFlight", true });
									end;
									return;
								end;
							end;
							RemoteEvent:FireServer({ "Setting", "ToggleWaterRun", true });
						end);
					elseif v156.Name == "SettingTxt15" then
						v156:WaitForChild("TextBox").FocusLost:Connect(function()
							local v157 = tonumber(v156:WaitForChild("TextBox").Text);
							if typeof(v157) ~= "number" or not (v157 > 10) then
								if typeof(v157) == "number" and v157 == 0 then
									v156:WaitForChild("TextBox").Text = 0;
									RemoteEvent:FireServer({ "Setting", "SelectedMS", 0 });
									Confirm2Sound:Play();
									return;
								elseif typeof(v157) == "number" and v157 <= 10 then
									v156:WaitForChild("TextBox").Text = 11;
									RemoteEvent:FireServer({ "Setting", "SelectedMS", 11 });
									Confirm2Sound:Play();
									return;
								else
									local v158 = HttpService:JSONDecode(Setting.Value);
									if v158 and v158.SelectedMS then
										v156:WaitForChild("TextBox").Text = tostring(v158.SelectedMS);
										ErrorSound:Play();
									end;
									return;
								end;
							end;
							if MovementSpeed.Value <= 400 then
								local v159 = 10 + MovementSpeed.Value / 10;
							elseif MovementSpeed.Value <= 5400 then
								v159 = 46 + MovementSpeed.Value / 100;
							elseif MovementSpeed.Value <= 65400 then
								v159 = 91 + MovementSpeed.Value / 600;
							elseif MovementSpeed.Value <= 665400 then
								v159 = 170 + (MovementSpeed.Value - 5400) / 2000;
							else
								v159 = 440 + (MovementSpeed.Value - 65400) / 10000;
							end;
							if v159 > 1000 then
								v159 = 1000;
							end;
							if v157 <= v159 then
								v156:WaitForChild("TextBox").Text = math.floor(v157);
								RemoteEvent:FireServer({ "Setting", "SelectedMS", math.floor(v157) });
								Confirm2Sound:Play();
								return;
							end;
							v156:WaitForChild("TextBox").Text = math.floor(v159);
							RemoteEvent:FireServer({ "Setting", "SelectedMS", math.floor(v159) });
							Confirm2Sound:Play();
						end);
					elseif v156.Name == "SettingTxt16" then
						v156:WaitForChild("TextBox").FocusLost:Connect(function()
							local v160 = tonumber(v156:WaitForChild("TextBox").Text);
							if typeof(v160) ~= "number" or not (v160 > 50) then
								if typeof(v160) == "number" and v160 == 0 then
									v156:WaitForChild("TextBox").Text = 0;
									RemoteEvent:FireServer({ "Setting", "SelectedJP", 0 });
									Confirm2Sound:Play();
									return;
								elseif typeof(v160) == "number" and v160 <= 50 then
									v156:WaitForChild("TextBox").Text = 51;
									RemoteEvent:FireServer({ "Setting", "SelectedJP", 51 });
									Confirm2Sound:Play();
									return;
								else
									local v161 = HttpService:JSONDecode(Setting.Value);
									if v161 and v161.SelectedJP then
										v156:WaitForChild("TextBox").Text = tostring(v161.SelectedJP);
										ErrorSound:Play();
									end;
									return;
								end;
							end;
							if JumpForce.Value <= 2500 then
								local v162 = 50 + JumpForce.Value / 50;
							elseif JumpForce.Value <= 8750 then
								v162 = 65 + JumpForce.Value / 250;
							elseif JumpForce.Value <= 33750 then
								v162 = 84 + (JumpForce.Value - 750) / 500;
							elseif JumpForce.Value <= 83750 then
								v162 = 120 + (JumpForce.Value - 3750) / 1000;
							elseif JumpForce.Value <= 665000 then
								v162 = 193 + (JumpForce.Value - 65000) / 2500;
							else
								v162 = 400 + JumpForce.Value / 20000;
							end;
							if v162 > 500 then
								v162 = 500;
							end;
							if v160 <= v162 then
								v156:WaitForChild("TextBox").Text = math.floor(v160);
								RemoteEvent:FireServer({ "Setting", "SelectedJP", math.floor(v160) });
								Confirm2Sound:Play();
								return;
							end;
							v156:WaitForChild("TextBox").Text = math.floor(v162);
							RemoteEvent:FireServer({ "Setting", "SelectedJP", math.floor(v162) });
							Confirm2Sound:Play();
						end);
					elseif v156.Name == "SettingTxt17" then
						v156:WaitForChild("TextBox").FocusLost:Connect(function()
							local v163 = tonumber(v156:WaitForChild("TextBox").Text);
							if typeof(v163) ~= "number" or not (v163 > 0) then
								if typeof(v163) == "number" and v163 == 0 then
									v156:WaitForChild("TextBox").Text = 0;
									RemoteEvent:FireServer({ "Setting", "SelectedFS", 0 });
									Confirm2Sound:Play();
									return;
								elseif typeof(v163) == "number" and v163 < 1 then
									v156:WaitForChild("TextBox").Text = 1;
									RemoteEvent:FireServer({ "Setting", "SelectedFS", 1 });
									Confirm2Sound:Play();
									return;
								else
									local v164 = HttpService:JSONDecode(Setting.Value);
									if v164 and v164.SelectedFS then
										v156:WaitForChild("TextBox").Text = tostring(v164.SelectedFS);
										ErrorSound:Play();
									end;
									return;
								end;
							end;
							if JumpForce.Value < 100000 then
								local v165 = JumpForce.Value / 200;
							elseif JumpForce.Value < 1000000 then
								v165 = 400 + JumpForce.Value / 1000;
							elseif JumpForce.Value < 10000000 then
								v165 = 1300 + JumpForce.Value / 10000;
							else
								v165 = 2200 + JumpForce.Value / 100000;
							end;
							if v165 > 1000 then
								v165 = 1000;
							end;
							if v163 <= v165 then
								v156:WaitForChild("TextBox").Text = math.floor(v163);
								RemoteEvent:FireServer({ "Setting", "SelectedFS", math.floor(v163) });
								Confirm2Sound:Play();
								return;
							end;
							v156:WaitForChild("TextBox").Text = math.floor(v165);
							RemoteEvent:FireServer({ "Setting", "SelectedFS", math.floor(v165) });
							Confirm2Sound:Play();
						end);
					end;
				end;
			elseif v152.Name == "InfoFrame" then
				for v166, v167 in pairs(v152:GetChildren()) do
					if v167.Name == "UpgradeStatFrame" then
						v167:WaitForChild("CancelTxtBtn").MouseButton1Click:Connect(function()
							v167.Visible = false;
						end);
						v167:WaitForChild("ConfirmTxtBtn").MouseButton1Click:Connect(function()
							if not (tonumber(v167:WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text) <= Token.Value) then
								ErrorSound:Play();
								return;
							end;
							Click2Sound:Play();
							RemoteEvent:FireServer({ "StatMultiplier", tostring(v167:WaitForChild("Stat").Value) });
							v167.Visible = false;
						end);
					elseif v167.Name == "FSUpgradeImgBtn" then
						v167.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							v152:WaitForChild("UpgradeStatFrame"):WaitForChild("Stat").Value = "FS";
							v152:WaitForChild("UpgradeStatFrame"):WaitForChild("Txt1").Text = "Upgrade Fist Strength Xp Multiplier to";
							local v168 = HttpService:JSONDecode(Inventory.Value);
							if v168 and v168.FSMultiplier then
								if v168.FSMultiplier == 1 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100";
								elseif v168.FSMultiplier == 2 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200";
								elseif v168.FSMultiplier == 4 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500";
								elseif v168.FSMultiplier == 8 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000";
								elseif v168.FSMultiplier == 16 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000";
								elseif v168.FSMultiplier == 32 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000";
								elseif v168.FSMultiplier == 64 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000";
								elseif v168.FSMultiplier == 128 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "15000";
								elseif v168.FSMultiplier == 256 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000";
								elseif v168.FSMultiplier == 512 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000";
								elseif v168.FSMultiplier == 1024 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000";
								elseif v168.FSMultiplier == 2048 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200000";
								elseif v168.FSMultiplier == 4096 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500000";
								elseif v168.FSMultiplier == 8192 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000000";
								elseif v168.FSMultiplier == 16384 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000000";
								elseif v168.FSMultiplier == 32768 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000000";
								elseif v168.FSMultiplier == 65536 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000000";
								elseif v168.FSMultiplier == 131072 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000000";
								elseif v168.FSMultiplier == 262144 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000000";
								elseif v168.FSMultiplier == 524288 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000000";
								elseif v168.FSMultiplier == 1048576 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200000000";
								elseif v168.FSMultiplier == 2097152 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500000000";
								elseif v168.FSMultiplier == 4194304 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000000000";
								elseif v168.FSMultiplier == 8388608 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000000000";
								elseif v168.FSMultiplier == 16777216 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000000000";
								elseif v168.FSMultiplier == 33554432 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000000000";
								end;
								v152:WaitForChild("UpgradeStatFrame"):WaitForChild("MultiplierTxt").Text = "x" .. tostring(v168.FSMultiplier * 2);
							end;
							v152:WaitForChild("UpgradeStatFrame").Visible = true;
						end);
					elseif v167.Name == "BTUpgradeImgBtn" then
						v167.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							v152:WaitForChild("UpgradeStatFrame"):WaitForChild("Stat").Value = "BT";
							v152:WaitForChild("UpgradeStatFrame"):WaitForChild("Txt1").Text = "Upgrade Body Toughness Xp Multiplier to";
							local v169 = HttpService:JSONDecode(Inventory.Value);
							if v169 and v169.BTMultiplier then
								if v169.BTMultiplier == 1 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100";
								elseif v169.BTMultiplier == 2 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200";
								elseif v169.BTMultiplier == 4 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500";
								elseif v169.BTMultiplier == 8 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000";
								elseif v169.BTMultiplier == 16 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000";
								elseif v169.BTMultiplier == 32 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000";
								elseif v169.BTMultiplier == 64 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000";
								elseif v169.BTMultiplier == 128 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "15000";
								elseif v169.BTMultiplier == 256 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000";
								elseif v169.BTMultiplier == 512 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000";
								elseif v169.BTMultiplier == 1024 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000";
								elseif v169.BTMultiplier == 2048 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200000";
								elseif v169.BTMultiplier == 4096 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500000";
								elseif v169.BTMultiplier == 8192 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000000";
								elseif v169.BTMultiplier == 16384 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000000";
								elseif v169.BTMultiplier == 32768 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000000";
								elseif v169.BTMultiplier == 65536 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000000";
								elseif v169.BTMultiplier == 131072 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000000";
								elseif v169.BTMultiplier == 262144 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000000";
								elseif v169.BTMultiplier == 524288 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000000";
								elseif v169.FSMultiplier == 1048576 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200000000";
								elseif v169.FSMultiplier == 2097152 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500000000";
								elseif v169.FSMultiplier == 4194304 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000000000";
								elseif v169.FSMultiplier == 8388608 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000000000";
								elseif v169.FSMultiplier == 16777216 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000000000";
								elseif v169.FSMultiplier == 33554432 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000000000";
								end;
								v152:WaitForChild("UpgradeStatFrame"):WaitForChild("MultiplierTxt").Text = "x" .. tostring(v169.BTMultiplier * 2);
							end;
							v152:WaitForChild("UpgradeStatFrame").Visible = true;
						end);
					elseif v167.Name == "MSUpgradeImgBtn" then
						v167.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							v152:WaitForChild("UpgradeStatFrame"):WaitForChild("Stat").Value = "MS";
							v152:WaitForChild("UpgradeStatFrame"):WaitForChild("Txt1").Text = "Upgrade Movement Speed Xp Multiplier to";
							local v170 = HttpService:JSONDecode(Inventory.Value);
							if v170 and v170.MSMultiplier then
								if v170.MSMultiplier == 1 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100";
								elseif v170.MSMultiplier == 2 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200";
								elseif v170.MSMultiplier == 4 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500";
								elseif v170.MSMultiplier == 8 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000";
								elseif v170.MSMultiplier == 16 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000";
								elseif v170.MSMultiplier == 32 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000";
								elseif v170.MSMultiplier == 64 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000";
								elseif v170.MSMultiplier == 128 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "15000";
								elseif v170.MSMultiplier == 256 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000";
								elseif v170.MSMultiplier == 512 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000";
								elseif v170.MSMultiplier == 1024 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000";
								elseif v170.MSMultiplier == 2048 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200000";
								elseif v170.MSMultiplier == 4096 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500000";
								elseif v170.MSMultiplier == 8192 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000000";
								elseif v170.MSMultiplier == 16384 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000000";
								elseif v170.MSMultiplier == 32768 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000000";
								elseif v170.MSMultiplier == 65536 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000000";
								elseif v170.MSMultiplier == 131072 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000000";
								elseif v170.MSMultiplier == 262144 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000000";
								elseif v170.MSMultiplier == 524288 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000000";
								elseif v170.FSMultiplier == 1048576 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200000000";
								elseif v170.FSMultiplier == 2097152 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500000000";
								elseif v170.FSMultiplier == 4194304 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000000000";
								elseif v170.FSMultiplier == 8388608 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000000000";
								elseif v170.FSMultiplier == 16777216 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000000000";
								elseif v170.FSMultiplier == 33554432 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000000000";
								end;
								v152:WaitForChild("UpgradeStatFrame"):WaitForChild("MultiplierTxt").Text = "x" .. tostring(v170.MSMultiplier * 2);
							end;
							v152:WaitForChild("UpgradeStatFrame").Visible = true;
						end);
					elseif v167.Name == "JFUpgradeImgBtn" then
						v167.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							v152:WaitForChild("UpgradeStatFrame"):WaitForChild("Stat").Value = "JF";
							v152:WaitForChild("UpgradeStatFrame"):WaitForChild("Txt1").Text = "Upgrade Jump Force Xp Multiplier to";
							local v171 = HttpService:JSONDecode(Inventory.Value);
							if v171 and v171.JFMultiplier then
								if v171.JFMultiplier == 1 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100";
								elseif v171.JFMultiplier == 2 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200";
								elseif v171.JFMultiplier == 4 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500";
								elseif v171.JFMultiplier == 8 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000";
								elseif v171.JFMultiplier == 16 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000";
								elseif v171.JFMultiplier == 32 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000";
								elseif v171.JFMultiplier == 64 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000";
								elseif v171.JFMultiplier == 128 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "15000";
								elseif v171.JFMultiplier == 256 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000";
								elseif v171.JFMultiplier == 512 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000";
								elseif v171.JFMultiplier == 1024 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000";
								elseif v171.JFMultiplier == 2048 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200000";
								elseif v171.JFMultiplier == 4096 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500000";
								elseif v171.JFMultiplier == 8192 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000000";
								elseif v171.JFMultiplier == 16384 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000000";
								elseif v171.JFMultiplier == 32768 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000000";
								elseif v171.JFMultiplier == 65536 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000000";
								elseif v171.JFMultiplier == 131072 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000000";
								elseif v171.JFMultiplier == 262144 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000000";
								elseif v171.JFMultiplier == 524288 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000000";
								elseif v171.FSMultiplier == 1048576 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200000000";
								elseif v171.FSMultiplier == 2097152 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500000000";
								elseif v171.FSMultiplier == 4194304 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000000000";
								elseif v171.FSMultiplier == 8388608 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000000000";
								elseif v171.FSMultiplier == 16777216 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000000000";
								elseif v171.FSMultiplier == 33554432 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000000000";
								end;
								v152:WaitForChild("UpgradeStatFrame"):WaitForChild("MultiplierTxt").Text = "x" .. tostring(v171.JFMultiplier * 2);
							end;
							v152:WaitForChild("UpgradeStatFrame").Visible = true;
						end);
					elseif v167.Name == "PPUpgradeImgBtn" then
						v167.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							v152:WaitForChild("UpgradeStatFrame"):WaitForChild("Stat").Value = "PP";
							v152:WaitForChild("UpgradeStatFrame"):WaitForChild("Txt1").Text = "Upgrade Psychic Power Xp Multiplier to";
							local v172 = HttpService:JSONDecode(Inventory.Value);
							if v172 and v172.PPMultiplier then
								if v172.PPMultiplier == 1 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100";
								elseif v172.PPMultiplier == 2 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200";
								elseif v172.PPMultiplier == 4 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500";
								elseif v172.PPMultiplier == 8 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000";
								elseif v172.PPMultiplier == 16 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000";
								elseif v172.PPMultiplier == 32 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000";
								elseif v172.PPMultiplier == 64 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000";
								elseif v172.PPMultiplier == 128 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "15000";
								elseif v172.PPMultiplier == 256 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000";
								elseif v172.PPMultiplier == 512 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000";
								elseif v172.PPMultiplier == 1024 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000";
								elseif v172.PPMultiplier == 2048 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200000";
								elseif v172.PPMultiplier == 4096 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500000";
								elseif v172.PPMultiplier == 8192 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000000";
								elseif v172.PPMultiplier == 16384 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000000";
								elseif v172.PPMultiplier == 32768 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000000";
								elseif v172.PPMultiplier == 65536 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000000";
								elseif v172.PPMultiplier == 131072 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000000";
								elseif v172.PPMultiplier == 262144 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000000";
								elseif v172.PPMultiplier == 524288 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000000";
								elseif v172.FSMultiplier == 1048576 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200000000";
								elseif v172.FSMultiplier == 2097152 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500000000";
								elseif v172.FSMultiplier == 4194304 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000000000";
								elseif v172.FSMultiplier == 8388608 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000000000";
								elseif v172.FSMultiplier == 16777216 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000000000";
								elseif v172.FSMultiplier == 33554432 then
									v152:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000000000";
								end;
								v152:WaitForChild("UpgradeStatFrame"):WaitForChild("MultiplierTxt").Text = "x" .. tostring(v172.PPMultiplier * 2);
							end;
							v152:WaitForChild("UpgradeStatFrame").Visible = true;
						end);
					end;
				end;
			end;
		end;
	elseif v148.Name == "MainQuestFrame" then
		v148.MouseEnter:Connect(function()
			ScreenGui:WaitForChild("QuestResetTxt").Visible = false;
		end);
		v148.MouseLeave:Connect(function()
			ScreenGui:WaitForChild("QuestResetTxt").Visible = false;
		end);
		v148:WaitForChild("RightBtn").MouseButton1Click:Connect(function()
			MainQuestFrame.Visible = false;
		end);
	elseif v148.Name == "RankEmblemFrame" then
		for v173, v174 in pairs(v148:GetChildren()) do
			if v174:IsA("ImageButton") then
				v174.MouseButton1Click:Connect(function()
					if v174.ImageTransparency ~= 0 then
						ErrorSound:Play();
						return;
					end;
					RemoteEvent:FireServer({ "ChangeRankEmblem", tonumber(string.match(v174.Name, "%d+")) });
					Confirm2Sound:Play();
					v148.Visible = false;
				end);
			end;
		end;
	elseif v148.Name == "RankImgBtn" then
		local l__Frame__26 = v148:WaitForChild("Frame");
		v148.MouseEnter:Connect(function()
			local v175 = nil;
			v175 = FistStrength.Value + BodyToughness.Value + MovementSpeed.Value + JumpForce.Value + PsychicPower.Value;
			local v176 = HeroKilled.Value + VillainKilled.Value;
			if Rank.Value == 1 then
				l__Frame__26:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame2").Visible = false;
				l__Frame__26:WaitForChild("MaxFrame3").Visible = false;
				l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100 Total Power";
				if v175 <= 100 then
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = tostring(v175) .. " / 100";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v175 / 100, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100 / 100";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 2 then
				l__Frame__26:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame3").Visible = false;
				l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1K Total Power";
				if v175 <= 1000 then
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v175) .. " / 1K";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v175 / 1000, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1K / 1K";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 1 Hero or Villain";
				if v176 <= 1 then
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v176) .. " / 1";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v176 / 1, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "1 / 1";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 3 then
				l__Frame__26:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame3").Visible = false;
				l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10K Total Power";
				if v175 <= 10000 then
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v175) .. " / 10K";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v175 / 10000, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10K / 10K";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 5 Hero or Villain";
				if v176 <= 5 then
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v176) .. " / 5";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v176 / 5, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "5 / 5";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 4 then
				l__Frame__26:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame3").Visible = false;
				l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100K Total Power";
				if v175 <= 100000 then
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v175) .. " / 100K";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v175 / 100000, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100K / 100K";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 10 Hero or Villain";
				if v176 <= 10 then
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v176) .. " / 10";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v176 / 10, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "10 / 10";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 5 then
				l__Frame__26:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame3").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1M Total Power";
				if v175 <= 1000000 then
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v175) .. " / 1M";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v175 / 1000000, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1M / 1M";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 20 Hero or Villain";
				if v176 <= 20 then
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v176) .. " / 20";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v176 / 20, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "20 / 20";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 60 mins";
				if AliveTime.Value < 60 then
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = tostring(AliveTime.Value) .. "m / 60m";
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 60, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "60m / 60m";
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 6 then
				l__Frame__26:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame3").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10M Total Power";
				if v175 <= 10000000 then
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v175) .. " / 10M";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v175 / 10000000, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10M / 10M";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 50 Hero or Villain";
				if v176 <= 50 then
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v176) .. " / 50";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v176 / 50, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "50 / 50";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 8 hours";
				if AliveTime.Value < 480 then
					local v177 = tostring(math.floor(AliveTime.Value / 60));
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v177 .. "h " .. tostring(math.floor(AliveTime.Value - v177 * 60)) .. "m / 8h";
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 480, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "8h / 8h";
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 7 then
				l__Frame__26:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame3").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100M Total Power";
				if v175 <= 100000000 then
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v175) .. " / 100M";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v175 / 100000000, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100M / 100M";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 100 Hero or Villain";
				if v176 <= 100 then
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v176) .. " / 100";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v176 / 100, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "100 / 100";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 16 hours";
				if AliveTime.Value < 960 then
					local v178 = tostring(math.floor(AliveTime.Value / 60));
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v178 .. "h " .. tostring(math.floor(AliveTime.Value - v178 * 60)) .. "m / 16h";
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 960, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "16h / 16h";
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 8 then
				l__Frame__26:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame3").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1B Total Power";
				if v175 <= 1000000000 then
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v175) .. " / 1B";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v175 / 1000000000, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1B / 1B";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 200 Hero or Villain";
				if v176 <= 200 then
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v176) .. " / 200";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v176 / 200, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "200 / 200";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 1 day";
				if AliveTime.Value < 1440 then
					local v179 = tostring(math.floor(AliveTime.Value / 1440));
					local v180 = tostring(math.floor((AliveTime.Value - v179 * 1440) / 60));
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v179 .. "d " .. v180 .. "h " .. tostring(math.floor(AliveTime.Value - v179 * 1440 - v180 * 60)) .. "m / 1d";
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 1440, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "1d / 1d";
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 9 then
				l__Frame__26:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame3").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10B Total Power";
				if v175 <= 10000000000 then
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v175) .. " / 10B";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v175 / 10000000000, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10B / 10B";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 500 Hero or Villain";
				if v176 <= 500 then
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v176) .. " / 500";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v176 / 500, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "500 / 500";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 2 days";
				if AliveTime.Value < 2880 then
					local v181 = tostring(math.floor(AliveTime.Value / 1440));
					local v182 = tostring(math.floor((AliveTime.Value - v181 * 1440) / 60));
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v181 .. "d " .. v182 .. "h " .. tostring(math.floor(AliveTime.Value - v181 * 1440 - v182 * 60)) .. "m / 2d";
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 2880, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "2d / 2d";
					l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 10 then
				l__Frame__26:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame3").Visible = true;
				l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100B Total Power";
				if v175 <= 100000000000 then
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = u9(v175) .. " / 100B";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v175 / 100000000000, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100B / 100B";
					l__Frame__26:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 1000 Hero or Villain";
				if v176 <= 1000 then
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v176) .. " / 1000";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v176 / 1000, 0, 1, 0);
				else
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "1000 / 1000";
					l__Frame__26:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Become a Squad Leader";
				l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "0 / 1";
				l__Frame__26:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(0, 0, 1, 0);
			end;
			l__Frame__26.Visible = true;
		end);
		v148.MouseLeave:Connect(function()
			l__Frame__26.Visible = false;
		end);
		v148.MouseButton1Click:Connect(function()
			OpenOrCloseGuiFunc(RankEmblemFrame);
		end);
	elseif v148.Name == "QuestTalkBtn" then
		v148.MouseEnter:Connect(function()
			v148.BackgroundColor3 = Color3.fromRGB(240, 240, 240);
		end);
		v148.MouseLeave:Connect(function()
			v148.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		end);
		v148.MouseButton1Click:Connect(function()
			local v183 = HttpService:JSONDecode(QuestData.Value);
			if v148:WaitForChild("Npc").Value == "Sath" then
				if v183 and v183.MainQuest and (v183.MainQuest.No == 0 or v183.MainQuest.Done) then
					TalkingOnQuest = true;
					v148.Visible = false;
					skillHotkey_Frame.Visible = false;
					Humanoid.WalkSpeed = 0;
					Humanoid.JumpPower = 0;
					Click2Sound:Play();
					if Character and Character:FindFirstChild("QuestBeam") then
						Character.QuestBeam:Destroy();
						if Character:FindFirstChild("UpperTorso") and Character.UpperTorso:FindFirstChild("Attachment0") then
							Character.UpperTorso.Attachment0:Destroy();
						end;
						if workspace:WaitForChild("Map"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("UpperTorso"):FindFirstChild("Attachment1") then
							workspace:WaitForChild("Map"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("UpperTorso"):FindFirstChild("Attachment1"):Destroy();
						end;
					end;
					workspace:WaitForChild("Map"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("QuestBbGui").Enabled = false;
					BeforeTalkToQuestNPCCameraCFrame = workspace.CurrentCamera.CFrame;
					workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable;
					workspace.CurrentCamera.CameraSubject = nil;
					workspace.CurrentCamera:Interpolate(CFrame.new(490.805, 251.32, 895.98), CFrame.new(497.495, 251.545, 897.271), 1);
					wait(1);
					local v184 = HttpService:JSONDecode(QuestData.Value);
					if v184 and v184.MainQuest and v184.MainQuest.No then
						local v185 = nil;
						local l__No__186 = v184.MainQuest.No;
						v185 = QuestMsgFrame:WaitForChild("MsgTxt");
						if l__No__186 == 0 then
							v185.Text = "Hello newcomer! Nice to meet you. My name is Sathopian.";
						elseif l__No__186 == 1 then
							v185.Text = "Good job. Now in order to become stronger...";
						elseif l__No__186 == 2 then
							v185.Text = "Now we will talk about the most important thing, the mind.";
						elseif l__No__186 == 3 then
							v185.Text = "Congratulation! Now you can become invisible anytime you want just by pressing \"T\".";
						elseif l__No__186 == 4 then
							v185.Text = "Good. From now on you can press \"R\" to execute the Energy Sphere Punch.";
						elseif l__No__186 == 5 then
							v185.Text = "Great! And don't worry, it is a passive skill! So you don't have to execute it everytime.";
						elseif l__No__186 == 6 then
							v185.Text = "Hello, now I'm sure you can run on water!";
						elseif l__No__186 == 7 then
							v185.Text = "Now it's a lot better than before right?";
						elseif l__No__186 == 8 then
							v185.Text = "Good! Now you can teleport by pressing \"V\" and point to where you wanna go.";
						elseif l__No__186 == 9 then
							v185.Text = "Now you can jump when you are falling down to start flying and jump again to stop flying.";
						elseif l__No__186 == 10 then
							v185.Text = "Well done. Now you can press \"F\" to execute the Bullet Punch.";
						elseif l__No__186 == 11 then
							v185.Text = "Cheers! Now you can point to your opponent and press \"B\" to launch the Soul Attack.";
						elseif l__No__186 == 12 then
							v185.Text = "Congratulation! Now you can press \"X\" to Conceal or Reveal your powerful aura.";
						elseif l__No__186 == 13 then
							v185.Text = "OMG!! I never think you will get this far. It's like 100 millions Psychic Power!!";
						end;
						QuestMsgFrame:WaitForChild("Page").Value = 2;
					end;
					QuestMsgFrame.Visible = true;
					RemoteEvent:FireServer({ "QuestTalkStart" });
					return;
				else
					QuestTalkBtn:TweenPosition(UDim2.new(0.387, 0, -0.2, 0), "Out", "Back", 0.5, true);
					QuestTalkBtn.Visible = false;
					if not UserInputService.MouseEnabled and UserInputService.TouchEnabled then
						skillHotkey_Frame.Visible = true;
					end;
				end;
			end;
		end);
	elseif v148.Name == "QuestMsgFrame" then
		for v187, v188 in pairs(v148:GetChildren()) do
			if v188.Name == "Btn" then
				v188.MouseButton1Click:Connect(function()
					QuestTalkFunc();
				end);
				v188.MouseButton2Click:Connect(function()
					QuestTalkFunc();
				end);
			end;
		end;
	end;
end;
coroutine.resume(coroutine.create(function()
	local v189 = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, -1, true, 0);
	local v190 = {
		TextColor3 = Color3.fromRGB(255, 255, 0), 
		TextStrokeColor3 = Color3.fromRGB(255, 0, 255)
	};
	TweenService:Create(MenuFrame:WaitForChild("InfoFrame"):WaitForChild("FSMultiplierTxt"), v189, v190):Play();
	wait(0.25);
	TweenService:Create(MenuFrame:WaitForChild("InfoFrame"):WaitForChild("BTMultiplierTxt"), v189, v190):Play();
	wait(0.25);
	TweenService:Create(MenuFrame:WaitForChild("InfoFrame"):WaitForChild("MSMultiplierTxt"), v189, v190):Play();
	wait(0.25);
	TweenService:Create(MenuFrame:WaitForChild("InfoFrame"):WaitForChild("JFMultiplierTxt"), v189, v190):Play();
	wait(0.25);
	TweenService:Create(MenuFrame:WaitForChild("InfoFrame"):WaitForChild("PPMultiplierTxt"), v189, v190):Play();
	wait(0.25);
	TweenService:Create(MenuFrame:WaitForChild("InfoFrame"):WaitForChild("UpgradeStatFrame"):WaitForChild("MultiplierTxt"), v189, v190):Play();
end));
coroutine.resume(coroutine.create(function()
	while wait(5) do
		local v191, v192 = pcall(function()
			RemoteEvent:FireServer({ "CheckStats", FistStrength.Value, BodyToughness.Value, MovementSpeed.Value, JumpForce.Value, PsychicPower.Value });
		end);
		if not v191 then
			print("(Client) Check_Stats LOOP_FUNCTION :", v192);
		end;	
	end;
end));
local u27 = tick();
local u28 = Vector3.new(0, 0, 0);
coroutine.resume(coroutine.create(function()
	while wait(0.1) do
		pcall(function()
			if u11 < 0.1 or Humanoid.WalkSpeed <= 9 then
				u11 = 0;
				if u11 > 0.1 and Humanoid.WalkSpeed <= 9 and HumanoidRootPart and HumanoidRootPart.Anchored == false then
					WarnTxt.Text = "too heavy to train Movement Speed!";
					v4.PopUpAndAutoHideGui(WarnTxt, 1);
				end;
				return;
			end;
			if u11 > 0 and not _G.Flying and Humanoid and Character and Humanoid:GetState() ~= Enum.HumanoidStateType.Swimming and HttpService:JSONDecode(QuestData.Value) ~= nil and QuestMsgFrame.Visible == false and HttpService:JSONDecode(QuestData.Value).MainQuest.No >= 2 and tick() - u27 >= 2 and u28 ~= Character.PrimaryPart.Position then
				u27 = tick();
				u28 = Character.PrimaryPart.Position;
				local v193 = 1;
				local v194 = 1;
				if Character:FindFirstChild("LeftWeight1") then
					v193 = 2;
					v194 = 2;
				elseif Character:FindFirstChild("LeftWeight2") then
					v193 = 5;
					v194 = 3;
				elseif Character:FindFirstChild("LeftWeight3") then
					v193 = 10;
					v194 = 4;
				elseif Character:FindFirstChild("LeftWeight4") then
					v193 = 20;
					v194 = 5;
				end;
				RemoteEvent:FireServer({ "Add_MS_Request", v194 });
				if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
					CreateXpGuiFunc(v5:WaitForChild("XpFrame"), v5:WaitForChild("MSImg"), v193);
				end;
			end;
		end);	
	end;
end));
coroutine.resume(coroutine.create(function()
	local l__Lava__195 = l__Map__10:WaitForChild("Training_Decorations"):WaitForChild("BodyToughness"):WaitForChild("Volcano"):WaitForChild("Lava");
	while wait(0.1) do
		local v196, v197 = pcall(function()
			for v198 = 1, 25 do
				for v199, v200 in pairs(l__Lava__195:GetChildren()) do
					if v200.Name == "LavaPart" then
						for v201, v202 in pairs(v200:GetChildren()) do
							if v202:IsA("Texture") then
								v202.Texture = string.format("rbxasset://textures/water/normal_%02d.dds", v198);
							end;
						end;
					end;
				end;
				for v203, v204 in pairs(l__Map__10:WaitForChild("TrainingArea"):WaitForChild("LavaPart2"):GetChildren()) do
					if v204:IsA("Texture") then
						v204.Texture = string.format("rbxasset://textures/water/normal_%02d.dds", v198);
					end;
				end;
				wait(0.1);
			end;
		end);
		if not v196 then
			print("(Client) Lava_Effect LOOP_FUNCTION :", v197);
		end;	
	end;
end));
coroutine.resume(coroutine.create(function()
	while wait(0.2) do
		local v205, v206 = pcall(function()
			if u10(l__LocalPlayer__3) then
				if (HumanoidRootPart.CFrame.p - ReplicatedStorage:WaitForChild("SathPart").CFrame.p).magnitude < 25 and QuestTalkBtn.Visible == false and QuestMsgFrame.Visible == false and Humanoid.WalkSpeed ~= 0 then
					v4.Storage.TouchingQuestPart = true;
					local v207 = HttpService:JSONDecode(QuestData.Value);
					if v207 and v207.MainQuest and (v207.MainQuest.No == 0 or v207.MainQuest.Done) then
						QuestTalkBtn:WaitForChild("Npc").Value = "Sath";
						QuestTalkBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
						QuestTalkBtn.Visible = true;
						QuestTalkBtn:TweenPosition(UDim2.new(0.387, 0, 0.05, 0), "Out", "Back", 0.5, true);
					else
						QuestTalkBtn:TweenPosition(UDim2.new(0.387, 0, -0.2, 0), "Out", "Back", 0.5, true);
						QuestTalkBtn.Visible = false;
						if not UserInputService.MouseEnabled and UserInputService.TouchEnabled then
							skillHotkey_Frame.Visible = true;
						end;
					end;
				elseif v4.Storage.TouchingQuestPart and (HumanoidRootPart.CFrame.p - ReplicatedStorage:WaitForChild("SathPart").CFrame.p).magnitude >= 25 then
					v4.Storage.TouchingQuestPart = false;
					QuestTalkBtn:TweenPosition(UDim2.new(0.387, 0, -0.2, 0), "Out", "Back", 0.5, true);
					QuestMsgFrame.Visible = false;
					delay(0.5, function()
						QuestTalkBtn.Visible = false;
						if not UserInputService.MouseEnabled and UserInputService.TouchEnabled then
							skillHotkey_Frame.Visible = true;
						end;
					end);
					if not UserInputService.MouseEnabled and UserInputService.TouchEnabled then
						skillHotkey_Frame.Visible = true;
					end;
				elseif not v4.Storage.TouchingQuestPart and UserInputService.MouseEnabled and UserInputService.TouchEnabled and not skillHotkey_Frame.Visible then
					skillHotkey_Frame.Visible = true;
				end;
				if (HumanoidRootPart.CFrame.p - ReplicatedStorage:WaitForChild("TrainingRockCollision").CFrame.p).magnitude < 35 then
					_G.NearTrainingRock = true;
				else
					_G.NearTrainingRock = false;
				end;
				if (HumanoidRootPart.CFrame.p - ReplicatedStorage:WaitForChild("TrainingCrystalCollision").CFrame.p).magnitude < 15 then
					_G.NearTrainingCrystal = true;
				else
					_G.NearTrainingCrystal = false;
				end;
				if (HumanoidRootPart.CFrame.p - TrainingArea:WaitForChild("StarFSTraining1").CFrame.p).magnitude < 25 then
					_G.NearStarFSTraining1 = true;
				else
					_G.NearStarFSTraining1 = false;
				end;
				if (HumanoidRootPart.CFrame.p - TrainingArea:WaitForChild("StarFSTraining2").CFrame.p).magnitude < 35 then
					_G.NearStarFSTraining2 = true;
				else
					_G.NearStarFSTraining2 = false;
				end;
				if (HumanoidRootPart.CFrame.p - TrainingArea:WaitForChild("StarFSTraining3").CFrame.p).magnitude < 105 then
					_G.NearStarFSTraining3 = true;
				else
					_G.NearStarFSTraining3 = false;
				end;
				if (HumanoidRootPart.CFrame.p - TrainingArea:WaitForChild("PPTrainingPart1").CFrame.p).magnitude < 20 then
					_G.NearPPTrainingPart1 = true;
				else
					_G.NearPPTrainingPart1 = false;
				end;
				if (HumanoidRootPart.CFrame.p - TrainingArea:WaitForChild("PPTrainingPart2").CFrame.p).magnitude < 20 then
					_G.NearPPTrainingPart2 = true;
				else
					_G.NearPPTrainingPart2 = false;
				end;
				if (HumanoidRootPart.CFrame.p - TrainingArea:WaitForChild("PPTrainingPart3").CFrame.p).magnitude < 25 then
					_G.NearPPTrainingPart3 = true;
				else
					_G.NearPPTrainingPart3 = false;
				end;
				if (HumanoidRootPart.CFrame.p - TrainingArea:WaitForChild("PPTrainingPart4").CFrame.p).magnitude < 35 then
					_G.NearPPTrainingPart4 = true;
					return;
				end;
				_G.NearPPTrainingPart4 = false;
			end;
		end);
		if not v205 then
			print("(Client) Distance_Detection LOOP_FUNCTION :", v206);
		end;	
	end;
end));
l__Chat__1.BubbleChatEnabled = true;
l__Chat__1:SetBubbleChatSettings(v4.GAME_CONFIG.BubbleChatSettings);
print("Client SetUp");
if u20 then
	wait(10);
	v130();
end;
if not UserInputService.MouseEnabled and UserInputService.TouchEnabled then
	for v208 = 1, 12 do
		wait(5);
		if ScreenGui.AbsoluteSize.Y < 500 then
			skillHotkey_Frame:WaitForChild("UIListLayout").Padding = UDim.new(0.07, 0);
			skillHotkey_Frame.Position = UDim2.new(0.5, 0, 0.75, 0);
			skillHotkey_Frame.Size = UDim2.new(0.6, 0, 0.075, 0);
			skillHotkey_Frame.Visible = true;
			btn_BorderSizePixel = 2;
			MenuFrame.Position = UDim2.new(0.5, 0, 0.15, 0);
			MenuFrame.Size = UDim2.new(0.4, 0, 0.625, 0);
		else
			skillHotkey_Frame:WaitForChild("UIListLayout").Padding = UDim.new(0.085, 0);
			skillHotkey_Frame.Position = UDim2.new(0.5, 0, 0.85, 0);
			skillHotkey_Frame.Size = UDim2.new(0.5, 0, 0.05, 0);
			skillHotkey_Frame.Visible = true;
			btn_BorderSizePixel = 4;
			MenuFrame.Position = UDim2.new(0.5, 0, 0.25, 0);
			MenuFrame.Size = UDim2.new(0.45, 0, 0.5, 0);
		end;
		local v209, v210, v211 = ipairs(skillHotkey_Frame:GetChildren());
		while true do
			v209(v210, v211);
			if not v209 then
				break;
			end;
			v211 = v209;
			if v210:IsA("TextButton") then
				v210.BorderSizePixel = btn_BorderSizePixel;
			end;		
		end;
	end;
	print("Touch Device Gui SetUp");
else
	skillHotkey_Frame.Visible = false;
end;
