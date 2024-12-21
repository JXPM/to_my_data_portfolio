python3 -m venv venv_cours_pandas
source venv_cours_pandas/bin/activate


pip install ipykernel pandas numpy matplotlib seaborn plotly scikit-learn
pip install nbformat
pip install statsmodels
pip install scipy
pip install geopandas folium


git clone https://github.com/stefmolin/pandas-workshop.git
git clone https://github.com/jvns/pandas-cookbook.git


# pdf conversion
pip install pdfkit
pip install jupyter
sudo apt-get install wkhtmltopdf
sudo apt-get install pandoc
sudo apt-get install texlive-xetex texlive-fonts-recommended texlive-plain-generic
jupyter nbconvert --to pdf Amazon.ipynb

# kaleido: convert plotly charts to png inside the notebooks
pip install kaleido

# convert to html
jupyter nbconvert --to html Amazon.ipynb

# git/github
rm -rf .git
git init
git branch -M main
git add .
git commit -m "first commit"
gh repo create Amazon.csv --public
git remote add origin https://github.com/JXPM/to_my_data_portfolio.git
git push --set-upstream origin main


# pdfs update
jupyter nbconvert --to pdf Amazon.ipynb && mv Amazon.pdf pdf/
# htmls update
jupyter nbconvert --to html Amazon.ipynb && mv Amazon.html html/


gsutil ls gs://Bilé-Kouamé-Johan/
gsutil cp data/Amazon.csv gs://Bilé-Kouamé-Johan/
# make the file gs://historical-dashboard-yzpt/df_geocoded_nb_1.3_bis.csv public
gsutil acl ch -u AllUsers:R gs://Bilé-Kouamé-Johan/Amazon.csv

jupyter nbconvert --to html Amazon.ipynb && git add . && git commit -m "update Amazon.html" && git push

