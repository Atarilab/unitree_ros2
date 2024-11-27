#!/bin/bash
echo "Setup unitree ros2 simulation environment"
source /opt/ros/humble/setup.bash
source /home/atari/dependencies/unitree_ros2/cyclonedds_ws/install/setup.bash
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
export CYCLONEDDS_URI='<CycloneDDS><Domain><General><Interfaces>
                            <NetworkInterface name="lo" priority="default" multicast="default" />
                        </Interfaces></General></Domain></CycloneDDS>'
export ROS_DOMAIN_ID=1 # Modify the domain id to match the simulation
