1  git clone https://github.com/eoscanada/eos-bios
   cd eos-bios/sample_config
   wget https://github.com/eoscanada/eos-bios/releases/download/v0.3.5/eos-bios_0.3.5_linux_x86_64.tar.gz
   tar -zxvf eos-bios_0.3.5_linux_x86_64.tar.gz
   nohup ./eos-bios boot 1>eos-bios.log 2>&1 &
