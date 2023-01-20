
## GitHub repository for
# GNNs for Realistic Synthetic Social Networks


Originally forked from the official PyTorch implementation of [Efficient Graph Generation with Graph Recurrent Attention Networks](https://arxiv.org/abs/1910.00760) as described in the following NeurIPS 2019 paper:
The GRAN NeurIPS paper can be found at:
```
@inproceedings{liao2019gran,
  title={Efficient Graph Generation with Graph Recurrent Attention Networks}, 
  author={Liao, Renjie and Li, Yujia and Song, Yang and Wang, Shenlong and Nash, Charlie and Hamilton, William L. and Duvenaud, David and Urtasun, Raquel and Zemel, Richard}, 
  booktitle={NeurIPS},
  year={2019}
}
```

## Dependencies
Python 3, PyTorch(1.2.0)

Other dependencies can be installed via 

  ```pip install -r requirements.txt```


## Run Demos

Processed data is already in this repository, under ```data/```, and the original datasets are available at ```https://snap.stanford.edu/data/```.

### Train
* To run the training of experiment ```X``` where ```X``` is one of {```deezer_ego```, ```fb_large```, ```git```, ```twitch```}:

  ```python run_exp.py -c config/X.yaml```
  

**Note**:

* Please check the folder ```config``` for a full list of configuration yaml files.
* Most hyperparameters in the configuration yaml file are self-explanatory.

### Test

* After training, you can specify the ```test_model``` field of the configuration yaml file with the path of your best model snapshot, e.g.,

  ```test_model: exp/gran_grid/xxx/model_snapshot_best.pth```	

* To run the test of experiments ```X```:

  ```python run_exp.py -c config/X.yaml -t```

### Generate

* Similarly after training you can specify a trained model and generate networks using the ```-g``` flag, ie:
* ```python run_exp.py -c config/X.yaml -g```
* This includes optional benchmarking against R-MAT

### Trained Models
* You could use our trained model for comparisons. Please make sure you are using the same split of the dataset. Running the following script will download the trained model:

* ```bash download.sh```	

* This will create an ```exp/``` directory containing experimental results for the four datasets. 

## Sampled Graphs from GRAN

### Real and synthetic networks from GRAN

![](https://github.com/neutralpronoun/GNN-ReSoNet/blob/main/Figures/generated_visualisations_1.png)

### Comparisons of R-MAT and GRAN

[Facebook](https://github.com/neutralpronoun/GNN-ReSoNet/blob/main/Figures/generated_visualisations_Facebook%20Page-Page.pdf)

[Deezer Ego](https://github.com/neutralpronoun/GNN-ReSoNet/blob/main/Figures/generated_visualisations_poster_Deezer%20Ego.pdf)

[Issues with multiple connected components](https://github.com/neutralpronoun/GNN-ReSoNet/blob/main/Figures/unconnected_components_presentation.pdf)

## Cite
Please cite our paper if you use this code in your research work.

## Questions/Bugs
Please submit a Github issue or contact alexander.davies@bristol.ac.uk if you have any questions or find any bugs.
