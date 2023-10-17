local Part = function(prop)
    local Inst = Instance.new("Part")
    Inst.Parent = workspace
    for i,v in pairs(prop) do
        Inst[i] = v
    end
    return Inst
end

return Part