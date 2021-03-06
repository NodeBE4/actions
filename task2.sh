#!/bin/bash
git config --global user.email "{USERNAME_GITHUB}@github.com";
git config --global user.name "${USERNAME_GITHUB}";
git config --global pull.rebase false;

checkout_work () {
  repo_target=$1;
  folder=$2;
  git clone "${repo_target}" "${folder}";
  cd ${folder};
  cd ..;
}


workrepo=https://$API_TOKEN_GITHUB@github.com/$USERNAME_GITHUB/$REPO_GITHUB.git;
workdir="work";
checkout_work ${workrepo} ${workdir};
cd ${workdir};

echo "Start task2" ;
chmod +x ./run.sh ;
./run.sh ;

today=$(date +%FT%T);
echo "Work done-${today}";

