### Intro

* Inspired by https://kubernetes.io/blog/2020/01/22/kubeinvaders-gamified-chaos-engineering-tool-for-kubernetes/ but don't like the shell script is using oc. So I write one using kubectl

* The original script calling multiple time "oc", used proper shell scripts to store the array.

* line 21 is commented to prevent "accident"

### To run

```shell
git clone https://github.com/teochenglim/k8s-chaos.git
cd k8s-chaos
vi chaos.sh # uncomment lines 21

```

### Possible todo

1. uncomment line 21 to really start deleting pods

2. add namespace at line 7 "kubectl get pods -n namespace"
