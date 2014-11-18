BindGlobal()

local assets =
{
	Asset("ANIM", "anim/gnome_wilson.zip"),
}

local function fn(Sim)
	local inst = CreateEntity()
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	MakeInventoryPhysics(inst)

	inst.AnimState:SetBank("gnome_wilson")
	inst.AnimState:SetBuild("gnome_wilson")
	inst.AnimState:PlayAnimation("idle")

	inst.Transform:SetScale(.7,.7,.7)

	inst:AddComponent("inspectable")

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/pineapple.xml"

	return inst
end

return Prefab ("common/gnome_wilson", fn, assets) 
