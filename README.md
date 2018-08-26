# Late Fusion via Subspace Search with Consistency Preservation

We propose an late fusion algorithm, i.e., Hard-rank Constraint Matrix Factorization-based method (HCMF).

## Citation
If you find this project help your research, please cite:
```
@article{dong2018hcmf,
  title={Late Fusion via Subspace Search with Consistency Preservation},
  author={Dong, Xuanyi and Yan, Yan and Tan, Mingkui and Yang, Yi and Tsang, Ivor W},
  journal={IEEE Transactions on Image Processing (TIP)},
  year={2018}
}
```

## Visualization
To generate the figures used in this paper (synthetic experiments), please use the following code:
```
cd codes/visualization/
matlab
warp_vis(250, 15, 20, [0.3], 'results/visual/')
```


## Resourse
- LRGeomCG, Low-rank matrix completion by Riemannian optimization. [\[paper\]](http://www.unige.ch/math/vandereycken/bibtexbrowser.php?key=Vandereycken_2013&bib=my_pubs.bib)[\[code\]](http://www.unige.ch/math/vandereycken/software/RiemannianMatrixCompletion_31Jun2014.zip)
- [Riemannian Pursuit For Big Matrix Recovery](http://www.tanmingkui.com/uploads/2/9/6/5/29654919/rp_to_pub.rar)
