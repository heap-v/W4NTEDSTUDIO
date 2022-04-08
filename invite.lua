local ExploitRequest = request or http_request or syn and syn.request
local HS = game:GetService("HttpService")
local function invite(answer)
    print(answer)
    if answer == "Yes" then
ExploitRequest({
    Url = "https://dsc.gg/w4nted",
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json",
        ["Origin"] = "https://dsc.gg/"
    },
    Body = HS:JSONEncode({
        cmd = "INVITE_BROWSER",
        args = {
            code = "uCasJKTvqu",
        },
        nonce = HS:GenerateGUID(false)
    }),
})
    end
end
local event = Instance.new("BindableFunction")
event.OnInvoke = invite
game.StarterGui:SetCore("SendNotification",  {
 Title = "INVITATION",
 Text = "Would you like to join the discord server?";
 Icon = "";
 Duration = 5;
 Button1 = "Yes";
 Button2 = "No, fuck off";
 Callback = event;
})
