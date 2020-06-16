ITEM.name = "Yellow Beacon"
ITEM.throwent = "ix_beacon"
ITEM.throwforce = 650
ITEM.description = "beaconDesc"
ITEM.price = 80

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(98.124336242676, 82.42163848877, 60.427516937256),
	ang = Angle(25.154916763306, -139.95780944824, -42.897842407227),
	fov = 4.0647949973453,
	outline = true,
	outlineColor = Color(241, 196, 15),
}

function ITEM:EntConfigure(grd)
	grd:SetDTInt(0,1)
end