// Created by Crowbar 0.71

$modelname "weapons\tacint_shark\w_74u.mdl"

$bodygroup "gun"
{
	studio "w_74u.smd"
}
$bodygroup "stock"
{
	studio "74u_stockout.smd"
	studio "74u_stockin.smd"
}
$bodygroup "tacrail"
{
	blank
	studio "74u_rail.smd"
}
$bodygroup "muzzle"
{
	studio "w_74u_booster.smd"
	blank
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.712 -9.391 1.366

$cdmaterials "models\tacint\weapons\w_models\ak47\"
$cdmaterials "models\tacint\weapons\w_models\_accessories1\"
$cdmaterials "models\tacint_shark\weapons\74u\"
$cdmaterials "models\tacint_extras\ak47\"

$attachment "muzzle_flash" "ValveBiped.Bip01_R_Hand" 23 -1.10 -4 rotate 0 0 -90
$attachment "bolt" "ValveBiped.Bip01_R_Hand" 10 -1 -5 rotate 25 90 -90

$cbox 0 0 0 0 0 0

$bbox -14.616 -2.418 -6.08 33.398 1.049 8.812

$definebone "ValveBiped.Bip01_R_Hand" "" -1.187493 3.856107 -0.925095 0.820246 -90.000037 179.999978 0 0 0 0 0 0
$definebone "Box01" "ValveBiped.Bip01_R_Hand" 5.216261 -1.175498 -5.60718 0 -90.000037 179.179768 0 0 0 0 0 0
$definebone "ak47_bolt" "Box01" 0.079702 -2.0397 -0.787757 -1.126091 -90.000037 90.000037 0 0 0 0 0 0


$sequence "vm_idle" {
	"w_ak47_anims\vm_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "vm_reload" {
	"w_ak47_anims\vm_reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "vm_draw" {
	"w_ak47_anims\vm_draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle" {
	"w_ak47_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload" {
	"w_ak47_anims\reload.smd"
	activity "ACT_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "draw" {
	"w_ak47_anims\draw.smd"
	activity "ACT_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "attack1" {
	"w_ak47_anims\attack1.smd"
	activity "ACT_RANGE_ATTACK1" 1
	{ event 9001 0 "TI_MuzzleFlash" }
	{ event 6010 0 "1" }
	fadein 0.2
	fadeout 0.2
	fps 22
}

$sequence "attack2" {
	"w_ak47_anims\attack2.smd"
	activity "ACT_RANGE_ATTACK2" 1
	{ event 9001 0 "TI_Silenced" }
	{ event 6010 0 "1" }
	fadein 0.2
	fadeout 0.2
	fps 22
}

$collisionmodel "w_74u.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}

$keyvalues
{
	prop_data 
	{
		"base"		"Metal.Small"
	}
	qc_path models\weapons\w_models\w_ak47.qc
}
