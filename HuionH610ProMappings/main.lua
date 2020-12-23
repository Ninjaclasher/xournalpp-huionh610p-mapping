function initUi()
    app.registerUi({["menu"] = "Undo", ["callback"] = "undo", ["accelerator"] = "F1"});
    app.registerUi({["menu"] = "Eraser", ["callback"] = "eraser", ["accelerator"] = "F2"});
    app.registerUi({["menu"] = "Pen", ["callback"] = "pen", ["accelerator"] = "F3"});
    app.registerUi({["menu"] = "Zoom In", ["callback"] = "zoomIn", ["accelerator"] = "F4"});
    app.registerUi({["menu"] = "Zoom Out", ["callback"] = "zoomOut", ["accelerator"] = "F5"});
    app.registerUi({["menu"] = "Increase Tool Size", ["callback"] = "toolBrushSizeIncrease", ["accelerator"] = "F6"});
    app.registerUi({["menu"] = "Decrease Tool size", ["callback"] = "toolBrushSizeDecrease", ["accelerator"] = "F7"});
    app.registerUi({["menu"] = "Hand", ["callback"] = "hand", ["accelerator"] = "F8"});
end

function undo()
    app.uiAction({["action"] = "ACTION_UNDO"})
end

function eraser()
    app.uiAction({["action"] = "ACTION_TOOL_ERASER"})
end

function pen()
    app.uiAction({["action"] = "ACTION_TOOL_PEN"})
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


local toolSizes = {"ACTION_SIZE_VERY_FINE", "ACTION_SIZE_FINE", "ACTION_SIZE_MEDIUM", "ACTION_SIZE_THICK", "ACTION_SIZE_VERY_THICK"}
local currentSize = 3

function toolBrushSizeIncrease()
    if currentSize + 1 <= #toolSizes then
        currentSize = currentSize + 1
    end
    app.uiAction({["action"] = toolSizes[currentSize]})
end

function toolBrushSizeDecrease()
    if currentSize - 1 >= 1 then
        currentSize = currentSize - 1
    end
    app.uiAction({["action"] = toolSizes[currentSize]})
end
