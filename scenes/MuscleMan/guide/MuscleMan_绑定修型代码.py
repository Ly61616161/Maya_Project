# -*- coding: utf-8 -*-
import csv
import math
import pymel.core as pm
import maya.cmds as cmds


# 1. 检测文件编码
def detect_encoding(file_path):
    encodings = ['utf-8-sig', 'gbk', 'gb18030', 'utf-8']
    for enc in encodings:
        try:
            with open(file_path, 'r', encoding=enc) as f:
                f.read()
            return enc
        except UnicodeDecodeError:
            continue
    return 'utf-8'  # 默认


# 读取csv文件
csv_file = r'E:\UE_Project\MyWorld_Maya\scenes\MuscleMan\guide\MuscleMan_绑定修型数据.csv'
encoding = detect_encoding(csv_file)
print(encoding)
with open(csv_file, 'r', encoding=encoding) as f:
    reader = csv.reader(f)
    for row in reader:
        if row:
            print(row)




#表格添加数据函数
def append_row_to_csv(csv_path, new_row_dict):
    """
    在 CSV 末尾新增一行（按表头字典）
    """
    encoding = detect_encoding(csv_path)
    with open(csv_path, 'r', encoding=encoding) as f:
        headers = list(csv.DictReader(f).fieldnames)

    with open(csv_path, 'a', newline='', encoding=encoding) as f:
        writer = csv.DictWriter(f, fieldnames=headers)
        writer.writerow(new_row_dict)

    print('✅ 已添加新行: {}'.format(new_row_dict))

# 使用
new_entry = {
    '驱动骨骼名称': 'Left_leg_JNT',
    '被驱动骨骼': 'Left_leg_corrective_JNT',
    '驱动轴': 'x',
    '输入角度': '90',
    'translate': '(0.1,0.3,0.0)',
    'rotate': '(0.3,0.8,0.5)',
    'scale': '(0.5,1.0,0.2)',

}
#append_row_to_csv('E:/绑定修型数据.csv', new_entry)



#获取节点位移、旋转、缩放数据
def get_trs_data(node,decimals=6, zero_threshold=0.0001):
    '''获取节点位移、旋转、缩放数据'''
    # 定义需要获取的属性列表：位移、旋转、缩放
    attribute_list = ['translate', 'rotate', 'scale']
    axes_list = ['X', 'Y', 'Z']
    
    attribute_value_list = []
    
    for attr in attribute_list:
        key_value = []
        for axis in axes_list:
            attr_name = "{}.{}{}".format(node, attr, axis)
            # 获取属性值
            value = cmds.getAttr(attr_name)


            '''# 简化数值
            # 1. 极小值归零
            if abs(value) < zero_threshold:
                value = 0.0
            # 2. 四舍五入到指定小数位
            else:
                value = round(value, decimals)'''

            key_value.append(value)
        attribute_value_list.append(key_value)
    
    trs_info = {
        'translate': attribute_value_list[0],  # [X, Y, Z]
        'rotate': attribute_value_list[1],     # [X, Y, Z]
        'scale': attribute_value_list[2]       # [X, Y, Z]
    }
    
    return trs_info


#生成驱动数据字典列表
def get_drive_data_from_maya(drive_ctrl,drive_joint,driven_joint_list,axis = 'rz'):

    # 获取驱动骨骼的旋转值，根据指定轴获取对应的角度
    drive_value = get_trs_data(drive_ctrl)
    drive_translate = tuple(drive_value['translate'])
    drive_rotate = tuple(drive_value['rotate'])
    drive_scale = tuple(drive_value['scale'])
    if axis == 'angle':
        angle = cmds.getAttr(drive_joint + '.angle')
    elif axis == 'up_angle':
        angle = cmds.getAttr(drive_joint + '.up_angle')
    elif axis == 'front_angle':
        angle = cmds.getAttr(drive_joint + '.front_angle')

    else:
        if axis == 'rx':
            angle = drive_rotate[0]
        elif axis == 'ry':
            angle = drive_rotate[1]
        elif axis == 'rz':
            angle = drive_rotate[2]
        elif axis == 'tx':
            angle = drive_translate[0]
        elif axis == 'ty':
            angle = drive_translate[1]
        elif axis == 'tz':
            angle = drive_translate[2]
        elif axis == 'sx':
            angle = drive_scale[0]
        elif axis == 'sy':
            angle = drive_scale[1]
        elif axis == 'sz':
            angle = drive_scale[2]


    drive_list_data = []

    for driven_joint in driven_joint_list:
        driven_value = get_trs_data(driven_joint)
        translate = tuple(driven_value['translate'])
        rotate = tuple(driven_value['rotate'])
        scale = tuple(driven_value['scale'])

        drive_data = {
            '驱动骨骼名称': drive_joint,
            '被驱动骨骼名称': driven_joint,
            '驱动轴': axis,
            '驱动角度': angle,
            'translate': translate,
            'rotate': rotate,
            'scale': scale,
        }
        drive_list_data.append(drive_data)

    return drive_list_data




#添加驱动数据到csv
drive_ctrl = 'Right_Hip_fk_CTRL'
drive_joint = 'Right_Hip_JNT'
driven_joint_list = cmds.ls(sl=1)


frames = cmds.keyframe(drive_ctrl, query=True, timeChange=True)
if frames:
    frames = sorted(set(frames))


for frame in frames:
    cmds.currentTime(frame)

    new_entry=get_drive_data_from_maya(drive_ctrl,drive_joint,driven_joint_list,axis = 'front_angle')
    for i in new_entry:
        append_row_to_csv(r'E:\UE_Project\MyWorld_Maya\scenes\MuscleMan\guide\MuscleMan_绑定修型数据.csv', i)



new_entry=get_drive_data_from_maya(drive_ctrl,drive_joint,driven_joint_list,axis = 'angle')
for i in new_entry:
    append_row_to_csv(r'E:\UE_Project\MyWorld_Maya\scenes\MuscleMan\guide\MuscleMan_绑定修型数据_Hip.csv', i)
    
angle
front_angle








#读取csv表格数据
def load_csv_to_dict_list(csv_path):
    """
    从 CSV 读取数据，返回字典列表
    每个字典的格式和 drive_data 一致
    """

    encoding = detect_encoding(csv_file)
    data_list = []
    
    with open(csv_path, 'r', encoding=encoding) as f:
        reader = csv.DictReader(f)
        
        for row in reader:
            # 从 CSV 读到的都是字符串，需要转换类型
            
            # 转换 translate / rotate / scale（格式如 "(0.1,0.3,0.0)"）
            translate = parse_tuple(row.get('translate', '(0,0,0)'))
            rotate = parse_tuple(row.get('rotate', '(0,0,0)'))
            scale = parse_tuple(row.get('scale', '(1,1,1)'))
            
            # 组装成 drive_data 格式
            drive_data = {
                '驱动骨骼名称': row.get('驱动骨骼名称', ''),
                '被驱动骨骼名称': row.get('被驱动骨骼名称', ''),
                '驱动轴': row.get('驱动轴', 'x'),
                '驱动角度': float(row.get('驱动角度', 0)),
                'translate': translate,
                'rotate': rotate,
                'scale': scale,
            }
            
            data_list.append(drive_data)
    
    return data_list



def parse_tuple(text):
    """
    把 "(0.1,0.3,0.0)" 格式的字符串转换成 (0.1, 0.3, 0.0) 元组
    """
    if not text:
        return (0, 0, 0)
    
    # 去掉括号，按逗号分割
    text = text.strip('()')
    values = text.split(',')
    
    # 转成浮点数
    return tuple(float(v) for v in values)


# ========== 使用示例 ==========

# 1. 从 CSV 读取所有数据
csv_path = r'E:\UE_Project\MyWorld_Maya\scenes\MuscleMan\guide\MuscleMan_绑定修型数据_Hip.csv'
all_data = load_csv_to_dict_list(csv_path)



# 3. 遍历每条数据
for item in all_data:
    print(item)
    #print("---")
    
# 2. 打印看看读到了多少条
print(f"✅ 从 CSV 读取了 {len(all_data)} 条数据")

# 4. 按条件查找（比如找某个骨骼）
for item in all_data:
    if 'Left_Elbow_JNT' in item['驱动骨骼名称']:
        if '90' in str(item['驱动角度']): 
            print(f"找到: {item}")
            



# ========== 5. 设置驱动关键帧 ==========


# ========== 按 (驱动骨骼, 轴, 角度) 分组 ==========
grouped_data = {}

for item in all_data:
    driver_name = item['驱动骨骼名称']
    axis = item['驱动轴']
    angle = item['驱动角度']
    
    key = (driver_name, axis, angle)
    
    if key not in grouped_data:
        grouped_data[key] = []
    
    grouped_data[key].append(item)




#断开属性连接函数
def disconnect_and_record(target):
    """
    断开目标属性的所有连接，并记录
    返回: [(源, 目标), ...]
    """
    connections = cmds.listConnections(target, source=True, destination=False, plugs=True)
    
    if not connections:
        print('⚠️ {} 没有被连接'.format(target))
        return []
    
    recorded = []
    
    for src in connections:
        if cmds.isConnected(src, target):
            recorded.append((src, target))
            cmds.disconnectAttr(src, target)
            print(f'🔹 已断开 {src} → {target}')
    
    return recorded



#重新属性连接函数
def reconnect(recorded):
    """
    手动重新连接
    recorded: [(源, 目标), ...]
    """
    for src, target in recorded:
        cmds.connectAttr(src, target, force=True)
        print('🔹 已重新连接 {} → {}'.format(src, target))
        



#获取需要断开的属性,并断开连接
disconnect_list = []

for (driver_name, axis, angle), items in grouped_data.items():
    key = (driver_name, axis)
    if key not in disconnect_list:
        disconnect_list.append(key)

targets = ['{}.{}'.format(driver,axis) for driver, axis in disconnect_list]
print(targets)

all_recorded = []
for target in targets:
    recorded = disconnect_and_record(target)
    all_recorded.extend(recorded)


# 全部重新连接
reconnect(all_recorded)
        
        
















# ========== 打印并设置驱动关键帧 ==========
for (driver_name, axis, angle), items in grouped_data.items():
    
    print(f"\n{'='*60}")
    print(f"🔹 驱动骨骼: {driver_name}")
    print(f"   轴: {axis}")
    print(f"   角度: {angle}°")
    print(f"   共 {len(items)} 条数据")
    print(f"{'-'*60}")
    if cmds.objExists(driver_name):

        cmds.setAttr(driver_name + '.'+axis , angle) 
        driver_name_currentDriver = driver_name + '.' + axis


    for idx, sub_item in enumerate(items, 1):
        driven_name = sub_item['被驱动骨骼名称']
        print(f"   [{idx}] {driven_name}")
        print(f"       translate: {sub_item['translate']}")
        print(f"       rotate:    {sub_item['rotate']}")
        print(f"       scale:     {sub_item['scale']}")
    
        if cmds.objExists(sub_item['被驱动骨骼名称']):

            # translate
            cmds.setAttr(sub_item['被驱动骨骼名称'] + '.translateX', sub_item['translate'][0])
            cmds.setAttr(sub_item['被驱动骨骼名称'] + '.translateY', sub_item['translate'][1])
            cmds.setAttr(sub_item['被驱动骨骼名称'] + '.translateZ', sub_item['translate'][2])

            # rotate
            cmds.setAttr(sub_item['被驱动骨骼名称'] + '.rotateX', sub_item['rotate'][0])
            cmds.setAttr(sub_item['被驱动骨骼名称'] + '.rotateY', sub_item['rotate'][1])
            cmds.setAttr(sub_item['被驱动骨骼名称'] + '.rotateZ', sub_item['rotate'][2])

            # scale
            cmds.setAttr(sub_item['被驱动骨骼名称'] + '.scaleX', sub_item['scale'][0])
            cmds.setAttr(sub_item['被驱动骨骼名称'] + '.scaleY', sub_item['scale'][1])
            cmds.setAttr(sub_item['被驱动骨骼名称'] + '.scaleZ', sub_item['scale'][2])

            
            # 记录当前状态,并设置驱动关键帧
            for xyz in ['X', 'Y', 'Z']:
                cmds.setDrivenKeyframe(
                    sub_item['被驱动骨骼名称'],           # 被驱动骨骼
                    attribute='translate' + xyz,       # 被驱动属性
                    currentDriver=driver_name_currentDriver  # 驱动骨骼.驱动属性
                )
                cmds.setDrivenKeyframe(
                    sub_item['被驱动骨骼名称'],           # 被驱动骨骼
                    attribute='rotate' + xyz,       # 被驱动属性
                    currentDriver=driver_name_currentDriver  # 驱动骨骼.驱动属性
                )
                cmds.setDrivenKeyframe(
                    sub_item['被驱动骨骼名称'],           # 被驱动骨骼
                    attribute='scale' + xyz,       # 被驱动属性
                    currentDriver=driver_name_currentDriver  # 驱动骨骼.驱动属性
                )

            








