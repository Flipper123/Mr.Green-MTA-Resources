-------------------------------------
-- Code generated by DKR QT to Lua 0.1.7 --
-- Source: modshop.ui --
-- Date:  22/12/2012 - 17:09:33 --
-------------------------------------

function build_modshopWidget(parent, offsetX, offsetY)
	
	local gui = {}
	gui._placeHolders = {}
	
	local widgetWidth, widgetHeight = 654, 417
	
	gui["modshopTabs"] = guiCreateTabPanel(0 + offsetX, 20 + offsetY, 641, 381, false, parent)
	
	gui["tabBuyVehicle"] = guiCreateTab("Buy vehicles", gui["modshopTabs"])
	
	gui["carsTable"] = guiCreateGridList(20, 24, 321, 311, false, gui["tabBuyVehicle"])
	-- guiGridListSetSortingEnabled(gui["carsTable"], false)
	gui["carsTable_col0"] = guiGridListAddColumn(gui["carsTable"], "Vehicle", 0.311526)
	gui["carsTable_col1"] = guiGridListAddColumn(gui["carsTable"], "ID", 0.311526)
	
	local carsTable_row = nil
	
	gui["buyVehicleButton"] = guiCreateButton(380, 60, 75, 23, "Buy vehicle", false, gui["tabBuyVehicle"])
	guiSetEnabled(gui["buyVehicleButton"], false)
	if on_buyVehicleButton_clicked then
		addEventHandler("onClientGUIClick", gui["buyVehicleButton"], on_buyVehicleButton_clicked, false)
	end
	
	gui["labelPrice"] = guiCreateLabel(380, 30, 141, 16, "Current price : 550 GC", false, gui["tabBuyVehicle"])
	guiLabelSetHorizontalAlign(gui["labelPrice"], "left", false)
	guiLabelSetVerticalAlign(gui["labelPrice"], "center")
	
	-- gui["checkBox"] = guiCreateCheckBox(430, 240, 111, 17, "Headlight colors", false, false, gui["tabBuyVehicle"])
	-- guiSetEnabled(gui["checkBox"], false)
	
	-- gui["labelUpgradeOptions"] = guiCreateLabel(390, 190, 121, 16, "Available upgrades:", false, gui["tabBuyVehicle"])
	-- guiSetEnabled(gui["labelUpgradeOptions"], false)
	-- guiLabelSetHorizontalAlign(gui["labelUpgradeOptions"], "left", false)
	-- guiLabelSetVerticalAlign(gui["labelUpgradeOptions"], "center")
	-- guiLabelSetColor(gui["labelUpgradeOptions"], 120, 120, 120)
	
	-- gui["checkBox_2"] = guiCreateCheckBox(430, 260, 111, 17, "Customized rims", false, false, gui["tabBuyVehicle"])
	-- guiSetEnabled(gui["checkBox_2"], false)
	
	-- gui["checkBox_3"] = guiCreateCheckBox(430, 280, 111, 17, "Body mods", false, false, gui["tabBuyVehicle"])
	-- guiSetEnabled(gui["checkBox_3"], false)
	
	-- gui["checkBox_4"] = guiCreateCheckBox(430, 220, 111, 17, "Vehicle colors: 1", false, false, gui["tabBuyVehicle"])
	-- guiSetEnabled(gui["checkBox_4"], false)
	
	-- gui["checkBox_5"] = guiCreateCheckBox(430, 300, 111, 17, "Paintjobs: 3", false, false, gui["tabBuyVehicle"])
	-- guiSetEnabled(gui["checkBox_5"], false)
	
	gui["upgradeVehicleButton"] = guiCreateButton(380, 100, 131, 23, "Upgrade this vehicle", false, gui["tabBuyVehicle"])
	guiSetEnabled(gui["upgradeVehicleButton"], false)
	if on_upgradeVehicleButton_clicked then
		addEventHandler("onClientGUIClick", gui["upgradeVehicleButton"], on_upgradeVehicleButton_clicked, false)
	end
	
	gui["viewVehicleButton"] = guiCreateButton(380, 140, 131, 23, "View current vehicle", false, gui["tabBuyVehicle"])
	guiSetEnabled(gui["viewVehicleButton"], false)
	if on_viewVehicleButton_clicked then
		addEventHandler("onClientGUIClick", gui["viewVehicleButton"], on_viewVehicleButton_clicked, false)
	end
	
	gui["tabVehicleColors"] = guiCreateTab("Colors + Paintjobs", gui["modshopTabs"])
	
	gui["lblCol1"] = guiCreateLabel(35, 100, 51, 21, "Paint 1:", false, gui["tabVehicleColors"])
	guiLabelSetHorizontalAlign(gui["lblCol1"], "left", false)
	guiLabelSetVerticalAlign(gui["lblCol1"], "center")
	
	gui["editCol1"] = guiCreateEdit(90, 100, 91, 20, "", false, gui["tabVehicleColors"])
	guiEditSetMaxLength(gui["editCol1"], 11)
	
	gui["editCol2"] = guiCreateEdit(90, 140, 91, 20, "", false, gui["tabVehicleColors"])
	guiEditSetMaxLength(gui["editCol2"], 11)
	
	gui["lblCol2"] = guiCreateLabel(35, 140, 51, 21, "Paint 2:", false, gui["tabVehicleColors"])
	guiLabelSetHorizontalAlign(gui["lblCol2"], "left", false)
	guiLabelSetVerticalAlign(gui["lblCol2"], "center")
	
	gui["lblVehColText"] = guiCreateLabel(30, 30, 271, 61, "You can change vehicles' two different paint colors and their headlight color.", false, gui["tabVehicleColors"])
	guiLabelSetHorizontalAlign(gui["lblVehColText"], "left", true)
	guiLabelSetVerticalAlign(gui["lblVehColText"], "center")
	
	gui["btnApplyColor"] = guiCreateButton(70, 230, 111, 23, "Save colors", false, gui["tabVehicleColors"])
	guiSetEnabled(gui["btnApplyColor"], false)
	if on_btnApplyColor_clicked then
		addEventHandler("onClientGUIClick", gui["btnApplyColor"], on_btnApplyColor_clicked, false)
	end
	
	gui["lblPaintjobText"] = guiCreateLabel(350, 20, 271, 61, "A few cars have paintjobs, usually 3 variants.\nCustom paintjobs also work on most vehicles without paintjobs, but are randomly aligned, be warned!", false, gui["tabVehicleColors"])
	guiLabelSetHorizontalAlign(gui["lblPaintjobText"], "left", true)
	guiLabelSetVerticalAlign(gui["lblPaintjobText"], "top")
	
	gui["lblPaintjobNote"] = guiCreateLabel(350, 265, 271, 91, "Use Imgur.com direct link \nOr\nCopy custom paintjob images into this map:\nC:\\Program Files\\MTA San Andreas\\mods\\deathmatch\\resources\\gcshop\\", false, gui["tabVehicleColors"])
	guiLabelSetHorizontalAlign(gui["lblPaintjobNote"], "left", true)
	guiLabelSetVerticalAlign(gui["lblPaintjobNote"], "top")
	
	gui["tabelPaintjob"] = guiCreateGridList(360, 100, 131, 111, false, gui["tabVehicleColors"])
	guiGridListSetSortingEnabled(gui["tabelPaintjob"], false)
	gui["tabelPaintjob_col0"] = guiGridListAddColumn(gui["tabelPaintjob"], "Paintjob", 0.709924)
	
	local tabelPaintjob_row = nil
	
	tabelPaintjob_row = guiGridListAddRow(gui["tabelPaintjob"])
	guiGridListSetItemText(gui["tabelPaintjob"], tabelPaintjob_row, gui["tabelPaintjob_col0"], "No paintjob", false, false )
	
	tabelPaintjob_row = guiGridListAddRow(gui["tabelPaintjob"])
	guiGridListSetItemText(gui["tabelPaintjob"], tabelPaintjob_row, gui["tabelPaintjob_col0"], "Paintjob 1", false, false )
	
	tabelPaintjob_row = guiGridListAddRow(gui["tabelPaintjob"])
	guiGridListSetItemText(gui["tabelPaintjob"], tabelPaintjob_row, gui["tabelPaintjob_col0"], "Paintjob 2", false, false )
	
	tabelPaintjob_row = guiGridListAddRow(gui["tabelPaintjob"])
	guiGridListSetItemText(gui["tabelPaintjob"], tabelPaintjob_row, gui["tabelPaintjob_col0"], "Paintjob 3", false, false )
	
	gui["btnApplyPaintjob"] = guiCreateButton(360, 230, 121, 23, "Save Paintjob", false, gui["tabVehicleColors"])
	guiSetEnabled(gui["btnApplyPaintjob"], false)
	if on_btnApplyPaintjob_clicked then
		addEventHandler("onClientGUIClick", gui["btnApplyPaintjob"], on_btnApplyPaintjob_clicked, false)
	end
	
	gui["lblLight"] = guiCreateLabel(35, 180, 51, 21, "Light :", false, gui["tabVehicleColors"])
	guiLabelSetHorizontalAlign(gui["lblLight"], "left", false)
	guiLabelSetVerticalAlign(gui["lblLight"], "center")
	
	gui["editLight"] = guiCreateEdit(90, 180, 91, 20, "", false, gui["tabVehicleColors"])
	guiEditSetMaxLength(gui["editLight"], 11)
	
	gui["btnCol1"] = guiCreateButton(200, 100, 71, 23, "Change", false, gui["tabVehicleColors"])
	guiSetEnabled(gui["btnCol1"], false)
	if on_btnCol1_clicked then
		addEventHandler("onClientGUIClick", gui["btnCol1"], on_btnCol1_clicked, false)
	end
	
	gui["btnCol2"] = guiCreateButton(200, 140, 71, 23, "Change", false, gui["tabVehicleColors"])
	guiSetEnabled(gui["btnCol2"], false)
	if on_btnCol2_clicked then
		addEventHandler("onClientGUIClick", gui["btnCol2"], on_btnCol2_clicked, false)
	end
	
	gui["btnLight"] = guiCreateButton(200, 180, 71, 23, "Change", false, gui["tabVehicleColors"])
	guiSetEnabled(gui["btnLight"], false)
	if on_btnLight_clicked then
		addEventHandler("onClientGUIClick", gui["btnLight"], on_btnLight_clicked, false)
	end
	
	gui["btnApplyColor_2"] = guiCreateButton(70, 270, 141, 23, "Save colors for all", false, gui["tabVehicleColors"])
	guiSetEnabled(gui["btnApplyColor_2"], false)
	if on_btnApplyColor_2_clicked then
		addEventHandler("onClientGUIClick", gui["btnApplyColor_2"], on_btnApplyColor_2_clicked, false)
	end
	
	gui["btnUploadPaintjob"] = guiCreateButton(510, 230, 121, 23, "Upload Paintjob", false, gui["tabVehicleColors"])
	guiSetEnabled(gui["btnUploadPaintjob"], false)
	if on_btnUploadPaintjob_clicked then
		addEventHandler("onClientGUIClick", gui["btnUploadPaintjob"], on_btnUploadPaintjob_clicked, false)
	end
	
	gui["editFilename"] = guiCreateEdit(520, 200, 91, 20, "file.bmp", false, gui["tabVehicleColors"])
	guiEditSetMaxLength(gui["editFilename"], 32767)
	
	gui["tabUpgrades"] = guiCreateTab("Rims + Upgrades", gui["modshopTabs"])
	
	gui["addUpgradeButton"] = guiCreateButton(400, 120, 111, 23, "Add upgrade", false, gui["tabUpgrades"])
	guiSetEnabled(gui["addUpgradeButton"], false)
	if on_addUpgradeButton_clicked then
		addEventHandler("onClientGUIClick", gui["addUpgradeButton"], on_addUpgradeButton_clicked, false)
	end
	
	gui["upgradeTable"] = guiCreateGridList(20, 24, 321, 311, false, gui["tabUpgrades"])
	guiGridListSetSortingEnabled(gui["upgradeTable"], false)
	gui["upgradeTable_col0"] = guiGridListAddColumn(gui["upgradeTable"], "Upgrade name", 0.311526)
	gui["upgradeTable_col1"] = guiGridListAddColumn(gui["upgradeTable"], "Upgrade ID", 0.311526)
	
	local upgradeTable_row = nil
	
	gui["delUpgradeButton"] = guiCreateButton(400, 150, 111, 23, "Remove upgrade", false, gui["tabUpgrades"])
	guiSetEnabled(gui["delUpgradeButton"], false)
	if on_delUpgradeButton_clicked then
		addEventHandler("onClientGUIClick", gui["delUpgradeButton"], on_delUpgradeButton_clicked, false)
	end
	
	gui["tabNeonlights"] = guiCreateTab("Neon lights", gui["modshopTabs"])
	
	gui["btnNeonGreen"] = guiCreateButton(90, 170, 75, 23, "Green", false, gui["tabNeonlights"])
	guiSetEnabled(gui["btnNeonGreen"], false)
	if on_btnNeonGreen_clicked then
		addEventHandler("onClientGUIClick", gui["btnNeonGreen"], on_btnNeonGreen_clicked, false)
	end
	
	gui["btnNeonOrange"] = guiCreateButton(260, 170, 75, 23, "Orange", false, gui["tabNeonlights"])
	guiSetEnabled(gui["btnNeonOrange"], false)
	if on_btnNeonOrange_clicked then
		addEventHandler("onClientGUIClick", gui["btnNeonOrange"], on_btnNeonOrange_clicked, false)
	end
	
	gui["btnNeonRed"] = guiCreateButton(430, 170, 75, 23, "Red", false, gui["tabNeonlights"])
	guiSetEnabled(gui["btnNeonRed"], false)
	if on_btnNeonRed_clicked then
		addEventHandler("onClientGUIClick", gui["btnNeonRed"], on_btnNeonRed_clicked, false)
	end
	
	gui["btnNeonYellow"] = guiCreateButton(90, 230, 75, 23, "Yellow", false, gui["tabNeonlights"])
	guiSetEnabled(gui["btnNeonYellow"], false)
	if on_btnNeonYellow_clicked then
		addEventHandler("onClientGUIClick", gui["btnNeonYellow"], on_btnNeonYellow_clicked, false)
	end
	
	gui["btnNeonAqua"] = guiCreateButton(260, 230, 75, 23, "Aqua", false, gui["tabNeonlights"])
	guiSetEnabled(gui["btnNeonAqua"], false)
	if on_btnNeonAqua_clicked then
		addEventHandler("onClientGUIClick", gui["btnNeonAqua"], on_btnNeonAqua_clicked, false)
	end
	
	gui["btnNeonRemove"] = guiCreateButton(244, 300, 111, 23, "Remove neon", false, gui["tabNeonlights"])
	guiSetEnabled(gui["btnNeonRemove"], false)
	if on_btnNeonRemove_clicked then
		addEventHandler("onClientGUIClick", gui["btnNeonRemove"], on_btnNeonRemove_clicked, false)
	end
	
	gui["label"] = guiCreateLabel(50, 30, 491, 91, "Click on the buttons with the corresponding colors you want for the neon lights. Click on the remove button to remove the neon lights.\n\nIf the buttons are not clickable, then it means you can not add neon to this vehicle.", false, gui["tabNeonlights"])
	guiLabelSetHorizontalAlign(gui["label"], "left", true)
	guiLabelSetVerticalAlign(gui["label"], "top")
	
	gui["tabCustomHorns"] = guiCreateTab("Custom horns", gui["modshopTabs"])
	
	gui["tabBuyExtras"] = guiCreateTab("Enable extra mods!", gui["modshopTabs"])
	
	gui["btnEnableExtras"] = guiCreateButton(90, 70, 431, 201, "Enable the extra mods for some new features in the modshop.\n\n- Custom horns\n- Neon lights\n\n\nPrice: <extras_price>", false, gui["tabBuyExtras"])
	if on_btnEnableExtras_clicked then
		addEventHandler("onClientGUIClick", gui["btnEnableExtras"], on_btnEnableExtras_clicked, false)
	end
	
	gui["labelCurrentVehicle"] = guiCreateLabel(320 + offsetX, 0 + offsetY, 311, 20, "Currently modding: N/A", false, parent)
	guiLabelSetHorizontalAlign(gui["labelCurrentVehicle"], "right", true)
	guiLabelSetVerticalAlign(gui["labelCurrentVehicle"], "top")
	
	return gui, widgetWidth, widgetHeight
end

-- End of DKR QT to Lua code --
