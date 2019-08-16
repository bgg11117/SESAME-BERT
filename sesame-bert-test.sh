echo "***** Remove files in folder SST-2 *****" 
rm -rf /workpool/pdt30764/notebooks_bgg/Cip/bert-master/bert_output/SST-2/* 
echo "***** Remove files in folder MRPC *****" 
rm -rf /workpool/pdt30764/notebooks_bgg/Cip/bert-master/bert_output/MRPC/* 
echo "***** Remove files in folder MNLI-m *****" 
rm -rf /workpool/pdt30764/notebooks_bgg/Cip/bert-master/bert_output/MNLI-m/* 
echo "***** Running SST-2 *****" 
python run_classifier_bgg_test.py --task_name=sst-2 --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/SST-2/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config_test.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=4.0 --output_dir=./bert_output/SST-2/ --do_lower_case=False 2>./bert_output/SST-2/sst2_blur_gpu.txt 
echo "***** Running MRPC *****" 
python run_classifier_bgg_test.py --task_name=mrpc --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/MRPC/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config_test.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=4.0 --output_dir=./bert_output/MRPC/ --do_lower_case=False 2>./bert_output/MRPC/mrpc_blur_gpu.txt 
echo "***** Running MNLI-m *****" 
python run_classifier_bgg_test.py --task_name=mnli-m --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/MNLI-m/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config_test.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=4.0 --output_dir=./bert_output/MNLI-m/ --do_lower_case=False 2>./bert_output/MNLI-m/mnlim_blur_gpu.txt 