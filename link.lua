local a=game:GetService("HttpService")local b=game:GetService("Players")local c={}function c:GetDiscordNameAsync(d)local e=a:GetAsync("https://api.sympact06.nl/getidentity.php?id="..d.UserId)local f=a:GetAsync("https://api.sympact06.nl/getname.php?id="..e)if f=="200"then f="Not Linked"end;return f end;function c:CheckBlacklist(d)local g=a:GetAsync("https://api.sympact06.nl/blacklist?id="..d.UserId)if g=="200"then print("Sympact Link: User not blacklisted")else d:Kick("[Sympact Link] Blacklisted for: "..g)end end;function c:GetDiscordIdAsync(d)local e=a:GetAsync("https://api.sympact06.nl/getidentity.php?id="..d.UserId)local f=a:GetAsync("https://api.sympact06.nl/getdiscordid.php?id="..e)if f=="200"then f="Not Linked"end;return f end;function c:GetProfileIconFromRoblox(d)local h=d.UserId;local i=Enum.ThumbnailType.HeadShot;local j=Enum.ThumbnailSize.Size420x420;local k,l=b:GetUserThumbnailAsync(h,i,j)return k end;function c:GetLinkIdentifier(d)local e=a:GetAsync("https://api.sympact06.nl/getidentity.php?id="..d.UserId)if e=="200"then e="None"end;return e end;function c:RequireLink()game.ReplicatedStorage["Sympact.Link"].Authorize["348348834342"][""].Value=true end;function c:AutoCheckBlacklist()game.ReplicatedStorage["Sympact.Link"].Authorize["4388684923546"][""].Value=true end;function c:SetWebhookUri(m)local n=string.gsub(m,"discord.com/api/webhooks","hooks.hyra.io/webhooks")return n end;function c:ChangeTeam(d,o,p,q)local r=game.Players[d.Name]if p==nil then r.Team=game:GetService("Teams"):WaitForChild("team",5)else if r:GetRankInGroup(p)>=q then r.Team=game:GetService("Teams"):WaitForChild("team",5)end end end;return c
