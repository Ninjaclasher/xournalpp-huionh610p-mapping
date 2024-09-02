function initUi()
    app.registerUi({["menu"] = "Increase Tool Size", ["callback"] = "toolBrushSizeIncrease", ["accelerator"] = "F1"});
    app.registerUi({["menu"] = "Decrease Tool size", ["callback"] = "toolBrushSizeDecrease", ["accelerator"] = "F2"});
    app.registerUi({["menu"] = "Hand", ["callback"] = "hand", ["accelerator"] = "F3"});
end

function zoomIn()
    app.uiAction({["action"] = "ACTION_ZOOM_IN"})
end

function zoomOut()
    app.uiAction({["action"] = "ACTION_ZOOM_OUT"})
end

function hand()
    app.uiAction({["action"] = "ACTION_TOOL_HAND"})
end


local actionToolSizes = {"ACTION_SIZE_VERY_FINE", "ACTION_SIZE_FINE", "ACTION_SIZE_MEDIUM", "ACTION_SIZE_THICK", "ACTION_SIZE_VERY_THICK"}
local toolSizes = {["none"]=1, ["veryThin"]=1, ["thin"]=2, ["medium"]=3, ["thick"]=4, ["veryThick"]=5}

function getToolSize()
    local size = toolSizes[app.getToolInfo("active")["size"]["name"]]
    if size == nil then
        return 3
    else
        return size
    end
end

function updateToolSize(newSize)
    size = math.max(1, math.min(newSize, #actionToolSizes))
    app.uiAction({["action"] = actionToolSizes[size]})
end

function toolBrushSizeIncrease()
    updateToolSize(getToolSize() + 1)
end

function toolBrushSizeDecrease()
    updateToolSize(getToolSize() - 1)
end
