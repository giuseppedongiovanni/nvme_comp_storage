webtalk_init -webtalk_dir /home/giuseppezynq/OpenSSD_ACC/Project/GreedyHdf_acc_test/webtalk
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Wed Apr 15 23:37:44 2020" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "SDK v2015.4" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2015.4" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "amd64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "SDK" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "false" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "2sfs4ta4bmsiopsia7ggjp5k9h" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "2015.4_19" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "19" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "" -context "user_environment"
webtalk_add_data -client project -key os_release -value "" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "" -context "user_environment"
webtalk_register_client -client sdk
webtalk_add_data -client sdk -key uid -value "1586980534000" -context "sdk\\\\hardware/1586980534000"
webtalk_add_data -client sdk -key isZynq -value "true" -context "sdk\\\\hardware/1586980534000"
webtalk_add_data -client sdk -key Processors -value "2" -context "sdk\\\\hardware/1586980534000"
webtalk_add_data -client sdk -key VivadoVersion -value "2015.4.2" -context "sdk\\\\hardware/1586980534000"
webtalk_add_data -client sdk -key Arch -value "zynq" -context "sdk\\\\hardware/1586980534000"
webtalk_add_data -client sdk -key Device -value "7z045" -context "sdk\\\\hardware/1586980534000"
webtalk_add_data -client sdk -key IsHandoff -value "true" -context "sdk\\\\hardware/1586980534000"
webtalk_add_data -client sdk -key uid -value "1586980559000" -context "sdk\\\\bsp/1586980559000"
webtalk_add_data -client sdk -key hwid -value "1586980534000" -context "sdk\\\\bsp/1586980559000"
webtalk_add_data -client sdk -key os -value "standalone" -context "sdk\\\\bsp/1586980559000"
webtalk_add_data -client sdk -key apptemplate -value "hello_world" -context "sdk\\\\bsp/1586980559000"
webtalk_add_data -client sdk -key uid -value "1586980560000" -context "sdk\\\\application/1586980560000"
webtalk_add_data -client sdk -key hwid -value "1586980534000" -context "sdk\\\\application/1586980560000"
webtalk_add_data -client sdk -key bspid -value "1586980559000" -context "sdk\\\\application/1586980560000"
webtalk_add_data -client sdk -key newbsp -value "true" -context "sdk\\\\application/1586980560000"
webtalk_add_data -client sdk -key os -value "standalone" -context "sdk\\\\application/1586980560000"
webtalk_add_data -client sdk -key apptemplate -value "hello_world" -context "sdk\\\\application/1586980560000"
webtalk_transmit -clientid 1571601974 -regid "" -xml /home/giuseppezynq/OpenSSD_ACC/Project/GreedyHdf_acc_test/webtalk/usage_statistics_ext_sdk.xml -html /home/giuseppezynq/OpenSSD_ACC/Project/GreedyHdf_acc_test/webtalk/usage_statistics_ext_sdk.html -wdm /home/giuseppezynq/OpenSSD_ACC/Project/GreedyHdf_acc_test/webtalk/sdk_webtalk.wdm -intro "<H3>SDK Usage Report</H3><BR>"
webtalk_terminate