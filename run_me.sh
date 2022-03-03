
# 1.Download small dataset for Lisa Tutorial 

dest_dir="01.LISA_Deep_Learning_Tutorial_Data"
wget --no-verbose --directory-prefix="$dest_dir" http://www.iro.umontreal.ca/~lisa/deep/data/mnist/mnist.pkl.gz
wget --no-verbose --directory-prefix="$dest_dir" http://www.iro.umontreal.ca/~lisa/deep/data/mnist/mnist_py3k.pkl.gz
wget --no-verbose --directory-prefix="$dest_dir" http://www.iro.umontreal.ca/~lisa/deep/data/imdb.pkl.gz
wget --no-verbose --directory-prefix="$dest_dir" http://www.iro.umontreal.ca/~lisa/deep/data/imdb.dict.pkl.gz
wget --no-verbose --directory-prefix="$dest_dir" http://www.iro.umontreal.ca/~lisa/deep/data/Nottingham.zip
wget --no-verbose --directory-prefix="$dest_dir" http://www.iro.umontreal.ca/~lisa/deep/midi.zip
wget --no-verbose --directory-prefix="$dest_dir" http://lisaweb.iro.umontreal.ca/transfert/lisa/users/mesnilgr/atis/atis.fold0.pkl.gz
wget --no-verbose --directory-prefix="$dest_dir" http://lisaweb.iro.umontreal.ca/transfert/lisa/users/mesnilgr/atis/atis.fold1.pkl.gz
wget --no-verbose --directory-prefix="$dest_dir" http://lisaweb.iro.umontreal.ca/transfert/lisa/users/mesnilgr/atis/atis.fold2.pkl.gz
wget --no-verbose --directory-prefix="$dest_dir" http://lisaweb.iro.umontreal.ca/transfert/lisa/users/mesnilgr/atis/atis.fold3.pkl.gz
wget --no-verbose --directory-prefix="$dest_dir" http://lisaweb.iro.umontreal.ca/transfert/lisa/users/mesnilgr/atis/atis.fold4.pkl.gz

# 2.Download mini_librispeech dataset(language model and acoustic model)

dest_dir="02.mini_librispeech_language_model"
wget --no-verbose --directory-prefix="$dest_dir" http://www.openslr.org/resources/11/3-gram.arpa.gz
wget --no-verbose --directory-prefix="$dest_dir" http://www.openslr.org/resources/11/3-gram.pruned.1e-7.arpa.gz
wget --no-verbose --directory-prefix="$dest_dir" http://www.openslr.org/resources/11/3-gram.pruned.3e-7.arpa.gz
wget --no-verbose --directory-prefix="$dest_dir" http://www.openslr.org/resources/11/librispeech-vocab.txt
wget --no-verbose --directory-prefix="$dest_dir" http://www.openslr.org/resources/11/librispeech-lexicon.txt

dest_dir="02.mini_librispeech_acoustic_model"
wget --no-verbose --directory-prefix="$dest_dir" http://www.openslr.org/resources/31/dev-clean-2.tar.gz
wget --no-verbose --directory-prefix="$dest_dir" http://www.openslr.org/resources/31/test-clean-5.tar.gz
wget --no-verbose --directory-prefix="$dest_dir" http://www.openslr.org/resources/31/dev-other.tar.gz
wget --no-verbose --directory-prefix="$dest_dir" http://www.openslr.org/resources/31/test-other.tar.gz
wget --no-verbose --directory-prefix="$dest_dir" http://www.openslr.org/resources/31/train-clean-100.tar.gz
wget --no-verbose --directory-prefix="$dest_dir" http://www.openslr.org/resources/31/train-clean-360.tar.gz
wget --no-verbose --directory-prefix="$dest_dir" http://www.openslr.org/resources/31/train-other-500.tar.gz

# 3.AI Papers

dest_dir="03.AI Papers"
wget --no-verbose --directory-prefix="$dest_dir" http://cs224d.stanford.edu/papers/maas_paper.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://jmlr.org/proceedings/papers/v37/jozefowicz15.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://nlp.stanford.edu/~socherr/pa4_ner.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://nlp.stanford.edu/~socherr/thesis.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://papers.nips.cc/paper/5346-sequence-to-sequence-learning-with-neural-networks.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://papers.nips.cc/paper/6385-matching-networks-for-one-shot-learning.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://web.eecs.utk.edu/~itamar/courses/ECE-692/Bobby_paper1.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://www.cs.toronto.edu/~fritz/absps/RNN13.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://www.cs.toronto.edu/~graves/preprint.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://www.cs.toronto.edu/~hinton/absps/esann-deep-final.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://www.cs.utoronto.ca/~ilya/pubs/ilya_sutskever_phd_thesis.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://www.di.ufpe.br/~fnj/RNA/bibliografia/BRNN.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://www.fit.vutbr.cz/research/groups/speech/publi/2010/mikolov_interspeech2010_IS100722.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://www.fit.vutbr.cz/research/groups/speech/publi/2011/mikolov_icassp2011_5528.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://www.fit.vutbr.cz/~imikolov/rnnlm/ApplicationOfRNNinMeetingRecognition_IS2011.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://www.fit.vutbr.cz/~imikolov/rnnlm/thesis.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://www.iro.umontreal.ca/~bengioy/papers/YB-tricks.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://www.iro.umontreal.ca/~lisa/pointeurs/TR1312.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://www.nature.com/nature/journal/v529/n7587/pdf/nature16961.pdf
wget --no-verbose --directory-prefix="$dest_dir" http://yann.lecun.com/exdb/publis/pdf/lecun-98b.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1406.1078v3.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1406.1078v3.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1406.2661v1.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1410.3916v10
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1410.5401v2.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1502.02367v3.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1503.03832.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1503.04069v1.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1504.08083.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1505.00521v1
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1505.01861v1.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1506.00019v1.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1506.02078v1.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1506.07285v1.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1507.01273v1
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1512.03385v1.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1611.07004v1.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1611.07004v1.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/2006.03511.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://openreview.net/pdf?id=HJWLfGWRb
wget --no-verbose --directory-prefix="$dest_dir" https://www.cs.cmu.edu/~rsalakhu/papers/oneshot1.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1502.03167
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1704.04861
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1706.05739
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1710.09829

# 4.BERT papers

dest_dir="04.BERT papers"
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1810.04805
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1901.02860
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1812.06705
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1812.03593
wget --no-verbose --directory-prefix="$dest_dir" https://d4mucfpksywv.cloudfront.net/better-language-models/language_models_are_unsupervised_multitask_learners.pdf
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1901.11117
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1906.08237
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1909.05858
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1910.10683
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/1909.02950
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/2002.12327
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/2101.03961
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/2105.14103
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/2106.04554
wget --no-verbose --directory-prefix="$dest_dir" https://arxiv.org/pdf/2107.03374

# 5.Download Python packages for ESPnet
py36_linux_options="--platform manylinux1_x86_64 --python-version 36 --dest 05.esp_py36_manylinux1_x86_64_packages"
py37_linux_options="--platform manylinux1_x86_64 --python-version 37 --dest 05.esp_py37_manylinux1_x86_64_packages"

python3 -m pip download "$py36_linux_options" -r requirements.txt
python3 -m pip download "$py37_linux_options" -r requirements.txt
python3 -m pip download "$py36_linux_options" warpctc-pytorch==0.2.2+torch1.1.cpu -f https://github.com/espnet/warp-ctc/releases/tag/v0.2.2
python3 -m pip download "$py37_linux_options" warpctc-pytorch==0.2.2+torch1.1.cuda -f https://github.com/espnet/warp-ctc/releases/tag/v0.2.2

# 6.download Ubuntu 18.04 package

dest_dir=06.Ubuntu-packages
mkdir -p $dest_dir
cd $dest_dir
apt-get download ibus
apt-get download ibus-pinyin
apt-get download ibus-hangul 
apt-get download sox
cd ..

# 06.Download open sources

dest_dir=06.SCTK_2.4.10
wget --no-verbose --directory-prefix="$dest_dir" https://github.com/usnistgov/SCTK/archive/20159b5.tar.gz
wget --no-verbose --directory-prefix="$dest_dir" http://www.openslr.org/resources/4/sctk-2.4.10-20151007-1312Z.tar.bz2
dest_dir=06.speex
wget --no-verbose --directory-prefix="$dest_dir" https://downloads.xiph.org/releases/speex/speex-1.2rc1.tar.gz

git clone https://github.com/jheymann85/chainer_ctc.git "$dest_dir"
git clone https://github.com/usnistgov/SCTK "$dest_dir"
# download pretrained model

srilm_url="http://www.speech.sri.com/projects/srilm/srilm_download.php"
post_data="WWW_file=srilm-1.7.3.tar.gz&WWW_name=$1&WWW_org=$2&WWW_email=$3"

if ! wget --post-data "$post_data" -O ./srilm.tar.gz "$srilm_url"; then
    echo 'There was a problem downloading the file.'
    echo 'Check you internet connection and try again.'
    exit 1
fi

# 07. ASR pretrained models

chmod +x ./download_from_google_drive.sh
download_from_google_drive.sh https://drive.google.com/open?id=1BpEXi90SZxiX52Ent2P_lgFz5rwh1ryG 7.sponspeech-Transformer "tar.gz"
download_from_google_drive.sh https://drive.google.com/open?id=1A2Gg18v-_z3dcw794aKL7SrPKHTyDbOU 7.sponspeech-Conformer "tar.gz"


