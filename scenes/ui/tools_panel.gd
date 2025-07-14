extends PanelContainer

@onready var tool_axe: Button = $MarginContainer/HBoxContainer/ToolAxe
@onready var tool_tilling: Button = $MarginContainer/HBoxContainer/ToolTilling
@onready var tool_watering_can: Button = $MarginContainer/HBoxContainer/ToolWateringCan
@onready var tool_corn: Button = $MarginContainer/HBoxContainer/ToolCorn
@onready var tool_tomato: Button = $MarginContainer/HBoxContainer/ToolTomato

@onready var tool_buttons := [
	tool_axe,
	tool_tilling,
	tool_watering_can,
	tool_corn,
	tool_tomato,
]

func _on_tool_axe_pressed() -> void:
	ToolManager.select_tools(DataTypes.Tools.AxeWood)

func _on_tool_tilling_pressed() -> void:
	ToolManager.select_tools(DataTypes.Tools.TillGround)

func _on_tool_watering_can_pressed() -> void:
	ToolManager.select_tools(DataTypes.Tools.WaterCrops)

func _on_tool_corn_pressed() -> void:
	ToolManager.select_tools(DataTypes.Tools.PlantCorn)

func _on_tool_tomato_pressed() -> void:
	ToolManager.select_tools(DataTypes.Tools.PlantTomato)
	
func _process(_delta):
	if Input.is_action_just_pressed("release_tool"):
		ToolManager.select_tools(DataTypes.Tools.None)
		for b in tool_buttons:
			b.set_pressed(false) 
			b.release_focus()
