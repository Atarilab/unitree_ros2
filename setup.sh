#!/bin/bash
echo "Setup unitree ros2 environment"
source /opt/ros/humble/setup.bash
source /home/atari/dependencies/unitree_ros2/cyclonedds_ws/install/setup.bash
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
export CYCLONEDDS_URI='<CycloneDDS><Domain><General><Interfaces>
                            <NetworkInterface name="enx3c4937046061" priority="default" multicast="default" />
                        </Interfaces></General></Domain></CycloneDDS>'
export ROS_DOMAIN_ID=0 # Use the default domain id
