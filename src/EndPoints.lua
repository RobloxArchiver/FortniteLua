--[[

    Credits: https://github.com/qlaffont/fortnite-api/blob/master/tools/endpoints.js

]]

local export = {}

export.OAUTH_TOKEN = "https://account-public-service-prod03.ol.epicgames.com/account/api/oauth/token"
export.OAUTH_EXCHANGE = "https://account-public-service-prod03.ol.epicgames.com/account/api/oauth/exchange"
export.OAUTH_VERIFY = "https://account-public-service-prod03.ol.epicgames.com/account/api/oauth/verify?includePerms=true"
export.FortnitePVEInfo = "https://fortnite-public-service-prod11.ol.epicgames.com/fortnite/api/game/v2/world/info"
export.FortniteStorefront = "https://fortnite-public-service-prod11.ol.epicgames.com/fortnite/api/storefront/v2/catalog"
export.FortniteStatus = "https://lightswitch-public-service-prod06.ol.epicgames.com/lightswitch/api/service/bulk/status?serviceId=Fortnite"
export.FortniteNews = "https://fortnitecontent-website-prod07.ol.epicgames.com/content/api/pages/fortnite-game"
export.FortniteEventFlag = "https://fortnite-public-service-prod11.ol.epicgames.com/fortnite/api/calendar/v1/timeline"

export.lookup = function(username)
    return "https://persona-public-service-prod06.ol.epicgames.com/persona/api/public/account/lookup?q=" .. tostring(username)
end

export.statsBR = function(accountId, timeWindow)
    return "https://fortnite-public-service-prod11.ol.epicgames.com/fortnite/api/stats/accountId/" .. tostring(accountId) .. "/bulk/window/" .. (function() if timeWindow then return tostring(timeWindow) else return "alltime" end end)()
end

export.statsPVE = function(accountId)
    return "https://fortnite-public-service-prod11.ol.epicgames.com/fortnite/api/game/v2/profile/" .. tostring(accountId) .. "/client/QueryProfile?profileId=collection_book_schematics0&rvn=-1"
end

export.killSession = function(token)
    return "https://account-public-service-prod03.ol.epicgames.com/account/api/oauth/sessions/kill/" .. tostring(token)
end

export.leaderBoardScore = function()
    return "Not Written Yet"
end

return export
