echo "***** Remove files in folder CoLA *****" 
rm -rf /workpool/pdt30764/notebooks_bgg/Cip/bert-master/origin_bert_output/CoLA/* 
echo "***** Remove files in folder SST-2 *****" 
rm -rf /workpool/pdt30764/notebooks_bgg/Cip/bert-master/origin_bert_output/SST-2/* 
echo "***** Remove files in folder QQP *****" 
rm -rf /workpool/pdt30764/notebooks_bgg/Cip/bert-master/origin_bert_output/QQP/* 
echo "***** Remove files in folder RTE *****" 
rm -rf /workpool/pdt30764/notebooks_bgg/Cip/bert-master/origin_bert_output/RTE/* 
echo "***** Remove files in folder MRPC *****" 
rm -rf /workpool/pdt30764/notebooks_bgg/Cip/bert-master/origin_bert_output/MRPC/* 
echo "***** Remove files in folder STS-B *****" 
rm -rf /workpool/pdt30764/notebooks_bgg/Cip/bert-master/origin_bert_output/STS-B/* 
echo "***** Running CoLA *****" 
python run_classifier_bgg.py --task_name=cola --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/CoLA/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=3e-5 --num_train_epochs=3.0 --output_dir=./origin_bert_output/CoLA/ --do_lower_case=False 2>./origin_bert_output/CoLA/cola_blur_gpu.txt 
echo "***** Running SST-2 *****" 
python run_classifier_bgg.py --task_name=sst-2 --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/SST-2/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=3e-5 --num_train_epochs=3.0 --output_dir=./origin_bert_output/SST-2/ --do_lower_case=False 2>./origin_bert_output/SST-2/sst2_blur_gpu.txt 
echo "***** Running QQP *****" 
python run_classifier_bgg.py --task_name=qqp --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/QQP/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=3e-5 --num_train_epochs=3.0 --output_dir=./origin_bert_output/QQP/ --do_lower_case=False 2>./origin_bert_output/QQP/qqp_blur_gpu.txt 
echo "***** Running RTE *****" 
python run_classifier_bgg.py --task_name=rte --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/RTE/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=3e-5 --num_train_epochs=3.0 --output_dir=./origin_bert_output/RTE/ --do_lower_case=False 2>./origin_bert_output/RTE/rte_blur_gpu.txt 
echo "***** Running MRPC *****" 
python run_classifier_bgg.py --task_name=mrpc --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/MRPC/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=3.0 --output_dir=./origin_bert_output/MRPC/ --do_lower_case=False 2>./origin_bert_output/MRPC/mrpc_blur_gpu.txt 
echo "***** Running STS-B *****" 
python run_regressor_bgg.py --task_name=sts-b --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/STS-B/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=3.0 --output_dir=./origin_bert_output/STS-B/ --do_lower_case=False 2>./origin_bert_output/STS-B/stsb_blur_gpu.txt 