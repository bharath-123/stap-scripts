git clone https://github.com/gormanm/mmtests
sudo ./run-mmtests.sh --config config-io-paralleldd-large-multi --run-monitor $(uname -r)
cd ./work/log
./../../compare-kernels.sh
