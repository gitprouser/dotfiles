-------------------------------------------------
-- View current tabs in an interactive menu    --
-- © 2013 Chris van Dijk <quigybo@hotmail.com> --
-------------------------------------------------
-- Modifications by milomouse@github.com       --
-------------------------------------------------

-- Add tabmenu command
local cmd = lousy.bind.cmd
add_cmds({
    -- View all tabs in an interactive menu
    cmd("tabmenu", "List all tabs.", function (w) w:set_mode("tabmenu") end),
})

-- Add mode to display all tabs in an interactive menu
new_mode("tabmenu", {
    enter = function (w)
        local rows = {{ "    Title", "URI", title = true }}
        local escape = lousy.util.escape
        for i, view in ipairs(w.tabs.children) do
            local uri = escape(view.uri)
            local title = escape(view.title or "")
            table.insert(rows, { " " .. i .. ":  " .. title, " " .. uri, index = i })
        end
        w.menu:build(rows)
        w:notify("Use j/k to scroll, </> move tab positions, d delete, Return activate.", false)
    end,

    leave = function (w)
        w.menu:hide()
    end,
})

-- Add tabmenu menu binds
local key = lousy.bind.key
add_binds("tabmenu", lousy.util.table.join({
    key({}, "d", "Delete tab.", function (w)
        local row = w.menu:get()
        if row and row.index then
            w:close_tab(w.tabs[row.index])
            w.menu:del()
            w:set_mode("tabmenu")
            w.menu:move_down()
        end
    end),

    -- Undo closed tab in current tab
    key({}, "Return", "Switch to tab.", function (w)
        local row = w.menu:get()
        w:set_mode()
        if row and row.index then
            w.tabs:switch(row.index)
        end
    end),

    key({}, "<", "Move tab left.", function (w, m)
        local row = w.menu:get()
        if row and row.index then
            w.tabs:reorder(w.view, w.tabs:current() - m.count)
        end
        w:set_mode("tabmenu")
        w.menu:move_down()
    end, {count=1}),

    key({}, ">", "Move tab right.", function (w, m)
        local row = w.menu:get()
        if row and row.index then
            w.tabs:reorder(w.view,
                (w.tabs:current() + m.count) % w.tabs:current())
        end
        w:set_mode("tabmenu")
        w.menu:move_down()
    end, {count=1}),

    -- Exit menu
    key({}, "q", "Close menu.",
        function (w) w:set_mode() end),

}, menu_binds))

-- Add key binds.
local buf = lousy.bind.buf
add_binds("normal", {
    key({},     "m",    function (w)
        w:set_mode("tabmenu")
    end),
})
