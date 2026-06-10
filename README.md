# 乳腺癌分类 — 梯度提升（Gradient Boosting）

[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://www.python.org/)
[![scikit-learn](https://img.shields.io/badge/scikit--learn-1.0+-orange.svg)](https://scikit-learn.org/)

机器学习课程大作业 — 个人负责部分。基于 scikit-learn 的 `GradientBoostingClassifier` 对威斯康星州乳腺癌数据集进行良恶性二分类，包含完整的数据预处理、模型训练、多指标评估与可视化分析。

## 数据集

Breast Cancer Wisconsin (Diagnostic) Data Set，通过 `sklearn.datasets.load_breast_cancer()` 加载。

- 样本：569 例（恶性 212，良性 357）
- 特征：30 个细胞核形态学特征

## 实验结果

| 指标 | 数值 |
|------|------|
| 测试准确率 | **95.61%** |
| 精确率 | 94.67% |
| 召回率 | **98.61%** |
| F1 分数 | 96.60% |
| ROC AUC | 0.9907 |
| 5 折交叉验证 | 95.60% ± 1.39% |

- 混淆矩阵：TN = 38, FP = 4, FN = 1, TP = 71
- 漏检率：1.39%
- 特征重要性 Top 3：worst radius（43.55%）、worst perimeter（27.15%）、worst concave points（10.65%）

## 项目结构

```
├── GradientBoosting_乳腺癌分类.ipynb   # Jupyter Notebook（含 Markdown 分析 + 代码 + 输出）
├── 2.项目代码.html                      # Notebook 导出的 HTML
├── 安装环境.bat                         # Windows 一键安装依赖
├── README.md
└── figures/                            # 所有图表
    ├── gb_principle.png                # 算法原理示意
    ├── gb_flowchart.png                # 训练流程图
    ├── gb_confusion_matrix.png         # 混淆矩阵
    ├── gb_roc_curve.png                # ROC 曲线
    └── gb_feature_importance.png       # 特征重要性 Top 15
```

## 快速开始

### 环境

```bash
pip install jupyter notebook numpy pandas matplotlib seaborn scikit-learn
```

或双击 `安装环境.bat`。

### 运行

```bash
jupyter notebook GradientBoosting_乳腺癌分类.ipynb
```

打开后 Kernel → Restart & Run All。

## 依赖

- Python ≥ 3.8
- numpy, pandas, matplotlib, seaborn, scikit-learn
- Jupyter Notebook
