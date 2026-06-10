@echo off
chcp 65001 >nul
echo 正在安装 Jupyter 及依赖库，请稍候...
echo.

python -m pip install jupyter notebook ipykernel numpy pandas matplotlib seaborn scikit-learn -q

echo.
echo 安装完成！
echo 双击 GradientBoosting_乳腺癌分类.ipynb 即可打开
pause
