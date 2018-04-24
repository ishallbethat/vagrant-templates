dir=$(pwd)
git clone https://github.com/EOSIO/eos --recursive
cd $dir/eos
./eosio_build.sh
~/opt/mongodb/bin/mongod -f ~/opt/mongodb/mongod.conf &
cd $dir/eos/build
make install
cd $dir/eos/programs/nodeos
./nodeos -e -p eosio --plugin eosio::wallet_api_plugin --plugin eosio::chain_api_plugin --plugin eosio::account_history_api_plugin
