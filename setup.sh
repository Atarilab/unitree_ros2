#!/bin/bash
echo "Setup unitree ros2 environment"

# Source ROS 2 and CycloneDDS environments
source /opt/ros/humble/setup.bash
source /home/atari/dependencies/unitree_ros2/cyclonedds_ws/install/setup.bash

# Check if NETWORK_INTERFACE is set
if [ -z "$NETWORK_INTERFACE" ]; then
    echo "⚠️ NETWORK_INTERFACE not set. Please export it before running this script."
    exit 1
fi

export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp

# Use the NETWORK_INTERFACE variable inside the XML
export CYCLONEDDS_URI="<CycloneDDS><Domain><General><Interfaces>
                            <NetworkInterface name=\"$NETWORK_INTERFACE\" priority=\"default\" multicast=\"default\" />
                        </Interfaces></General></Domain></CycloneDDS>"

export ROS_DOMAIN_ID=0 # Use the default domain id

echo "✅ CYCLONEDDS_URI set with interface: $NETWORK_INTERFACE"
