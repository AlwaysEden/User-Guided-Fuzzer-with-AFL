mkdir -p afl-build || exit 1
cd afl-build || exit 1
#cleanup
rm -r -- *

CC=../../../afl-clang-fast cmake ../.. -DENABLE_FUZZING=On -DENABLE_SANITIZERS=On -DBUILD_SHARED_LIBS=Off

cd fuzzing

make

clang -fsanitize=address -c ../../trace-pc-guard.c
clang -fsanitize=address -fsanitize-coverage=trace-pc-guard,func ../../afl.c ../../../cJSON.c trace-pc-guard.o -o target_For_FuncCov

mkdir fuzz1
cd fuzz1
cp ../../../target.json ./

program_pid0=$!
../../../../../afl-fuzz -i /mnt/hdd/fuzz_usability/AFL++experimental/cJSON/fuzzing/inputs -o ./findings0 -r target.json ../afl-main @@ yes &


mkdir ../fuzz2
cd ../fuzz2
cp ../../../target.json ./
program_pid1=$!
../../../../../afl-fuzz -i /mnt/hdd/fuzz_usability/AFL++experimental/cJSON/fuzzing/inputs -o ./findings0 -r target.json ../afl-main @@ yes &

mkdir ../fuzz3
cd ../fuzz3
cp ../../../target.json ./

../../../../../afl-fuzz -i /mnt/hdd/fuzz_usability/AFL++experimental/cJSON/fuzzing/inputs -o ./findings0 -r target.json ../afl-main @@ yes &
program_pid2=$!

mkdir ../fuzz4
cd ../fuzz4
cp ../../../target.json ./
../../../../../afl-fuzz -i /mnt/hdd/fuzz_usability/AFL++experimental/cJSON/fuzzing/inputs -o ./findings0 -r target.json ../afl-main @@ yes &
program_pid3=$!

mkdir ../fuzz5
cd ../fuzz5
cp ../../../target.json ./
../../../../../afl-fuzz -i /mnt/hdd/fuzz_usability/AFL++experimental/cJSON/fuzzing/inputs -o ./findings0 -r target.json ../afl-main @@ yes &
program_pid4=$!

sleep 3700

kill -9 $program_pid0
kill -9 $program_pid1
kill -9 $program_pid2
kill -9 $program_pid3
kill -9 $program_pid4
	
