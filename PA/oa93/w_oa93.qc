// Created by Crowbar 0.72

$modelname "weapons\tacint_extras\w_oa93.mdl"

$bodygroup "gun"
{
	studio "w_oa93.smd"
}
$bodygroup "irons"
{
	studio "w_oa93_irons.smd"
	blank
}

$surfaceprop "weapon"

$contents "solid"

$illumposition -0.191 -7.886 2.768

$cdmaterials "models\tacint_extras\oa93\"
$cdmaterials "models\tacint\weapons\v_models\m4\"
$cdmaterials "models\tacint\weapons\v_models\aug\"

$attachment "muzzle_flash" "ValveBiped.Bip01_R_Hand" 25.1 -2.5 -5.5 rotate 0 -2 -90
$attachment "bolt" "ValveBiped.Bip01_R_Hand" 9.5 -1 -4.7 rotate 25 90 -90

$cbox 0 0 0 0 0 0

$bbox -12.39 -3.308 -4.35 28.093 2.926 9.886

$definebone "ValveBiped.Bip01_R_Hand" "" -1.187493 3.856107 -0.925095 0.820232 -93.019964 -180.000005 0 0 0 0 0 0
$definebone "Box01" "ValveBiped.Bip01_R_Hand" 5.216259 -1.175498 -5.60718 -0.000019 -90.000016 179.179754 0 0 0 0 0 0
$definebone "ak47_bolt" "Box01" 0.079702 -2.0397 -0.787757 -1.126075 -90.000016 90.000016 0 0 0 0 0 0

$sequence "vm_idle" {
	"w_m4_anims\vm_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "vm_reload" {
	"w_m4_anims\vm_reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "vm_draw" {
	"w_m4_anims\vm_draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle" {
	"w_m4_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload" {
	"w_m4_anims\reload.smd"
	activity "ACT_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "draw" {
	"w_m4_anims\draw.smd"
	activity "ACT_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "attack1" {
	"w_m4_anims\attack1.smd"
	activity "ACT_RANGE_ATTACK1" 1
	{ event 9001 0 "TI_MuzzleFlash_X" }
	{ event 6010 0 "1" }
	fadein 0.2
	fadeout 0.2
	fps 22
}

$sequence "attack2" {
	"w_m4_anims\attack2.smd"
	activity "ACT_RANGE_ATTACK2" 1
	{ event 9001 0 "TI_Silenced" }
	{ event 6010 0 "1" }
	fadein 0.2
	fadeout 0.2
	fps 22
}

$collisionmodel "w_oa93.smd"
{
	$mass 4
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}


