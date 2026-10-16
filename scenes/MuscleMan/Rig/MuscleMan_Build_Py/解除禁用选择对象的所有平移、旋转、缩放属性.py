import maya.cmds as cmds

ATTRS = ['tx', 'ty', 'tz', 'rx', 'ry', 'rz', 'sx', 'sy', 'sz']

sel = cmds.ls(selection=True)
for obj in sel:
    for a in ATTRS:
        attr = obj + '.' + a
        if cmds.objExists(attr):
            cmds.mute(attr, disable=True, force=True)
            print('已解除:', attr)