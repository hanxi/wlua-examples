local wlua = require "wlua"

-- Creates a wlua router with default logger middleware.
local app = wlua:default()

app:get("/someget", function (c)
    c:send("someget")
end)

app:post("/somepost", function (c)
    c:send("somepost")
end)

app:put("/someput", function (c)
    c:send("someput")
end)

app:delete("/somedelete", function (c)
    c:send("somedelete")
end)

app:patch("/somepatch", function (c)
    c:send("somepatch")
end)

app:head("/somehead", function (c)
    c:send("somehead")
end)

app:options("/someoptions", function (c)
    c:send("someoptions")
end)

-- By default it serves on :8081
app:run()
