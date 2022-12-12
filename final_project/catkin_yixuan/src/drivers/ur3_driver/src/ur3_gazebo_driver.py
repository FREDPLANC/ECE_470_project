#!/usr/bin/env python

import rospy
import random
import math

# UR3 messages
from ur3_driver.msg import command
from ur3_driver.msg import position
from ur3_driver.msg import gripper_input

from ur3_driver.msg import robot1_command
from ur3_driver.msg import robot2_command
from ur3_driver.msg import robot1_position
from ur3_driver.msg import robot2_position
from ur3_driver.msg import robot1_gripper_input
from ur3_driver.msg import robot2_gripper_input
from ur3_driver.msg import robot_position

from sensor_msgs.msg import JointState
from trajectory_msgs.msg import JointTrajectory
from trajectory_msgs.msg import JointTrajectoryPoint
from std_msgs.msg import Bool
from std_srvs.srv import Empty
from geometry_msgs.msg import Pose
from geometry_msgs.msg import Point
from gazebo_msgs.msg import LinkStates

gazebo_pos = None
gripper_is_on = False

gazebo_pos_2 = None
gripper_is_on_2 = False

def get_duration(dest, vel):
    global gazebo_pos
    if not gazebo_pos:
        return rospy.Time(0.0001)
    max_duration = -1
    for joint_idx in range(6):
        curr_duration = abs((dest[joint_idx] - gazebo_pos[joint_idx]) / vel)
        if curr_duration > max_duration:
            max_duration = curr_duration
    if max_duration < 0.0001:
        max_duration = 0.0001
    return rospy.Time(max_duration)

def get_duration_2(dest, vel):
    global gazebo_pos_2
    if not gazebo_pos_2:
        return rospy.Time(0.0001)
    max_duration = -1
    for joint_idx in range(6):
        curr_duration = abs((dest[joint_idx] - gazebo_pos_2[joint_idx]) / vel)
        if curr_duration > max_duration:
            max_duration = curr_duration
    if max_duration < 0.0001:
        max_duration = 0.0001
    return rospy.Time(max_duration)

# Callback function for the subscriber that subscribe to "ur3/command" topic.
def ctrl_sub_callback(data):
    global gripper_is_on

    # Joint Trajectory Setup
    jt = JointTrajectory()
    jt.joint_names = ['shoulder_pan_joint', 'shoulder_lift_joint',
    'elbow_joint', 'wrist_1_joint', 'wrist_2_joint', 'wrist_3_joint']
    pt = JointTrajectoryPoint()
    pt.positions = list(data.destination_1)
    pt.positions[0] -= math.pi
    pt.velocities = [0.0] * 6
    pt.accelerations = [0.0] * 6
    pt.time_from_start = get_duration(data.destination_1, data.v_1)
    jt.points = [pt]

    # Vacuum Gripper
    
    if data.io_0_1 and (not gripper_is_on):
        # gripper_on_srv_0 = rospy.ServiceProxy('/gripper/on', Empty)
        gripper_on_srv_0 = rospy.ServiceProxy('/gripper/on', Empty)
        gripper_on_srv_0()
        gripper_is_on = True
    elif (not data.io_0_1) and gripper_is_on:
        # gripper_off_srv_0 = rospy.ServiceProxy('/gripper/off', Empty)
        gripper_off_srv_0 = rospy.ServiceProxy('/gripper/off', Empty)
        gripper_off_srv_0()
        gripper_is_on = False

    cmd_pub.publish(jt)


def ctrl_sub_2_callback(data):
    global gripper_is_on_2

    # Joint Trajectory Setup
    jt = JointTrajectory()
    jt.joint_names = ['shoulder_pan_joint', 'shoulder_lift_joint',
    'elbow_joint', 'wrist_1_joint', 'wrist_2_joint', 'wrist_3_joint']
    pt = JointTrajectoryPoint()
    pt.positions = list(data.destination_2)
    pt.positions[0] -= math.pi
    pt.velocities = [0.0] * 6
    pt.accelerations = [0.0] * 6
    pt.time_from_start = get_duration_2(data.destination_2, data.v_2)
    jt.points = [pt]

    # Vacuum Gripper
    
    if data.io_0_2 and (not gripper_is_on_2):
        gripper_on_srv_1 = rospy.ServiceProxy('/gripper1/on', Empty)
        gripper_on_srv_1()
        gripper_is_on_2 = True
    elif (not data.io_0_2) and gripper_is_on_2:
        gripper_off_srv_1 = rospy.ServiceProxy('/gripper1/off', Empty)
        gripper_off_srv_1()
        gripper_is_on_2 = False



    cmd_pub_2.publish(jt)

# Callback function for the subscriber that subscribe to "joint_states"
def gazebo_pos_sub_callback(data):
    global gazebo_pos
    gazebo_pos = list(data.position_1)
    gazebo_pos = [gazebo_pos[2] + math.pi, gazebo_pos[1], gazebo_pos[0],
                  gazebo_pos[3], gazebo_pos[4], gazebo_pos[5]]
    pos_msg = robot1_position()
    pos_msg.position_1 = gazebo_pos
    pos_msg.isReady_1 = True
    pos_pub.publish(pos_msg)


# Callback function for the subscriber that subscribe to "joint_states"
def gazebo_pos_sub_callback_2(data):
    global gazebo_pos_2
    gazebo_pos_2 = list(data.position_2)
    gazebo_pos_2 = [gazebo_pos_2[2] + math.pi, gazebo_pos_2[1], gazebo_pos_2[0],
                  gazebo_pos_2[3], gazebo_pos_2[4], gazebo_pos_2[5]]
    pos_msg = robot2_position()
    pos_msg.position_2 = gazebo_pos_2
    pos_msg.isReady_2 = True
    pos_pub_2.publish(pos_msg)

# Callback function for the subscriber that subscribe to "gripper/grasping"
def gripper_sub_callback(data):
    global gripper_is_on
    g_in = robot1_gripper_input()
    if gripper_is_on:
        if data.data:
            g_in.DIGIN_1 = 1
            g_in.AIN0_1 = 1.89 + 0.02 * random.random() 
        else:
            g_in.DIGIN_1 = 0
            g_in.AIN0_1 = 1.45 + 0.02 * random.random()
    else:
        g_in.DIGIN_1 = 0
        g_in.AIN0_1 = 1.05 + 0.02 * random.random()
    g_in.AIN1_1 = 0.00470
    gripper_input_pub.publish(g_in)

def gripper_sub_callback_2(data):
    global gripper_is_on_2
    g_in = robot2_gripper_input()
    if gripper_is_on_2:
        if data.data:
            g_in.DIGIN_2 = 1
            g_in.AIN0_2 = 1.89 + 0.02 * random.random() 
        else:
            g_in.DIGIN_2 = 0
            g_in.AIN0_2 = 1.45 + 0.02 * random.random()
    else:
        g_in.DIGIN_2 = 0
        g_in.AIN0_2 = 1.05 + 0.02 * random.random()
    g_in.AIN1_2 = 0.00470
    gripper_input_pub_2.publish(g_in)

# Callback function for the subscriber that subscribe to "gazebo/link_states"
def link_states_sub_callback(data):
    for i in range(len(data.name)):
        if data.name[i] == 'robot::vacuum_gripper':
            gripper_pose = data.pose[i]
            gripper_position_pub.publish(gripper_pose.position)
            return
# Callback function for the subscriber that subscribe to "gazebo/link_states"
def link_states_sub_callback_2(data):
    for i in range(len(data.name)):
        if data.name[i] == 'robot2::vacuum_gripper':
            gripper_pose = data.pose[i]
            gripper_position_pub_2.publish(gripper_pose.position)
            return

if __name__ == '__main__':
    # Initialize ROS node
    rospy.init_node('ur3_gazebo_driver', anonymous=True)
    rate = rospy.Rate(10)

    rospy.Subscriber('joint_states', JointState, gazebo_pos_sub_callback)
    rospy.Subscriber('joint_states', JointState, gazebo_pos_sub_callback_2)

    rospy.Subscriber('ur3_0/command', robot1_command, ctrl_sub_callback)
    rospy.Subscriber('ur3_1/command', robot2_command, ctrl_sub_2_callback)

    rospy.Subscriber('gripper/grasping', Bool, gripper_sub_callback)
    rospy.Subscriber('gazebo/link_states', LinkStates, link_states_sub_callback)

    rospy.Subscriber('gripper1/grasping1', Bool, gripper_sub_callback_2)
    rospy.Subscriber('gazebo/link_states', LinkStates, link_states_sub_callback_2)

    
    
    pos_pub = rospy.Publisher('ur3_0/position', robot1_position, queue_size=10)
    pos_pub_2 = rospy.Publisher('ur3_1/position', robot2_position, queue_size=10)

    cmd_pub = rospy.Publisher('robot/arm_controller/command', JointTrajectory, queue_size=10)
    cmd_pub_2 = rospy.Publisher('robot2/arm_controller/command', JointTrajectory, queue_size=10)

    gripper_input_pub = rospy.Publisher('ur3_0/gripper_input', robot1_gripper_input, queue_size=10)
    gripper_position_pub = rospy.Publisher('gripper/position', Point, queue_size=10)

    gripper_input_pub_2 = rospy.Publisher('ur3_1/gripper_input', robot2_gripper_input, queue_size=10)
    gripper_position_pub_2 = rospy.Publisher('gripper1/position', Point, queue_size=10)

    try:
        while not rospy.is_shutdown():

            rate.sleep()
    except rospy.ROSInterruptException:
        pass
