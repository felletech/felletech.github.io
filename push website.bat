cd C:\Users\Martin\Documents\GitHub\felletech-academic
git add .
git commit -m "site update"
git push -u origin master
rmdir /Q /S My_Website
git clone https://github.com/felletech/felletech-academic My_Website
cd My_Website
git submodule update --init --recursive
git submodule add -f -b master https://github.com/felletech/felletech.github.io.git public
git add .
git commit -m "Initial commit"
git push -u origin master
hugo
git add .
git commit -m "Build website"
git push origin master
cd ..