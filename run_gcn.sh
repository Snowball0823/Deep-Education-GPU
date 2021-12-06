cp pygraph/pygraph.*.so ./dl_python_code
cd kernel
rm -rf libspmm.so
make
cd ../dl_python_code/
cmake ../kernel/
make clean & make
python3 GCN_pubmed.py