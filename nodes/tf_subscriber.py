#!/usr/bin/env python
import rospy
import tf2_ros

rospy.init_node('my_tf_listener')

# create a tf2_ros type buffer
tfBuffer = tf2_ros.Buffer()
# create a TF2 transform listener object. Save data into tfBuffer
listener = tf2_ros.TransformListener(tfBuffer)

rate = rospy.Rate(1) # rate at 1 hz

while not rospy.is_shutdown():

    try:
        # Get last ( Time(0) )transform from the base frame to frame l7
        frame_info = tfBuffer.lookup_transform('map', 'l7', rospy.Time(0))
        print (frame_info)

    except (tf2_ros.TransformException):
        rate.sleep()
        continue

    rate.sleep()
