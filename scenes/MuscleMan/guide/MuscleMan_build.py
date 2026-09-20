import maya.cmds as cmds  
import rig_game.build.parts.buildPart as Part
from rig_game.libs.compatibility_module import reload_module
reload_module(Part)

def init_binding():
	mp = r'E:\UE_Project\MyWorld_Maya\scenes\MuscleMan\guide\MuscleMan_mesh.ma'
	gp = r'E:\UE_Project\MyWorld_Maya\scenes\MuscleMan\guide\MuscleMan_guide.ma'
	cmds.file(new = True,f = True)
	#cmds.modelEditor('modelPanel4', edit=True, displayTextures=True)
	cmds.setAttr("hardwareRenderingGlobals.multiSampleEnable",1)
	root = Part.bulid_module(moudle_type = 'root', 
												side = 'Cn',
												part = 'root',
												model_path = mp,
												guide_path = gp)

	cmds.viewFit('perspShape',fitFactor = 1 ,all = True,animate = True)



	import pymel.core as pm

	pm.select('Hips')
	pm.mel.eval('joint -e  -oj xyz -secondaryAxisOrient zup -ch -zso;')
	pm.select('Spine2')
	pm.mel.eval('joint -e  -oj none -ch -zso;')
	pm.select('Neck','RightShoulder')
	pm.mel.eval('joint -e  -oj xyz -secondaryAxisOrient zup -ch -zso;')

	pm.select('RightHand')
	pm.mel.eval('joint -e  -oj none -ch -zso;')
	pm.select('RightHandThumb1','RightHandIndex1','RightHandMiddle1','RightHandRing1','RightHandPinky1')
	pm.mel.eval('joint -e  -oj xyz -secondaryAxisOrient zup -ch -zso;')

	pm.select('Right_trapezius_end','Right_scapula_end',
			'HeadTop_End','jaw_end',
			'RightHandThumb4','RightHandIndex4','RightHandMiddle4','RightHandRing4','RightHandPinky4')
	pm.mel.eval('joint -e  -oj none -ch -zso;')

	pm.select('RightFoot')
	pm.mel.eval('joint -e  -oj none -ch -zso;')

	pm.select('RightToeBase')
	pm.mel.eval('joint -e  -oj xyz -secondaryAxisOrient xup -ch -zso;')

	for i in ['RightToe_End','RightToe_in','RightToe_out','RightToe_ball','Right_breast','Right_latissimus_dorsi']:
		pm.select('FitSkeleton')
		pm.select(i,add = True)
		constraint = pm.parentConstraint(mo = False,weight = 1,skipTranslate = ['x','y','z'])
		pm.delete(constraint)
		pm.select(i)
		pm.mel.eval('makeIdentity -apply true -t 1 -r 1 -s 1 -n 0 -pn 1;')
		

	mirror_list = ['RightShoulder','RightUpLeg',
			'Right_latissimus_dorsi','Right_breast','Right_clavicles',
			]

	for i in mirror_list:
		pm.select(i)
		pm.mel.eval('mirrorJoint -mirrorYZ -mirrorBehavior -searchReplace "Right" "Left";')




def build():


	hip = Part.bulid_module(moudle_type = 'hip',
												side = 'Cn',
												part = 'hip',
												offset_hip = -0.5,
												ctrl_scale = 22,
												guide_list = 'Hips')


	chest = Part.bulid_module(moudle_type = 'chest',
												side = 'Cn',
												part = 'chest',
												ctrl_scale = 18,
												axis='x',  
												guide_list = 'Spine2')


	head = Part.bulid_module(moudle_type = 'head',
												side = 'Cn',
												part = 'head',
												ctrl_scale = 10,
												guide_list = 'Head')


	spine = Part.bulid_module(moudle_type = 'spine',
												side = 'Cn',
												part = 'spine',
												ctrl_scale = 25,
												joint_num = 5, 
												axis='x',  
												guide_list = ['Hips','Spine','Spine1','Spine2'],)









	neck = Part.bulid_module(moudle_type = 'neck',
												side = 'Cn',
												part = 'neck',
												ctrl_scale = 10,
												joint_num = 3,
												fk_offset = True,
												axis='x',  
												guide_list = ['Neck','Head'])










		




	fw_list = ['Left','Right']
	arm_guide_list = ['Arm','ForeArm','Hand']	
	leg_guide_list = ['UpLeg','Leg','Foot']	


	for i in fw_list:


		guide_list = [i+'Shoulder',i+'Arm']
		guide_list_correction = [i+'_clavicles',i+'_acromion',
								i+'_trapezius',i+'_trapezius_end',
								i+'_scapula',i+'_scapula_middle',i+'_scapula_end',
								i+'_breast',i+'_latissimus_dorsi',]
								
		clavicle = Part.bulid_module(	moudle_type = 'clavicle',
										side = i,
										part = 'clavicle',
										guide_list = guide_list,
										guide_list_correction = guide_list_correction,
										ctrl_scale = 12,
										local_orient =False)



		arm = Part.bulid_module(	moudle_type = 'bipedLimb',
										side = i,          
										part = 'arm',         
										guide_list = [i+'Arm',i+'ForeArm',i+'Hand'],   
										name = ['Shoulder','Elbow','Wrist'],
										use_pad = False,
										ctrl_scale = 6,
										create_ik = True,
										create_fk = True,    
										stretchy = True,
										lock = True,
										axis = 'x',
										segments = 0,      
										twisty = True,        
										bendy = True,          
										offset_pv = 0)


		leg = Part.bulid_module(	moudle_type = 'bipedLimb',
										side = i,          
										part = 'leg',         
										guide_list = [i+'UpLeg',i+'Leg',i+'Foot'],   
										name = ['Hip','Knee','Ankle'],
										use_pad = False,
										ctrl_scale = 8,
										create_ik = True,
										create_fk = True,    
										stretchy = True, 
										lock = True,
										segments = 0,  
										axis = 'x',    
										twisty = True,        
										bendy = True,    
										offset_pv = 0)
		

		hand = Part.bulid_module(moudle_type = 'hand',
												side = i,
												part = 'hand',
												ctrl_scale = 10,
												local_orient =True,
												guide_list = i+'Hand')


		foot = Part.bulid_module(moudle_type = 'foot',
												side = i,
												part = 'foot',
												ctrl_scale = 12,
												axis='x',   
												guide_list = [i+'Foot',i+'ToeBase',i+'Toe_End'],
												
												local_orient =False,
												in_piv = i+'Toe_in',       
												out_piv = i+'Toe_out',
												heel_piv = i+'Toe_ball',
												toe_piv = i+'Toe_End')
												
												
												

		for o in ['HandThumb','HandIndex','HandMiddle','HandRing','HandPinky']:
			guide_list = [i+o+'1',i+o+'2',i+o+'3',i+o+'4']
			finger = Part.bulid_module(	moudle_type = 'finger',
										side = i,
										part = o,
										guide_list = guide_list,
										name = [o,o,o,o],
										use_pad = True,
										pad = 'auto',
										axis='x',   
										ctrl_scale = 1,
										remove_last = True)




	switch = Part.bulid_module(moudle_type = 'switch',
											side = 'cn',
											part = 'switch',
											ctrl_scale = 1)


	'''for o in fw_list:
		corrective = Part.bulid_module(moudle_type = 'corrective',
									side = o,
									axis='y', 
									part = 'corrective',
									polygon = 'body_mesh',
									hip = True)
	'''

		

	import rig_game.post.finalize as finalize
	reload_module(finalize)



	finalize=finalize.finalize_rig(bind = True)
	#finalize=finalize.finalize_rig()
	#add_bind = finalize.add_bind()


	import rig_game.post.datalO.controls as controls
	reload_module(controls)

	directory = r'E:\UE_Project\MyWorld_Maya\scenes\MuscleMan\guide\controls'

	#controls_write=controls.write_controls(directory ,name= 'controls',force = True)
	controls_read = controls.read_controls(directory,controls_file = 'controls.json')
	#controls_mirror = controls.mirror_controls()

	import rig_game.post.datalO.weights as weights
	reload_module(weights)

	directory = r'E:\UE_Project\MyWorld_Maya\scenes\MuscleMan\guide\weights'
	#weights_write=weights.write_skin(directory ,name= 'skin_weights',force = True)

	#weight_read = weights.read_skin(directory ,weighes_file = 'skin_weights.json')


	import rig_game.post.datalO.mocap as mocap
	reload_module(mocap)
	#mocap.mocap_rig(dirver_namespace = 'Dancing:mixamorig',bake = True,delete_mocap_rig = True)
	#mocap.mocap_joint_to_ctrl_rig(dirver_namespace = 'Silly_Dancing:mixamorig:',driven_namespace = None)






def rebuild():
    # 检查 RIG 是否存在
    if cmds.objExists('RIG'):
        children = cmds.listRelatives('RIG', children=True) or []
        for part in children:
            print(part)
            if part != 'Cn_root':
                cmds.delete(part)
    
    # 检查 hip_JNT 是否存在
    if cmds.objExists('hip_JNT'):
        cmds.delete('hip_JNT')
    
    if cmds.objExists('FitSkeleton'):
        cmds.hide('FitSkeleton')

    # 重新生成绑定
    build()


def ToggleFit():
    for part in cmds.listRelatives('RIG'):
        print(part)
        if part!='Cn_root':
            cmds.hide(part)
    cmds.showHidden('FitSkeleton')


init_binding()
rebuild()

#ToggleFit()

