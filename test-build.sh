docker pull alpine
(cd one && docker build -t one .) &
(cd two && docker build -t two .)
