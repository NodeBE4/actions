#!/bin/bash
git config --global user.email "{USERNAME1_GITHUB}@github.com";
git config --global user.name "${USERNAME1_GITHUB}";
git config --global pull.rebase false;

checkout_work () {
  repo_target=$1;
  folder=$2;
  git clone "${repo_target}" "${folder}";
  cd ${folder};
  cd ..;
}


workrepo=https://$API_TOKEN_GITHUB@github.com/$USERNAME1_GITHUB/$REPO1_GITHUB.git;
workdir="work";
checkout_work ${workrepo} ${workdir};
cd ${workdir};

echo "Install dependencies" ;
python -m pip install --upgrade pip
if [ -f requirements.txt ]; then pip install -r requirements.txt; fi

echo "Start task1" ;
chmod +x ./run.sh ;
./run.sh ;

today=$(date +%FT%T);
echo "Work done-${today}";

