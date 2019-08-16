echo "***** Remove files in folder QNLI *****" 
rm -rf /workpool/pdt30764/notebooks_bgg/Cip/bert-master/bert_output/QNLI/* 
echo "***** Remove files in folder WNLI *****" 
rm -rf /workpool/pdt30764/notebooks_bgg/Cip/bert-master/bert_output/WNLI/* 
echo "***** Remove files in folder MNLI-m *****" 
rm -rf /workpool/pdt30764/notebooks_bgg/Cip/bert-master/bert_output/MNLI-m/* 
echo "***** Remove files in folder MNLI-mm *****" 
rm -rf /workpool/pdt30764/notebooks_bgg/Cip/bert-master/bert_output/MNLI-mm/* 
echo "***** Remove files in folder AX *****" 
rm -rf /workpool/pdt30764/notebooks_bgg/Cip/bert-master/bert_output/AX/* 
echo "***** Remove files in folder ADV *****" 
rm -rf /workpool/pdt30764/notebooks_bgg/Cip/bert-master/bert_output/ADV/* 
echo "***** Running QNLI *****" 
python run_classifier_bgg_test.py --task_name=qnli --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/QNLI/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config_test.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=3.0 --output_dir=./bert_output/QNLI/ --do_lower_case=False 2>./bert_output/QNLI/qnli_blur_gpu.txt 
echo "***** Running WNLI *****" 
python run_classifier_bgg_test.py --task_name=wnli --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/WNLI/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config_test.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=3.0 --output_dir=./bert_output/WNLI/ --do_lower_case=False 2>./bert_output/WNLI/wnli_blur_gpu.txt 
echo "***** Running MNLI-m *****" 
python run_classifier_bgg_test.py --task_name=mnli-m --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/MNLI-m/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config_test.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=3.0 --output_dir=./bert_output/MNLI-m/ --do_lower_case=False 2>./bert_output/MNLI-m/mnlim_blur_gpu.txt 
echo "***** Running MNLI-mm *****" 
python run_classifier_bgg_test.py --task_name=mnli-mm --do_train=false --do_eval=true --do_predict=true --data_dir=./datasets/MNLI-mm/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config_test.json --init_checkpoint=./bert_output/MNLI-m/model.ckpt-36815 --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=3.0 --output_dir=./bert_output/MNLI-mm/ --do_lower_case=False 2>./bert_output/MNLI-mm/mnlimm_blur_gpu.txt 
echo "***** Running AX *****" 
python run_classifier_bgg_test.py --task_name=ax --do_train=false --do_eval=false --do_predict=true --data_dir=./datasets/MNLI-m/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config_test.json --init_checkpoint=./bert_output/MNLI-m/model.ckpt-36815 --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=3.0 --output_dir=./bert_output/AX/ --do_lower_case=False 2>./bert_output/AX/ax_blur_gpu.txt 
echo "***** Running ADV *****" 
python run_classifier_bgg_test.py --task_name=adv --do_train=false --do_eval=false --do_predict=true --data_dir=./datasets/MNLI-m/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config_test.json --init_checkpoint=./bert_output/MNLI-m/model.ckpt-36815 --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=3.0 --output_dir=./bert_output/ADV/ --do_lower_case=False 2>./bert_output/ADV/adv_blur_gpu.txt 