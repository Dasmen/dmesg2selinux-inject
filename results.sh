sepolicy-inject -s ueventd -t unlabeled -c chr_file -p create,setattr -P ./sepolicy
sepolicy-inject -s ueventd -t unlabeled -c blk_file -p create,setattr -P ./sepolicy
sepolicy-inject -s ueventd -t ueventd -c capability2 -p mac_admin -P ./sepolicy
sepolicy-inject -s init -t system_file -c file -p relabelfrom -P ./sepolicy
sepolicy-inject -s init -t unlabeled -c chr_file -p setattr -P ./sepolicy
sepolicy-inject -s init -t nvram_data_file -c lnk_file -p read -P ./sepolicy
sepolicy-inject -s init -t shell_exec -c file -p execute_no_trans -P ./sepolicy
sepolicy-inject -s init -t property_socket -c sock_file -p write -P ./sepolicy
sepolicy-inject -s init -t logmisc_data_file -c file -p append -P ./sepolicy
sepolicy-inject -s toolbox -t toolbox -c capability -p dac_override -P ./sepolicy
sepolicy-inject -s logd -t unlabeled -c blk_file -p read,write,open -P ./sepolicy
sepolicy-inject -s servicemanager -t init -c file -p read,open -P ./sepolicy
sepolicy-inject -s servicemanager -t init -c process -p getattr -P ./sepolicy
sepolicy-inject -s themeservice_app -t system_data_file -c dir -p write,add_name,create,setattr -P ./sepolicy