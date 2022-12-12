#!/usr/bin/env python

import sys
import copy
import time
import rospy

import numpy as np
from project_header import *
from project_func import *
from blob_search import *


# ========================= Student's code starts here =========================

# Position for UR3 not blocking the camera
go_away = [270*PI/180.0, -90*PI/180.0, 90*PI/180.0, -90*PI/180.0, -90*PI/180.0, 135*PI/180.0]
go_down = [270*PI/180.0, -90*PI/180.0, 90*PI/180.0, -90*PI/180.0, 0*PI/180.0, 135*PI/180.0]
# Store world coordinates of green and yellow blocks
xw_yw_G = []
xw_yw_Y = []
xw_yw_target_Blue = []

destination_G = [(0.025,0.05,0.04)] # this G is used for the Green Block detection
destination_Y = [(0.025,0.025,0.02)] # this Y is used for the orange Block detection
mid_angle = [0.0,0.0,0.0,0.0,0.0,0.0] # middle point for moving the arm


# Any other global variable you want to define
# Hints: where to put the blocks?


# ========================= Student's code ends here ===========================

################ Pre-defined parameters and functions no need to change below ################

# 20Hz
SPIN_RATE = 20

# UR3 home location
home = [0*PI/180.0, 0*PI/180.0, 0*PI/180.0, 0*PI/180.0, 0*PI/180.0, 0*PI/180.0]

# UR3 current position, using home position for initialization
current_position_1 = copy.deepcopy(home)
current_position_2 = copy.deepcopy(home)

thetas_1 = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
thetas_2 = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0]

digital_in_0_1 = 0
digital_in_0_2 = 0

analog_in_0_1 = 0.0
analog_in_0_2 = 0.0

suction_on = True
suction_off = False

current_io_0_1 = False
current_position_set_1 = False

current_io_0_2 = False
current_position_set_2 = False

image_shape_define = False


"""
Whenever ur3/gripper_input publishes info this callback function is called.
"""
def input_callback(msg):

    global digital_in_0_1
    digital_in_0_1 = msg.DIGIN_1
    digital_in_0_1 = digital_in_0_1 & 1 # Only look at least significant bit, meaning index 0

def input_callback_2(msg):

    global digital_in_0_2
    digital_in_0_2 = msg.DIGIN_2
    digital_in_0_2 = digital_in_0_2 & 1 # Only look at least significant bit, meaning index 0
"""
Whenever ur3/position publishes info, this callback function is called.
"""
def position_callback(msg):

    global thetas_1
    global current_position_1
    global current_position_set_1

    thetas_1[0] = msg.position_1[0]
    thetas_1[1] = msg.position_1[1]
    thetas_1[2] = msg.position_1[2]
    thetas_1[3] = msg.position_1[3]
    thetas_1[4] = msg.position_1[4]
    thetas_1[5] = msg.position_1[5]

    current_position_1[0] = thetas_1[0]
    current_position_1[1] = thetas_1[1]
    current_position_1[2] = thetas_1[2]
    current_position_1[3] = thetas_1[3]
    current_position_1[4] = thetas_1[4]
    current_position_1[5] = thetas_1[5]

    current_position_set_1 = True


def position_callback_2(msg):

    global thetas_2
    global current_position_2
    global current_position_set_2

    thetas_2[0] = msg.position_2[0]
    thetas_2[1] = msg.position_2[1]
    thetas_2[2] = msg.position_2[2]
    thetas_2[3] = msg.position_2[3]
    thetas_2[4] = msg.position_2[4]
    thetas_2[5] = msg.position_2[5]

    current_position_2[0] = thetas_2[0]
    current_position_2[1] = thetas_2[1]
    current_position_2[2] = thetas_2[2]
    current_position_2[3] = thetas_2[3]
    current_position_2[4] = thetas_2[4]
    current_position_2[5] = thetas_2[5]

    current_position_set_2 = True
"""
Function to control the suction cup on/off
"""
def gripper(pub_cmd, loop_rate, io_0,pos):

    global SPIN_RATE
    global thetas_1
    global current_io_0_1
    global current_position_1

    error = 0
    spin_count = 0
    at_goal = 0

    current_io_0_1 = io_0

    driver_msg = robot1_command()
    driver_msg.destination_1 = pos
    driver_msg.v_1 = 1.0
    driver_msg.a_1 = 1.0
    driver_msg.io_0_1 = io_0
    pub_cmd.publish(driver_msg)
    loop_rate.sleep()
    # while(at_goal == 0):

    #     if( abs(thetas_1[0]-driver_msg.destination_1[0]) < 0.0005 and \
    #         abs(thetas_1[1]-driver_msg.destination_1[1]) < 0.0005 and \
    #         abs(thetas_1[2]-driver_msg.destination_1[2]) < 0.0005 and \
    #         abs(thetas_1[3]-driver_msg.destination_1[3]) < 0.0005 and \
    #         abs(thetas_1[4]-driver_msg.destination_1[4]) < 0.0005 and \
    #         abs(thetas_1[5]-driver_msg.destination_1[5]) < 0.0005 ):

    #         #rospy.loginfo("Goal is reached!")
    #         at_goal = 1

    #     loop_rate.sleep()

    #     if(spin_count >  SPIN_RATE*5):

    #         pub_cmd.publish(driver_msg)
    #         rospy.loginfo("Just published again driver_msg")
    #         spin_count = 0

    #     spin_count = spin_count + 1

    return error

"""
Function to control the suction cup on/off
"""
def gripper_2(pub_cmd, loop_rate, io_0, pos):

    global SPIN_RATE
    global thetas_2
    global current_io_0_2
    global current_position_2

    error = 0
    spin_count = 0
    at_goal = 0
   
    current_io_0_2 = io_0

    driver_msg = robot2_command()
    driver_msg.destination_2 = pos
    driver_msg.v_2 = 1.0
    driver_msg.a_2 = 1.0
    driver_msg.io_0_2 = io_0
    pub_cmd.publish(driver_msg)
    loop_rate.sleep()
    # while(at_goal == 0):

    #     if( abs(thetas_2[0]-driver_msg.destination_2[0]) < 0.0005 and \
    #         abs(thetas_2[1]-driver_msg.destination_2[1]) < 0.0005 and \
    #         abs(thetas_2[2]-driver_msg.destination_2[2]) < 0.0005 and \
    #         abs(thetas_2[3]-driver_msg.destination_2[3]) < 0.0005 and \
    #         abs(thetas_2[4]-driver_msg.destination_2[4]) < 0.0005 and \
    #         abs(thetas_2[5]-driver_msg.destination_2[5]) < 0.0005 ):

    #         #rospy.loginfo("Goal is reached!")
    #         at_goal = 1

    #     loop_rate.sleep()

    #     if(spin_count >  SPIN_RATE*5):

    #         pub_cmd.publish(driver_msg)
    #         rospy.loginfo("Just published again driver_msg")
    #         spin_count = 0

    #     spin_count = spin_count + 1

    return error

"""
Move robot arm from one position to another
"""
def move_arm(pub_cmd, loop_rate, dest, vel, accel):

    global thetas_1
    global SPIN_RATE

    error = 0
    spin_count = 0
    at_goal = 0

    driver_msg = robot1_command()
    driver_msg.destination_1 = dest
    driver_msg.v_1 = vel
    driver_msg.a_1 = accel
    driver_msg.io_0_1 = current_io_0_1
    pub_cmd.publish(driver_msg)

    loop_rate.sleep()

    # while(at_goal == 0):

    #     if( abs(thetas_1[0]-driver_msg.destination_1[0]) < 0.0005 and \
    #         abs(thetas_1[1]-driver_msg.destination_1[1]) < 0.0005 and \
    #         abs(thetas_1[2]-driver_msg.destination_1[2]) < 0.0005 and \
    #         abs(thetas_1[3]-driver_msg.destination_1[3]) < 0.0005 and \
    #         abs(thetas_1[4]-driver_msg.destination_1[4]) < 0.0005 and \
    #         abs(thetas_1[5]-driver_msg.destination_1[5]) < 0.0005 ):

    #         at_goal = 1
    #         #rospy.loginfo("Goal is reached!")

    #     loop_rate.sleep()

    #     if(spin_count >  SPIN_RATE*5):

    #         pub_cmd.publish(driver_msg)
    #         rospy.loginfo("Just published again driver_msg")
    #         spin_count = 0

    #     spin_count = spin_count + 1

    return error



"""
Move robot arm from one position to another
"""
def move_arm_2(pub_cmd, loop_rate, dest, vel, accel):

    global thetas_1
    global SPIN_RATE

    error = 0
    spin_count = 0
    at_goal = 0

    driver_msg = robot2_command()
    driver_msg.destination_2 = dest
    driver_msg.v_2 = vel
    driver_msg.a_2 = accel
    driver_msg.io_0_2 = current_io_0_2
    pub_cmd.publish(driver_msg)

    loop_rate.sleep()

    # while(at_goal == 0):

    #     if( abs(thetas_2[0]-driver_msg.destination_2[0]) < 0.0005 and \
    #         abs(thetas_2[1]-driver_msg.destination_2[1]) < 0.0005 and \
    #         abs(thetas_2[2]-driver_msg.destination_2[2]) < 0.0005 and \
    #         abs(thetas_2[3]-driver_msg.destination_2[3]) < 0.0005 and \
    #         abs(thetas_2[4]-driver_msg.destination_2[4]) < 0.0005 and \
    #         abs(thetas_2[5]-driver_msg.destination_2[5]) < 0.0005 ):

    #         at_goal = 1
    #         #rospy.loginfo("Goal is reached!")

    #     loop_rate.sleep()

    #     if(spin_count >  SPIN_RATE*5):

    #         pub_cmd.publish(driver_msg)
    #         rospy.loginfo("Just published again driver_msg")
    #         spin_count = 0

    #     spin_count = spin_count + 1

    return error
################ Pre-defined parameters and functions no need to change above ################

def move_block_2(pub_cmd, loop_rate, start_xw_yw_zw, second_angle, middle_angle,target_xw_yw_zw, vel, accel):

    """
    start_xw_yw_zw: where to pick up a block in global coordinates
    target_xw_yw_zw: where to place the block in global coordinates

    hint: you will use lab_invk(), gripper(), move_arm() functions to
    pick and place a block

    """
    # ========================= Student's code starts here =========================

    # global variable1
    # global variable2
    # global variable1
    # global variable2
    error = 0

    rospy.loginfo("Finding the block...")
    # move the arm to grip the block
    time.sleep(2)
    move_arm_2(pub_cmd, loop_rate, start_xw_yw_zw, 3.0, 3.0)
    time.sleep(2)
    gripper_2(pub_cmd,loop_rate,suction_on,start_xw_yw_zw)
    time.sleep(2)
    # if not digital_in_0_1:
    #     error = 1
    #     gripper_2(pub_cmd,loop_rate,suction_off,start_xw_yw_zw)
    #     rospy.loginfo("Fail to grip the block")
    #     return error
    #add in lab5
    time.sleep(2)
    move_arm_2(pub_cmd, loop_rate, second_angle, 3.0, 3.0)
    time.sleep(2)

    move_arm_2(pub_cmd, loop_rate, middle_angle, 3.0, 3.0)
    time.sleep(2)
    
    rospy.loginfo("Moving to the current destination...")
    #move_arm(pub_cmd,loop_rate,midposition,4.0,4.0)
    # move the are to the destination
    move_arm_2(pub_cmd,loop_rate,target_xw_yw_zw,1.0,1.0)
    time.sleep(2.0)
    gripper_2(pub_cmd,loop_rate,suction_off,target_xw_yw_zw)
    time.sleep(1.0)

    # ========================= Student's code ends here ===========================

    return error


def move_block(pub_cmd, loop_rate, start_xw_yw_zw, second_angle, middle_angle,target_xw_yw_zw, vel, accel):

    """
    start_xw_yw_zw: where to pick up a block in global coordinates
    target_xw_yw_zw: where to place the block in global coordinates

    hint: you will use lab_invk(), gripper(), move_arm() functions to
    pick and place a block

    """
    # ========================= Student's code starts here =========================

    # global variable1
    # global variable2
    error = 0

    rospy.loginfo("Finding the block...")
    # move the arm to grip the block
    time.sleep(2)
    move_arm(pub_cmd, loop_rate, start_xw_yw_zw, 3.0, 3.0)
    time.sleep(2)
    gripper(pub_cmd,loop_rate,suction_on,start_xw_yw_zw)
    time.sleep(4.0)
    # if not digital_in_0_1:
    #     error = 1
    #     gripper(pub_cmd,loop_rate,suction_off,start_xw_yw_zw)
    #     rospy.loginfo("Fail to grip the block")
    #     return error
    #add in lab5
    
    move_arm(pub_cmd, loop_rate, second_angle, 3.0, 3.0)
    time.sleep(2)

    move_arm(pub_cmd, loop_rate, middle_angle, 3.0, 3.0)
    time.sleep(2)
    
    rospy.loginfo("Moving to the current destination...")
    #move_arm(pub_cmd,loop_rate,midposition,4.0,4.0)
    # move the are to the destination
    move_arm(pub_cmd,loop_rate,target_xw_yw_zw,1.0,1.0)
    time.sleep(2.0)
    gripper(pub_cmd,loop_rate,suction_off,target_xw_yw_zw)
    time.sleep(1.0)

    # ========================= Student's code ends here ===========================

    return error


class ImageConverter:

    def __init__(self, SPIN_RATE):

        self.bridge = CvBridge()
        self.image_pub = rospy.Publisher("/image_converter/output_video", Image, queue_size=10)
        self.image_sub = rospy.Subscriber("/cv_camera_node/image_raw", Image, self.image_callback)
        self.loop_rate = rospy.Rate(SPIN_RATE)

        # Check if ROS is ready for operation
        while(rospy.is_shutdown()):
            print("ROS is shutdown!")


    def image_callback(self, data):

        global xw_yw_G # store found green blocks in this list
        global xw_yw_Y # store found yellow blocks in this list
        global xw_yw_target_Blue

        try:
          # Convert ROS image to OpenCV image
            raw_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
        except CvBridgeError as e:
            print(e)

        cv_image = cv2.flip(raw_image, -1)
        cv2.line(cv_image, (0,50), (640,50), (0,0,0), 5)

        # You will need to call blob_search() function to find centers of green blocks
        # and yellow blocks, and store the centers in xw_yw_G & xw_yw_Y respectively.

        # If no blocks are found for a particular color, you can return an empty list,
        # to xw_yw_G or xw_yw_Y.

        # Remember, xw_yw_G & xw_yw_Y are in global coordinates, which means you will
        # do coordinate transformation in the blob_search() function, namely, from
        # the image frame to the global world frame.

        xw_yw_G = blob_search(cv_image, "red")
        # xw_yw_Y = blob_search(cv_image, "orange")
        xw_yw_target_Blue = blob_search(cv_image, "green")


def moving_triangle(pub_command, loop_rate, xw_yw_G_cur, xw_yw_target_Blue_cur):
    x_tri = xw_yw_target_Blue_cur[0][0]
    y_tri = xw_yw_target_Blue_cur[0][1]
    L = 0.06
    Q = [(x_tri-L*0.866,y_tri-L*0.5),
         (x_tri+L*0.866,y_tri-L*0.5),
         (x_tri,y_tri+L)]
    
    move_arm(pub_command, loop_rate, mid_angle, 4.0, 4.0)
    time.sleep(2)
    rospy.loginfo("Moving first block")
    print("xw_yw_G is : \n")
    print(xw_yw_G)
    start_angle = lab_invk(xw_yw_G_cur[0][0],xw_yw_G_cur[0][1],0.030,0)
    second_angle = lab_invk(xw_yw_G_cur[0][0],xw_yw_G_cur[0][1],0.2,0)
    dest_angle = lab_invk(Q[0][0],Q[0][1],0.072,0)
    middle_angle = lab_invk(Q[0][0],Q[0][1],0.15,0)
    move_block(pub_command,loop_rate,start_angle,second_angle, middle_angle,dest_angle,3,1)
    time.sleep(1)
    gripper(pub_command,loop_rate,suction_off,dest_angle)

    rospy.loginfo("Moving second block")
    print("xw_yw_G is : \n")
    print(xw_yw_G)
    start_angle = lab_invk(xw_yw_G_cur[1][0],xw_yw_G_cur[1][1],0.030,0)
    second_angle = lab_invk(xw_yw_G_cur[1][0],xw_yw_G_cur[1][1],0.2,0)
    dest_angle = lab_invk(Q[1][0],Q[1][1],0.072,0)
    middle_angle = lab_invk(Q[1][0],Q[1][1],0.15,0)
    move_block(pub_command,loop_rate,start_angle,second_angle,middle_angle,dest_angle,3,1)
    time.sleep(1)
    gripper(pub_command,loop_rate,suction_off,dest_angle)

    rospy.loginfo("Moving third block")
    print("xw_yw_G is : \n")
    print(xw_yw_G)
    start_angle = lab_invk(xw_yw_G_cur[2][0],xw_yw_G_cur[2][1],0.030,0)
    second_angle = lab_invk(xw_yw_G_cur[2][0],xw_yw_G_cur[2][1],0.2,0)
    dest_angle = lab_invk(Q[2][0],Q[2][1],0.072,0)
    middle_angle = lab_invk(Q[2][0],Q[2][1],0.15,0)
    move_block(pub_command,loop_rate,start_angle,second_angle,middle_angle,dest_angle,3,1)
    time.sleep(1)
    gripper(pub_command,loop_rate,suction_off,dest_angle)



def moving_two_arms(pub_command,pub_command_2, loop_rate, xw_yw_G_cur, xw_yw_target_Blue_cur):
    start_angle = lab_invk(xw_yw_G_cur[0][0],xw_yw_G_cur[0][1],0.030,0)
    second_angle = lab_invk(xw_yw_G_cur[0][0],xw_yw_G_cur[0][1],0.2,0)
    dest_angle = lab_invk(0.15,0.5,0.03,0)
    middle_angle = lab_invk(0.15,0.5,0.15,0)
    move_block(pub_command,loop_rate,start_angle,second_angle, middle_angle,dest_angle,3,1)
    time.sleep(1)
    gripper(pub_command,loop_rate,suction_off,dest_angle)
    time.sleep(1)

    move_arm(pub_command,loop_rate,go_away,3,1)
    start_angle_2 = lab_invk(0.15,0.5-0.8,0.03,0)
    second_angle_2 = lab_invk(0.15,0.5-0.8,0.15,0)
    dest_angle_2 = lab_invk(0.2,0.2,0.03,0)
    middle_angle_2 = lab_invk(0.2,0.2,0.15,0)
    move_block_2(pub_command_2,loop_rate,start_angle_2,second_angle_2, middle_angle_2,dest_angle_2,3,1)
    time.sleep(1)
    gripper_2(pub_command_2,loop_rate,suction_off,dest_angle_2)
"""
Program run from here
"""
def main():

    global go_away
    global xw_yw_R
    global xw_yw_G
    global destination_G
    global mid_angle
   
    # global variable1
    # global variable2

    # Initialize ROS node
    rospy.init_node('lab5node')

    # Initialize publisher for ur3/command with buffer size of 10
    pub_command = rospy.Publisher('ur3_0/command', robot1_command, queue_size=10)
    pub_command_2 = rospy.Publisher('ur3_1/command', robot2_command, queue_size=10)
    # Initialize subscriber to ur3/position & ur3/gripper_input and callback fuction
    # each time data is published
    sub_position = rospy.Subscriber('ur3_0/position', robot1_position, position_callback)
    sub_position_2 = rospy.Subscriber('ur3_1/position', robot2_position, position_callback_2)

    sub_input = rospy.Subscriber('ur3_0/gripper_input', robot1_gripper_input, input_callback)
    sub_input_2 = rospy.Subscriber('ur3_1/gripper_input', robot2_gripper_input, input_callback_2)

    # Check if ROS is ready for operation
    while(rospy.is_shutdown()):
        print("ROS is shutdown!")

    # Initialize the rate to publish to ur3/command
    loop_rate = rospy.Rate(SPIN_RATE)

    vel = 4.0
    accel = 4.0

    
    

    # move_block_2(pub_command_2, loop_rate,go_away,go_down,go_away,go_down,vel,accel)
    # time.sleep(2)
    # move_arm_2(pub_command_2, loop_rate, go_away, vel, accel)
    
    # time.sleep(2)
    # move_arm(pub_command, loop_rate, home, vel, accel)




    time.sleep(2)
    move_arm(pub_command, loop_rate, go_away, vel, accel)
    

    time.sleep(2)
    move_arm_2(pub_command_2, loop_rate, go_down, vel, accel)

    robot2_start_angle = lab_invk(0.2,-0.2,0.030,0)    # grasp the first block
    print("start success")
    robot2_second_angle = lab_invk(0.2,-0.2,0.085,0)
    print("second success")
    robot2_middle_angle = lab_invk(0.2,0.4,0.085,0)
    print("middle success")
    robot2_dest_angle = lab_invk(0.2,0.4,0.072,0)
    print("dest success")
    
    # putting the block on the car

    move_block_2(pub_command_2,loop_rate,robot2_start_angle,robot2_second_angle,robot2_middle_angle,robot2_dest_angle,3,1)

    move_arm_2(pub_command_2, loop_rate, go_away, vel, accel)

    
    
    
    ic = ImageConverter(SPIN_RATE)
    time.sleep(5)
    

    xw_yw_G_cur = xw_yw_G
    xw_yw_Y_cur = xw_yw_Y
    # ========================= Student's code starts here =========================

    """
    Hints: use the found xw_yw_G, xw_yw_Y to move the blocks correspondingly. You will
    need to call move_block(pub_command, loop_rate, start_xw_yw_zw, target_xw_yw_zw, vel, accel)
    """
    print("xw_yw_G is : \n")
    print(xw_yw_G)
    print("xw_yw_target_Blue is : \n")
    print(xw_yw_target_Blue)
    # print(xw_yw_G[0])
    # print(xw_yw_G[1])
    # print(xw_yw_G[2])
    print("lenght of xw_yw_target_Blue is:\n")
    print(len(xw_yw_target_Blue))
    #move_arm(pub_command,loop_rate,go_away,4.0,4.0)
    i = 0
   
    while len(xw_yw_G) == 0:
        i = i +1
        print("lenght of xw_yw_G is:\n")
        print(len(xw_yw_G))
    if len(xw_yw_G)!=0:
        # check whether in the workspace of the arm
        while xw_yw_G[0][0] >= 0.40 or xw_yw_G[0][0] <=-0.55 or xw_yw_G[0][1] >=0.80 or xw_yw_G[0][1]<= -0.4:
            i = i+1
            print("the car is out of the workspace! Please drive closer!")
        # check whether the car is parking 
        xw_yw_G_cur = xw_yw_G
        time.sleep(5)
        while True:
            # print("lenght of xw_yw_target_Blue is:\n")
            # print(len(xw_yw_target_Blue))
            # print(xw_yw_target_Blue)
            # print("\n")
            # print("lenght of xw_yw_target_Blue_cur is:\n")
            # print(len(xw_yw_target_Blue_cur))
            # print(xw_yw_target_Blue_cur)
            # print("\n")
            a = round(xw_yw_G[0][0],2)
            b = round(xw_yw_G_cur[0][0],2)
            print(a)
            print("\n")
            print(b)
            print("\n")
            if a == b:
                break
            xw_yw_G_cur = xw_yw_G
            time.sleep(5)
        
        start_angle = [0.0,0.0,0.0,0.0,0.0,0.0]
        mid_angle = [PI,0.0,0.0,-0.5*PI,0.0,0.0]
        dest_angle = [0.0,0.0,0.0,0.0,0.0,0.0]
        satety_angle = [PI,0.0,0.0,-0.5*PI,0.0,0.0]
        

        start_angle = lab_invk(xw_yw_G_cur[0][0],xw_yw_G_cur[0][1],0.074,0)  # 0.082
        second_angle = lab_invk(xw_yw_G_cur[0][0],xw_yw_G_cur[0][1],0.2,0)
        mid_angle = lab_invk(xw_yw_target_Blue[0][0],xw_yw_target_Blue[0][1],0.2,0)
        dest_angle = lab_invk(xw_yw_target_Blue[0][0],xw_yw_target_Blue[0][1],0.065,0)
        move_arm(pub_command,loop_rate,second_angle,3,1)
        time.sleep(1)
        move_block(pub_command,loop_rate,start_angle,second_angle,mid_angle,dest_angle,3,1)



        # print("lenght of xw_yw_target_Blue is:\n")
        # print(len(xw_yw_target_Blue))
        # print(xw_yw_target_Blue)
        # print("\n")
        # move_arm(pub_command, loop_rate, mid_angle, vel, accel)
        # dest_angle = lab_invk(xw_yw_target_Blue_cur[0][0],xw_yw_target_Blue_cur[0][1],0.076,0)
        # if move_block(pub_command,loop_rate,start_angle,dest_angle,3,1):
        #     time.sleep(10)
        #     gripper(pub_command,loop_rate,suction_off)
        #     rospy.loginfo("error, arm is halt")
        #     rospy.spin()
        #     return 1

        # moving_two_arms(pub_command,pub_command_2, loop_rate, xw_yw_G_cur, xw_yw_target_Blue_cur)

        # move_arm(pub_command, loop_rate, mid_angle, vel, accel)
        # moving_triangle(pub_command, loop_rate, xw_yw_G_cur, xw_yw_target_Blue_cur)
        # dest_angle = lab_invk(xw_yw_target_Blue_cur[0][0],xw_yw_target_Blue_cur[0][1],0.076,0)
        # move_block(pub_command,loop_rate,start_angle,dest_angle,3,1)
        # time.sleep(10)
        # gripper(pub_command,loop_rate,suction_off)

        # rospy.loginfo("Moving second block")
        # print("xw_yw_G is : \n")
        # print(xw_yw_G)
        # start_angle = lab_invk(xw_yw_G_cur[1][0],xw_yw_G_cur[1][1],0.030,0)
        # # dest_angle = lab_invk(xw_yw_target_Blue_cur[0][0],xw_yw_target_Blue_cur[0][1],0.076,0)
        # move_block(pub_command,loop_rate,start_angle,dest_angle,3,1)
        # time.sleep(10)
        # gripper(pub_command,loop_rate,suction_off)

        # rospy.loginfo("Moving third block")
        # print("xw_yw_G is : \n")
        # print(xw_yw_G)
        # start_angle = lab_invk(xw_yw_G_cur[2][0],xw_yw_G_cur[2][1],0.030,0)
        # # dest_angle = lab_invk(xw_yw_target_Blue_cur[0][0],xw_yw_target_Blue_cur[0][1],0.076,0)
        # move_block(pub_command,loop_rate,start_angle,dest_angle,3,1)
        # time.sleep(10)
        # gripper(pub_command,loop_rate,suction_off)
    # start_angle = lab_invk(xw_yw_G_cur[1][0],xw_yw_G_cur[1][1],0.033,0)
    # mid_angle = lab_invk(xw_yw_G_cur[1][0],xw_yw_G_cur[1][1],0.05,0)
    # dest_angle = lab_invk(destination_G[0][0],destination_G[0][1],0.08,0)
    # move_arm(pub_command, loop_rate, mid_angle, vel, accel)
    # if move_block(pub_command,loop_rate,start_angle,dest_angle,3,1):
    #     gripper(pub_command,loop_rate,suction_off)
    #     rospy.loginfo("error, arm is halt")
    #     return 1
    
    # print("xw_yw_Y[0] is : \n")
    # print(xw_yw_Y[0][0])
    # print(xw_yw_Y[0][1])
    # start_angle = lab_invk(xw_yw_Y_cur[0][0],xw_yw_Y_cur[0][1],0.033,0)
    # mid_angle = lab_invk(xw_yw_Y_cur[0][0],xw_yw_Y_cur[0][1],0.06,0)
    # dest_angle = lab_invk(destination_Y[0][0],destination_Y[0][1],0.05,0)
    # move_arm(pub_command, loop_rate, mid_angle, vel, accel)
    # if move_block(pub_command,loop_rate,start_angle,dest_angle,3,1):
    #     gripper(pub_command,loop_rate,suction_off)
    #     rospy.loginfo("error, arm is halt")
    #     return 1

    # start_angle = lab_invk(xw_yw_Y_cur[1][0],xw_yw_Y_cur[1][1],0.033,0)
    # mid_angle = lab_invk(xw_yw_Y_cur[1][0],xw_yw_Y_cur[1][1],0.05,0)
    # dest_angle = lab_invk(destination_Y[0][0],destination_Y[0][1],0.08,0)
    # move_arm(pub_command, loop_rate, mid_angle, vel, accel)
    # if move_block(pub_command,loop_rate,start_angle,dest_angle,3,1):
    #     gripper(pub_command,loop_rate,suction_off)
    #     rospy.loginfo("error, arm is halt")
    #     return 1
    # ========================= Student's code ends here ===========================

    # move_arm(pub_command, loop_rate, go_away, vel, accel)
    rospy.loginfo("Task Completed!")
    print("Use Ctrl+C to exit program")
    rospy.spin()

if __name__ == '__main__':

    try:
        main()
    # When Ctrl+C is executed, it catches the exception
    except rospy.ROSInterruptException:
        pass












